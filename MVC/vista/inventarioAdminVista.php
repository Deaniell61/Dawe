<?php



function mostrarInventarioAdmin($datos)
{
	session_start();
if(isset($_SESSION['codigoBuscaProducto_SOFT']))
{
	if($_SESSION['codigoBuscaProducto_SOFT']!="")
	{
		$mas=" and p.codigoproducto='".$_SESSION['codigoBuscaProducto_SOFT']."' and i.cantidad<=i.minimo ";
	}
	else
		{
			$mas="";
		}
}
else
{
	$mas="";
}
    //creacion de la tabla
?>

<table id='tabla' class='bordered centered highlight responsive-table centrarT'>
    <thead>
        <tr>
           <th>Codigo</th>
           <th>Producto</th>
           <th>Marca</th>
            <th>Descripcion</th>
             <th>Costo</th>
            <th>Cantidad</th>
            <th>Precio General</th>
            <th>Precio Especial</th>
            <th>Precio Mayorista</th>
            <th>Proveedor U. Compra</th>
            <th>Fecha U. Compra</th>
            <th>No. Comprobante U. Compra</th>
            <th></th>

        </tr>
    </thead>
    <tbody>
        <?php

    $mysql = conexionMysql();
    $sql = "SELECT p.nombre,i.preciocosto,p.idproductos,p.codigoproducto,p.descripcion,i.precioCosto,i.precioVenta,i.precioClienteEs,i.precioDistribuidor,i.cantidad,p.marca2,p.codigoproducto,i.idinventario,p.idproductos FROM inventario i inner join productos p on p.idproductos=i.idproducto where p.tiporepuesto='".$datos[0]."' $mas and i.cantidad>=0 and p.estado=1";
    $tabla="";
    if($resultado = $mysql->query($sql))
    {

        if(mysqli_num_rows($resultado)==0)
        {
            $respuesta = "<div class='error'>No hay usuarios BD vacia</div>";
        }

        else
        {

            while($fila = $resultado->fetch_row())
            {

                $tabla .= "<tr>";

                $tabla .="<td>"     .$fila["11"].    "</td>";
                $tabla .="<td>" .$fila["0"].      "</td>";
                $tabla .="<td>" .$fila["10"].      "</td>";
				 $tabla .="<td>" .$fila["4"].      "</td>";
				 $tabla .="<td>" .toMoney($fila["5"]).      "</td>";
				$tabla .="<td>" .$fila["9"].      "</td>";
				$tabla .="<td>" .toMoney($fila["6"]).      "</td>";
				$tabla .="<td>" .toMoney($fila["7"]).      "</td>";
				$tabla .="<td>" .toMoney($fila["8"]).      "</td>";
				$tabla .="<td>" .proveedorU($fila["13"]).      "</td>";
				$tabla .="<td>" .fechaU($fila["13"]).      "</td>";
				$tabla .="<td>" .noDocU($fila["13"]).      "</td>";
				
       			$tabla .="<td><a class='waves-effect waves-light btn orange lighten-1 modal-trigger botonesm editar' onclick=\"editar('".$fila["12"]."')\")\"><i class='material-icons left'><img class='iconoeditcrud' src='../app/img/editar.png' /></i></a>";
        		if($_SESSION['SOFT_ACCESOElimina'.'inventario']=='1')
				{
                $tabla .="<a class='waves-effect waves-light btn red lighten-1 modal-trigger botonesm modaleliminar' onClick=\"eliminaInven('".$fila["2"]."','".$fila["12"]."');\"><i class='material-icons left'><img class='iconoaddcrud' src='../app/img/boton-borrar.png' /></i></a>";
				}
		$tabla .="</td>";

            }

            $resultado->free();//librerar variable


            $respuesta = $tabla;
        }
    }
    else
    {
        $respuesta = "<div class='error'>Error: no se ejecuto la consulta a BD</div>";

    }

    //cierro la conexion
    $mysql->close();

    //debuelvo la variable resultado
    return printf($respuesta);
        ?>
    </tbody>
</table>
<?php

}


function proveedorU($id)
{
	$mysql = conexionMysql();
    $form="";
    $sql = "select pr.nombreempresa from proveedor pr inner join compras c on c.iddistribuidor=pr.idproveedor inner join compradetalle cd on cd.idcompras=c.idcompras where cd.idproductos='".$id."' order by c.idcompras desc limit 1";
 	//echo $sql;
    if($resultado = $mysql->query($sql))
    {
      if($resultado->num_rows>0)
	  {
		$fila = $resultado->fetch_row();    
			
		
		
		$form .="".$fila[0]."";
		
		
			
		$resultado->free();    
	  }
	  
    
    }
    else
    {   
    
    $form = "<div><script>console.log('$idedit');</script></div>";
    
    }
    
    
    $mysql->close();
    
    return ($form);
}

function fechaU($id)
{
	$mysql = conexionMysql();
    $form="";
    $sql = "select c.fecha from proveedor pr inner join compras c on c.iddistribuidor=pr.idproveedor inner join compradetalle cd on cd.idcompras=c.idcompras where cd.idproductos='".$id."' order by c.idcompras desc limit 1";
 	//echo $sql;
    if($resultado = $mysql->query($sql))
    {
      if($resultado->num_rows>0)
	  {
		$fila = $resultado->fetch_row();    
			
		
		
		$form .="".$fila[0]."";
		
		
			
		$resultado->free();    
	  }
	  
    
    }
    else
    {   
    
    $form = "<div><script>console.log('$idedit');</script></div>";
    
    }
    
    
    $mysql->close();
    
    return (substr($form,0,10));
}

function noDocU($id)
{
	$mysql = conexionMysql();
    $form="";
    $sql = "select c.nocomprobante from proveedor pr inner join compras c on c.iddistribuidor=pr.idproveedor inner join compradetalle cd on cd.idcompras=c.idcompras where cd.idproductos='".$id."' order by c.idcompras desc limit 1";
 	//echo $sql;
    if($resultado = $mysql->query($sql))
    {
      if($resultado->num_rows>0)
	  {
		$fila = $resultado->fetch_row();    
			
		
		
		$form .="".$fila[0]."";
		
		
			
		$resultado->free();    
	  }
	  
    
    }
    else
    {   
    
    $form = "<div><script>console.log('$idedit');</script></div>";
    
    }
    
    
    $mysql->close();
    
    return ($form);
}


?>
