<?php


function mostrarVentas()
{



    //creacion de la tabla
?>

<table id='tabla' class='bordered centered highlight responsive-table centrarT'>
    <thead>
        <tr>
            <th>Fecha</th>
            <th>No. Comprobante</th>
            <th>Nit</th>
            <th>Cliente</th>
            <th>Total</th>
            <th>Tipo de Venta</th>
              <th></th>

        </tr>
    </thead>
    <tbody>
        <?php
	$extra="";
    $mysql = conexionMysql();
    $sql = "SELECT c.fecha,c.nocomprobante,p.nit,p.nombre,c.total,(select tv.Descripcion from tipoventa tv where tv.idtipo=c.tipoventa),c.idventas FROM ventas c inner join cliente p on p.idcliente=c.idcliente where c.estado=0 order by c.fecha desc";
    $tabla="";
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

                $tabla .= "<tr>";

                $tabla .="<td>"     .substr($fila["0"],0,10).    "</td>";
                $tabla .="<td>" .$fila["1"].      "</td>";
                $tabla .="<td>" .$fila["2"].      "</td>";
				$tabla .="<td>" .$fila["3"].      "</td>";
				$tabla .="<td>" .toMoney($fila["4"]).      "</td>";

				$tabla .="<td class='anchoC'>";
  				if($_SESSION['SOFT_ACCESOElimina'.'ventas']=='1')
  				{
                  
  				}



                  $tabla .="<a class='waves-effect waves-light btn yellow dark-1 modal-trigger botonesm modalver'  onClick=\"buscarVenta('".$fila["6"]."');\"><i class='material-icons left'><img class='iconoeditcrud' src='../app/img/ojo.png' /></i></a></td>";
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

function cargarDetalleVentas($id)
{



    //creacion de la tabla
?>

<table id='tabla2' class='bordered centered highlight responsive-table centrarT'>
    <thead>
        <tr>
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
   $sql = "SELECT cd.idventadetalle,(select p.nombre from productos p where p.idproductos=cd.idproductos),cd.precio,cd.cantidad,cd.subtotal,(select p.tiporepuesto from productos p where p.idproductos=cd.idproductos),cd.idproductos,(select p.codigoproducto from productos p where p.idproductos=cd.idproductos) FROM ventasdetalle cd where (cd.estado=0) and cd.idventa='".$id."'";
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

                $tabla .="<td>"     .$fila["7"].    "</td>";
                $tabla .="<td>" .$fila["1"].      "</td>";
				$tabla .="<td>" .$tipo.      "</td>";
                $tabla .="<td>" .toMoney($fila["2"]).      "</td>";
				$tabla .="<td id=\"Cantidad$contaId\">" .$fila["3"].      "</td>";
				$tabla .="<td>" .toMoney($fila["4"]).      "</td>";

			   	$tabla .="<td class='anchoC'><a class='waves-effect waves-light btn red lighten-1 modal-trigger botonesm ' onClick=\"anularDetalleVenta1('".$fila["0"]."');\"><i class='material-icons left'><img class='iconoaddcrud' src='../app/img/boton-borrar.png' /></i></a><td>";

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
