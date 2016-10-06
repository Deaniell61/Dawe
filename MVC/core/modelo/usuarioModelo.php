<?php



function login($user, $pass)
{

	$sql = "SELECT user,Email,contra,idRol,idUsuarios FROM usuarios where estado=1 and (user='$user' or email='$user' or email like '$user@gmail.com' or email like '$user@hotmail.com') and contra='$pass';";
    
    $mysql = conexionMysql(); 
    
    if($resultado = $mysql->query($sql))
    {
		if($resultado->num_rows>0)
		{
			if($fila=$resultado->fetch_row())
			{
				session_start();
				$_SESSION['SOFT_USER']=$fila['0'];
				$_SESSION['SOFT_EMAIL']=$fila['1'];
				$_SESSION['SOFT_PASS']=$fila['2'];
				$_SESSION['SOFT_ROL']=$fila['3'];
				$_SESSION['SOFT_USER_ID']=$fila['4'];
				$_SESSION['idCompra']="";
				$_SESSION['idVenta']="";
		   
		   			cargarModulos($_SESSION['SOFT_USER_ID']);
				echo "Modulo/Inicio.php";
			}
			else
			{  
				echo 1;
			}
		}
		else
		{  
			echo 2;
		}
		
    }
    else
    {  
        echo 1;
    }
    
    
    $mysql->close();
    
   

}

function cargarModulos($idUser)
{
	$sql = "SELECT m.Nombre,m.Dir,m.RefId,a.agrega,a.elimina,a.modifica FROM accesos a inner join modulos m on m.idModulos=a.idModulo where a.idUsuarios=$idUser order by m.idModulos";
    
    $mysql = conexionMysql(); 
    
    if($resultado = $mysql->query($sql))
    {
		if($resultado->num_rows>0)
		{
			$i=0;
			while($fila=$resultado->fetch_row())
			{
				
				$_SESSION['SOFT_MODULO'][$i]=$fila['0'];
				$_SESSION['SOFT_MODULO_DIR'][$i]=$fila['1'];
				$_SESSION['SOFT_MODULO_REF'][$i]=$fila['2'];
				$_SESSION['SOFT_ACCESOModifica'.$fila['2']]=$fila['5'];
				$_SESSION['SOFT_ACCESOElimina'.$fila['2']]=$fila['4'];
				$_SESSION['SOFT_ACCESOAgrega'.$fila['2']]=$fila['3'];
				$_SESSION['SOFT_MODULO_NUM']=$i;
				$i++;
			}
			
		}
		
		
    }
    
    
    
    $mysql->close();
	
}



function insertarUsuario($user, $pass, $rol, $empleado)
{
    
    

    $sql = "INSERT INTO usuarios (user, contra, idrol,estado,idempleados) VALUES ('$user','$pass',$rol,1,'$empleado')";
    
    $mysql = conexionMysql(); 
    
    if($resultado = $mysql->query($sql))
    {
        $respuesta = "<div> Exito </div>";
    }
    else
    { 
        $respuesta = "<div>Error en en la insercion </div>"; 
        echo 1;
    }
    
    
    $mysql->close();
    
    return printf($respuesta);
    
    
}

function eliminarUsuario($idelim,$pass)
 {
	 session_start();
     
     if($pass==$_SESSION['SOFT_PASS'])
	 {
		 $mysql = conexionMysql(); 
     	$mysql->query("BEGIN");
		 
		 $sql = "update usuarios set estado=0 WHERE idUsuarios=$idelim";
		 
		 
	
		 
		 if($resultado = $mysql->query($sql))
		 {
			 $mysql->query("COMMIT");
			 $respuesta = "<script>alert('El usuario se elimino');setTimeout(window.location.reload(), 3000);</script>";
		 }
		 else
		 { 
			 
			 echo "error de base de datos";
		 }
	
	
		 $mysql->close();
	
		 return printf($respuesta);    
	 }
	 else
	 {
		 $respuesta = "<div class=\"red \">Contraseña incorrecta</div>";
	 }
     
 }
function  editarUsuario($idedit)
{
    

    $mysql = conexionMysql();
    $form="";
    $sql = "SELECT user,contra,idrol,idusuarios,idempleados FROM usuarios WHERE idusuarios=$idedit";
 
    if($resultado = $mysql->query($sql))
    {
      
    $fila = $resultado->fetch_row();    
        
    
    $form .="<script>";
    $form .=" \$('#user').val('".$fila[0]."');\$('#user').focus();\n";
	$form .=" \$('#codigo').val('".$fila[3]."');\$('#codigo').focus();\n";
	$form .=" document.getElementById('rol').value='".$fila[2]."';\n";
	$form .=" document.getElementById('emple').value='".$fila[4]."';\n";
   // $form .="/* \$('#password').val('".$fila[1]."');\$('#password').focus();*/\n";
    $form .=" \$('#btnActualizar').show();\n";
    $form .=" \$('#btnInsertar').hide();  \n";
	$sql2 = "SELECT a.agrega,a.modifica,a.elimina,a.idusuarios,a.idmodulo,(select m.refId from modulos m where m.idmodulos=a.idmodulo) FROM accesos a WHERE idusuarios = ".$fila[3]." ";
		if($resultado2 = $mysql->query($sql2))
		{
		  
			while($fila2 = $resultado2->fetch_row())
			{ 
				$ins='false';
				$edi='false';
				$eli='false';
		  		if($fila2[0]=='1')
				{
					$ins='true';
				}
				if($fila2[1]=='1')
				{
					$edi='true';
				}
				if($fila2[2]=='1')
				{
					$eli='true';
				}
			
				$form .="\$('select[id=\"".$fila2[5]."\"]').find('option[value=\"0\"]').attr(\"selected\",true);\n";
				$form .="\$('select[id=\"".$fila2[5]."\"]').find('option[value=\"1\"]').attr(\"selected\",".$ins.");\n";
				$form .="\$('select[id=\"".$fila2[5]."\"]').find('option[value=\"2\"]').attr(\"selected\",".$edi.");\n";
				$form .="\$('select[id=\"".$fila2[5]."\"]').find('option[value=\"3\"]').attr(\"selected\",".$eli."); \n";
			}
		}
    $form .=" ";
	$form .=" \$('select').material_select();  ";
    $form .="</script>";
        
    $resultado->free();    
    
    }
    else
    {   
    
    $form = "<div><script>console.log('$idedit');</script></div>";
    
    }
    
    
    $mysql->close();
    
    return printf($form);
    
}

function actualizarUsuario($user, $pass, $rol,$id,$idempleados)
{
	
    if($pass=="")
	{

    	$sql = "UPDATE usuarios set user='$user', idrol=$rol,idempleados='".$idempleados."' where idusuarios=$id";
	}
	else
	{
		$sql = "UPDATE usuarios set user='$user', idrol=$rol,contra='$pass',idempleados='".$idempleados."' where idusuarios=$id ";
	}
	
    $mysql = conexionMysql(); 
    
    if($resultado = $mysql->query($sql))
    {
        $respuesta = "<div> Exito </div>";
    }
    else
    { 
        $respuesta = "<div>Error en en la insercion </div>"; 
        echo 1;
    }
    
    
    $mysql->close();
    
    return printf($respuesta);
}

function insertarEmpleado($datos)
{
    
    

    $sql = "INSERT INTO empleados (nombre, apellido, direccion,puesto,telefono,estado,sueldo) VALUES ('".$datos[0]."','".$datos[1]."','".$datos[3]."','".$datos[4]."','".$datos[2]."',1,'".$datos[5]."')";
    
    $mysql = conexionMysql(); 
    
    if($resultado = $mysql->query($sql))
    {
        $respuesta = "<div> Exito </div>";
    }
    else
    { 
        $respuesta = "<div>Error en en la insercion </div>"; 
        echo 1;
    }
    
    
    $mysql->close();
    
    return printf($respuesta);
    
    
}

function eliminarEmpleado($datos)
 {
     session_start();
     
     if($datos[1]==$_SESSION['SOFT_PASS'])
	 {
		 $sql = "update empleados set estado=0 WHERE idEmpleados=".$datos[0];
		 
		 $mysql = conexionMysql(); 
	
		 if($resultado = $mysql->query($sql))
		 {
			 $respuesta = "<script>alert('El empleado se elimino');</script>";
		 }
		 else
		 { 
		 $respuesta = "<script>alert('$sql');</script>";
			 $respuesta = "<div>Error en en la insercion </div>"; 
			 echo 1;
		 }
		 $mysql->close();
	 }
	 else
	 { 
	
		
		  $respuesta = "1"; 
	 }

     

     return printf($respuesta);     
     
 }
function  editarEmpleado($idedit)
{
    

    $mysql = conexionMysql();
    $form="";
    $sql = "SELECT u.nombre,u.apellido,u.telefono,u.direccion,u.puesto,u.sueldo FROM empleados u WHERE estado=1 and u.idempleados=$idedit";
    
    if($resultado = $mysql->query($sql))
    {
      
    $fila = $resultado->fetch_row();    
        
    
    $form .="<script>";
    $form .=" \$('#nom').val('".$fila[0]."');\$('#nom').focus();";
	$form .=" \$('#apel').val('".$fila[1]."');\$('#apel').focus();";
	$form .=" \$('#dir').val('".$fila[3]."');\$('#dir').focus();";
	$form .=" \$('#tel').val('".$fila[2]."');\$('#tel').focus();";
	$form .=" \$('#sueldos').val('".$fila[5]."');\$('#sueldos').focus();";
	$form .=" document.getElementById('pue').value='".$fila[4]."';\$('select').material_select();";
    $form .=" \$('#btnActualizar').show();";
    $form .=" \$('#btnInsertar').hide();  ";
    $form .=" ";
	
    $form .="</script>";
        
    $resultado->free();    
    
    }
    else
    {   
    
    $form = "<div><script>console.log('$idedit');</script></div>";
    
    }
    
    
    $mysql->close();
    
    return printf($form);
    
}

function actualizarEmpleado($datos)
{
    
    

    $sql = "update empleados set nombre='".$datos[0]."', apellido='".$datos[1]."', direccion='".$datos[3]."',puesto='".$datos[4]."',telefono='".$datos[2]."',sueldo='".$datos[6]."' where idempleados=".$datos[5]."";
    
    $mysql = conexionMysql(); 
    $mysql->query("BEGIN");
    if($resultado = $mysql->query($sql))
    {
        $respuesta = "<div> Exito </div>";
			$mysql->query("COMMIT");	
    }
    else
    { 
	$mysql->query("ROLLBACK");
        $respuesta = "<div>Error en en la insercion </div>"; 
        echo 1;
    }
    
    
    $mysql->close();
    
    return printf($respuesta);
    
    
}
function cargarModulosIniciales()
{
	
	
session_start();
    $mysql = conexionMysql();
    $form="";
    $sql = "SELECT nombre,refid,idmodulos from modulos";
    
    if($resultado = $mysql->query($sql))
    {
      
    		while($fila = $resultado->fetch_row())
			{
        		
  	$form .='<div class="input-field col s5">';
	$form .='	<select id="'.$fila[1].'" multiple onChange="cargarModulo(this,\''.$fila[2].'\',document.getElementById(\'codigo\').value);">';
	$form .='		<option value="" disabled>'.$fila[0].'</option>';
	$form .='		<option value="0" >Mostrar</option>';
	$form .='		<option value="1" >Insertar</option>';
	$form .='		<option value="2" >Modificar</option>';
	$form .='		<option value="3" >Eliminar</option>';
	$form .='	</select>';
	$form .='		<label>'.$fila[0].'</label>';
	$form .='</div>';
	
			}
        
    $resultado->free();    
    
    }
    else
    {   
    
    $form = "<div><script>console.log('$idedit');</script></div>";
    
    }
    
    
    $mysql->close();
    
    return printf($form);
	
	
}

function asignarModulos($datos)
{
	$mysql = conexionMysql();
    $form="";
	
		$mysql->query("BEGIN");
		$sql1="SELECT idmodulo FROM accesos WHERE idusuarios = ".$datos[4]." and idmodulo = ".$datos[0]."";
		if($resultado = $mysql->query($sql1))
		{
    if(($resultado->num_rows)>0)
		{
			$sql = "UPDATE accesos SET agrega = '".$datos[1]."',modifica = '".$datos[2]."',elimina = '".$datos[3]."' WHERE idusuarios = ".$datos[4]." and idmodulo = ".$datos[0]."
					";
		//echo $sql;
			if($mysql->query($sql))
			{
				
				$mysql->query("COMMIT");
						
				
			
			}
			else
			{   
				$mysql->query("ROLLBACK");
			$form = "<div><script>console.log('".$datos[0]."');</script></div>";
			
			}
		}
		else
		{
			$sql = "INSERT INTO accesos (agrega,modifica,elimina,idusuarios,idmodulo) VALUES (".$datos[1].",".$datos[2].",".$datos[3].",".$datos[4].",".$datos[0].")";
		//echo $sql;
			if($mysql->query($sql))
			{
				
				$mysql->query("COMMIT");
						
				
			
			}
			else
			{   
				$mysql->query("ROLLBACK");
			$form = "<div><script>console.log('".$datos[0]."');</script></div>";
			
			}
		}
		}
    $mysql->close();
    
    return printf($form);
}
function desasignarModulos($datos)
{
	$mysql = conexionMysql();
    $form="";
	
		$mysql->query("BEGIN");
		$sql1="SELECT idmodulo FROM accesos WHERE idusuarios = ".$datos[4]." and idmodulo = ".$datos[0]."";
		if($resultado = $mysql->query($sql1))
		{
    if(($resultado->num_rows)>0)
		{
			$sql = "delete from accesos WHERE idusuarios = ".$datos[4]." and idmodulo = ".$datos[0]."
					";
		//echo $sql;
			if($mysql->query($sql))
			{
				
				$mysql->query("COMMIT");
						
				
			
			}
			else
			{   
				$mysql->query("ROLLBACK");
			$form = "<div><script>console.log('".$datos[0]."');</script></div>";
			
			}
		}
		
		}
    $mysql->close();
    
    return printf($form);
}
function CerrarSesion()
{
	session_start();
    session_destroy();

    echo '../index.php';
	
}

?>