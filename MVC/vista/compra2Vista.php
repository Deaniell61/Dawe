<?php


function mostrarCompras($datos)
{
session_start();

$busca="";
	
	if($_SESSION['SOFT_ROL']!='1' && $_SESSION['SOFT_ROL']!='0')
	{
		$busca="and c.idusuario='".$_SESSION['SOFT_USER_ID']."'";
	}

    //creacion de la tabla
?>

<table id='tabla' class='bordered centered highlight responsive-table centrarT'>
    <thead>
        <tr>
            <th>Fecha</th>
            <th>No. Factura</th>
            <th>Nit</th>
            <th>Proveedor</th>
            <th>Total</th>
            <th>Tipo de Compra</th>
              <th></th>
            
        </tr>
    </thead>
    <tbody>
        <?php
	$extra="";
    $mysql = conexionMysql();
     $sql = "SELECT c.fecha,c.nocomprobante,p.nit,p.nombreempresa,c.total,(select tv.Descripcion from tipocompra tv where tv.idtipo=c.tipocompra),c.idcompras FROM compras c inner join proveedor p on p.idproveedor=c.iddistribuidor inner join compradetalle cd on cd.idcompras=c.idcompras inner join productos pd on pd.idproductos=cd.idproductos where c.estado=1 and cd.estado=1 and pd.tiporepuesto='".$datos[0]."' $busca group by c.idcompras order by c.fecha desc";
    $tabla="";
    if($resultado = $mysql->query($sql))
    {

        if(mysqli_num_rows($resultado)==0)
        {
            $respuesta = "<div class='error'>No hay Compras BD vacia</div>";
        }

        else
        {

            while($fila = $resultado->fetch_row())
            {

                $tabla .= "<tr>";

                $tabla .="<td>"     .substr($fila["0"],0,10).    "</td>";
                $tabla .="<td>" .$fila["1"].      "</td>";
                $tabla .="<td>" .$fila["2"].      "</td>";
				$tabla .="<td>" .$fila["3"].      "</td>";
				$tabla .="<td>" .toMoney($fila["4"]).      "</td>";
				
				$tabla .="<td>" .$fila["5"].      "</td>";
				if($_SESSION['SOFT_ACCESOElimina'.'compras']=='1')
				{
                $tabla .="<td class='anchoC'><a class='waves-effect waves-light btn red lighten-1 modal-trigger botonesm ' onClick=\"anularCompra('".$fila["6"]."');\"><i class='material-icons left'><img class='iconoaddcrud' src='../app/img/boton-borrar.png' /></i></a>";
				}
				else
				{
					$tabla .="<td class='anchoC'>";
				}
           

                $tabla .="<a class='waves-effect waves-light btn yellow dark-1 modal-trigger botonesm modalver'  onClick=\"buscarCompra('".$fila["6"]."');\"><i class='material-icons left'><img class='iconoeditcrud' src='../app/img/ojo.png' /></i></a></td>";
                $tabla .= "</tr>";

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

function mostrarDetallesCompras($id)
{



    //creacion de la tabla
?>

<table id='tabla22' class='bordered centered highlight responsive-table centrarT'>
    <thead>
        <tr>
        	<th hidden></th>
            <th hidden></th>
            <th hidden></th>
            <th hidden></th>
            <th hidden></th>
            <th>ID</th>
            <th>Producto</th>
            <th>Tipo</th>
            <th>Precio</th>
            <th>Cantidad</th>
            <th>SubTotal</th>
            <th></th>
          
            
        </tr>
    </thead>
    <tbody>
        <?php
	$extra="";
    $mysql = conexionMysql();
    $sql = "SELECT cd.idcompradetalle,(select p.nombre from productos p where p.idproductos=cd.idproductos),cd.costo,cd.cantidad,cd.subtotal,(select p.tiporepuesto from productos p where p.idproductos=cd.idproductos),cd.idproductos,(select p.codigoproducto from productos p where p.idproductos=cd.idproductos),cd.precioE,cd.precioM,cd.costo,cd.precio FROM compradetalle cd where (cd.estado=2 or cd.estado=1 or cd.estado=0) and cd.idcompras='".$id."'";
    $tabla="";
	$tipo="";
    if($resultado = $mysql->query($sql))
    {

        if(mysqli_num_rows($resultado)==0)
        {
            $respuesta = "<div class='error'>No hay Compras BD vacia</div>";
        }

        else
        {
$contaId=0;
            while($fila = $resultado->fetch_row())
            {
				if($fila["5"]==1)
				{
					$tipo="Moto";
				}
				if($fila["5"]==2)
				{
					$tipo="Carro";
				}

                $tabla .= "<tr>";
				$tabla .="<td hidden id=\"Codigo$contaId\">"     .$fila["6"].    "</td>";
				$tabla .="<td hidden id=\"PrecioE$contaId\">"     .$fila["8"].    "</td>";
				$tabla .="<td hidden id=\"PrecioM$contaId\">"     .$fila["9"].    "</td>";
				$tabla .="<td hidden id=\"Costo$contaId\">"     .$fila["10"].    "</td>";
				$tabla .="<td hidden id=\"PrecioG$contaId\">"     .$fila["11"].    "</td>";
				
                $tabla .="<td>"     .$fila["7"].    "</td>";
                $tabla .="<td>" .$fila["1"].      "</td>";
				$tabla .="<td>" .$tipo.      "</td>";
                $tabla .="<td >" .toMoney($fila["2"]).      "</td>";
				$tabla .="<td id=\"Cantidad$contaId\">" .$fila["3"].      "</td>";
				$tabla .="<td>" .toMoney($fila["4"]).      "</td>";
                $tabla .="<td class='anchoC'>
				<a class='waves-effect waves-light btn red lighten-1 modal-trigger botonesm ' onClick=\"anularDetalleCompra('".$fila["0"]."');\"><i class='material-icons left'><img class='iconoaddcrud' src='../app/img/boton-borrar.png' /></i></a><td>";
                $tabla .= "</tr>";
$contaId++;
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


?>
