<?php



function mostrarCuentasC()
{

    //creacion de la tabla
?>

<table id='tabla' class='bordered centered highlight responsive-table centrarT'>
    <thead>
        <tr>
            <th>Fecha</th>
            <th>Cliente</th>
            <th>Saldo</th>
            <th></th>
            
        </tr>
    </thead>
    <tbody>
        <?php

    $mysql = conexionMysql();
    $sql = "SELECT cc.fecha,cc.total,(select c.nombre from cliente c where c.idcliente=(select v.idcliente from ventas v where v.idventas=cc.idventas limit 1) limit 1),(select c.apellido from cliente c where c.idcliente=(select v.idcliente from ventas v where v.idventas=cc.idventas limit 1) limit 1),idcuentasC FROM cuentascobrar cc  WHERE cc.estado=1";
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

                $tabla .="<td>"     .$fila["0"].    "</td>";
                $tabla .="<td>" .$fila["2"].      " " .$fila["3"].      "</td>";
                $tabla .="<td>" .toMoney($fila["1"]).      "</td>";
				if($_SESSION['SOFT_ACCESOModifica'.'cuentas']=='1')
				{
                $tabla .="<td class='anchoC'><a class='waves-effect waves-light btn orange lighten-1 modal-trigger botonesm editar' onclick=\"editar('".$fila["4"]."')\"><i class='material-icons left'><img class='iconoeditcrud' src='../app/img/editar.png' /></i></a>";

				}
				else
				{
					$tabla .="<td class='anchoC'>";
				}

                $tabla .="<a class='waves-effect waves-light btn yellow dark-1 modal-trigger botonesm ver' onClick=\"ver('".$fila["4"]."')\"><i class='material-icons left'><img class='iconoeditcrud' src='../app/img/ojo.png' /></i></a></td>";
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



function mostrarMovimientosCuentasC($id)
{

    //creacion de la tabla
?>

<table id='tabla' class='bordered centered highlight responsive-table centrarT'>
    <thead>
        <tr>
            <th>Fecha</th>
            <th>Descripcion</th>
            <th>Abono</th>
            <th>Credito</th>
            
            
        </tr>
    </thead>
    <tbody>
        <?php

    $mysql = conexionMysql();
    $sql = "SELECT cc.fecha,cc.descripcion,cc.abono,cc.credito FROM movimientosC cc  WHERE cc.idcuentasC=".$id;
    $tabla="";
    if($resultado = $mysql->query($sql))
    {

        if(mysqli_num_rows($resultado)==0)
        {
            $respuesta = "<div class='error'>No hay movimientos BD vacia</div>";
        }

        else
        {

            while($fila = $resultado->fetch_row())
            {

                $tabla .= "<tr>";

                $tabla .="<td>"     .$fila["0"].    "</td>";
                $tabla .="<td>" .$fila["1"].  "</td>";
                $tabla .="<td>" .toMoney($fila["2"]).      "</td>";
				$tabla .="<td>" .toMoney($fila["3"]).      "</td>";
               
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





?>
