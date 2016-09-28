<?php
function ingresoCuentaPagar($datos)
{
	$mysql = conexionMysql();
    $form="";
	
		$mysql->query("BEGIN");
    $sql = "insert cuentasPagar(plazo,tipoPlazo,total,idcompras,estado,CreditoDado) values('".$datos[1]."','".$datos[2]."',0,'".$datos[0]."',2,0)";
//echo $sql;
    if($mysql->query($sql))
    {
		
		$mysql->query("COMMIT");
			    
		
    
    }
    else
    {   
		$sql = "update cuentasPagar set plazo='".$datos[1]."',tipoPlazo='".$datos[2]."' where idcompras='".$datos[0]."'";
//echo $sql;
			if($mysql->query($sql))
			{
				
				$mysql->query("COMMIT");
						
				
			
			}
			else
			{
				$mysql->query("ROLLBACK");
				$form = "<div>$sql<script>console.log('".$datos[0]."');</script></div>";
			}
    
    }
    
    
    $mysql->close();
    
    return printf($form);
}

function editarCuentasP($dato)
{
	

    $mysql = conexionMysql();
    $form="";
    $sql = "SELECT cc.fecha,cc.plazo,cc.tipoPlazo,cc.creditodado,cc.total,cc.idcompras,(select c.nombreempresa from proveedor c where c.idproveedor=(select v.iddistribuidor from compras v where v.idcompras=cc.idcompras limit 1) limit 1) FROM cuentaspagar cc  WHERE cc.estado=1 and cc.idcuentasP='".$dato[0]."' ";

    if($resultado = $mysql->query($sql))
    {
      if($resultado->num_rows>0)
	  {
		  if($fila = $resultado->fetch_row())
		  {
		  	$form .="<script>";
			$form .="document.getElementById('proveedor').disabled=false;document.getElementById('proveedor').value='".$fila[6]."';document.getElementById('proveedor').focus();document.getElementById('proveedor').disabled=true;";
			$form .="document.getElementById('fechaInicial').disabled=false;document.getElementById('fechaInicial').value='".substr($fila[0],0,10)."';document.getElementById('fechaInicial').focus();document.getElementById('fechaInicial').disabled=true;";
			$form .="document.getElementById('totalCredito').disabled=false;document.getElementById('totalCredito').value='".$fila[3]."';document.getElementById('totalCredito').focus();document.getElementById('totalCredito').disabled=true;";
			
			$form .="document.getElementById('saldo').disabled=false;document.getElementById('saldo').value='".$fila[4]."';document.getElementById('saldo').focus();document.getElementById('saldo').disabled=true;";
			$form .="document.getElementById('plazo').disabled=false;document.getElementById('plazo').value='".$fila[1]."';document.getElementById('plazo').focus();document.getElementById('plazo').disabled=true;";
			$form .="document.getElementById('codigo').disabled=false;document.getElementById('codigo').value='".$dato[0]."';document.getElementById('codigo').focus();document.getElementById('codigo').disabled=true;";
			//$form .="document.getElementById('tipoCompra').disabled=false;document.getElementById('tipoCompra').value='".$fila[5]."'.selected;document.getElementById('tipoCompra').focus();document.getElementById('tipoCompra').disabled=true;";
			$form .="\$('#tipoPlazo').val(\"".$fila[2]."\");$('select').material_select(); ";
			$form .="cargarDetalleCuentasP('".$dato[0]."');";
			$form .="</script>";
			
		}
		$resultado->free();    
	  }
	  else
	  {
		$form .="<script>";
			$form .="document.getElementById('productosContenedor').hidden=true;";
			$form .="</script>";
	  }
    
    }
    else
    {   
    
    $form = "<div>$sql<script>console.log('".$dato[0]."');</script></div>";
    
    }
    
    
    $mysql->close();
    
    return printf($form);
    
}
function verCuentaP($dato)
{
	

    $mysql = conexionMysql();
    $form="";
    $sql = "SELECT cc.fecha,cc.plazo,cc.tipoPlazo,cc.creditodado,cc.total,cc.idcompras,(select c.nombreempresa from proveedor c where c.idproveedor=(select v.iddistribuidor from compras v where v.idcompras=cc.idcompras limit 1) limit 1),(select c.direccion from proveedor c where c.idproveedor=(select v.iddistribuidor from compras v where v.idcompras=cc.idcompras limit 1) limit 1),(select c.telefono from proveedor c where c.idproveedor=(select v.iddistribuidor from compras v where v.idcompras=cc.idcompras limit 1) limit 1) FROM cuentaspagar cc  WHERE cc.estado=1 and cc.idcuentasP='".$dato[0]."' ";

    if($resultado = $mysql->query($sql))
    {
      if($resultado->num_rows>0)
	  {
		  if($fila = $resultado->fetch_row())
		  {
		  	$form .="<script>";
			$form .="document.getElementById('proveedorV').disabled=false;document.getElementById('proveedorV').value='".$fila[6]."';document.getElementById('proveedorV').focus();document.getElementById('proveedorV').disabled=true;";
			$form .="document.getElementById('fechaCredito').disabled=false;document.getElementById('fechaCredito').value='".substr($fila[0],0,10)."';document.getElementById('fechaCredito').focus();document.getElementById('fechaCredito').disabled=true;";
			$form .="document.getElementById('saldoV').innerHTML='Saldo: ".toMoney($fila[4])."';";
			$form .="document.getElementById('plazoV').disabled=false;document.getElementById('plazoV').value='".$fila[1]."';document.getElementById('plazoV').focus();document.getElementById('plazoV').disabled=true;";
			$form .="document.getElementById('direccionV').disabled=false;document.getElementById('direccionV').value='".$fila[7]."';document.getElementById('direccionV').focus();document.getElementById('direccionV').disabled=true;";
			$form .="document.getElementById('TelefonoV').disabled=false;document.getElementById('TelefonoV').value='".$fila[8]."';document.getElementById('TelefonoV').focus();document.getElementById('TelefonoV').disabled=true;";
			//$form .="document.getElementById('tipoCompra').disabled=false;document.getElementById('tipoCompra').value='".$fila[5]."'.selected;document.getElementById('tipoCompra').focus();document.getElementById('tipoCompra').disabled=true;";
			$form .="\$('#tipoPlazoV').val(\"".$fila[2]."\");$('select').material_select(); ";
			$form .="cargarDetalleCuentasP('".$dato[0]."');";
			$form .="</script>";
			
		}
		$resultado->free();    
	  }
	  else
	  {
		$form .="<script>";
			$form .="document.getElementById('productosContenedor').hidden=true;";
			$form .="</script>";
	  }
    
    }
    else
    {   
    
    $form = "<div>$sql<script>console.log('".$dato[0]."');</script></div>";
    
    }
    
    
    $mysql->close();
    
    return printf($form);
    
}
?>