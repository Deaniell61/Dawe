<?php


if($_POST)
{
    require('../configCore.php');
    
    $transaccion = $_POST['trasDato'];
    
  
    if($transaccion == 1)
    {
        $nit = $_POST['nit'];
         
        buscarProveedor($nit);
        
        
    
    }
//------------ gestion --------------/    

    // insertar
    else if($transaccion == 2)
    {
        
          

        
        $idProv[0] = $_POST['prov'];
		$idProv[1] = $_POST['tipo'];
       

        
        inicioCompra($idProv);
        
    
    }
    // eliminar
    else if($transaccion == 3)
    {
        
        $datos['0'] = $prod = $_POST['prod'];
		$datos['1'] = $cantidad = $_POST['cantidad'];
		$datos['2'] = $cantidad = $_POST['precioC'];
		$datos['3'] = $cantidad = $_POST['precioG'];
		$datos['4'] = $cantidad = $_POST['precioE'];
		$datos['5'] = $cantidad = $_POST['precioM'];
		$datos['6'] = $cantidad = $_POST['proveedor'];
        
        ingresoCompra($datos);
        
        
    }
    
    //editar
    else if($transaccion == 4)
    {
        
        
        
        guardarCompra();
        
    }
    
    else if($transaccion == 5)
    {

		 $id = $_POST['id'];

        
        mostrarDetallesCompras($id);

    }
	else if($transaccion == 6)
    {
        
          

        
        $datos[0]=$prod = $_POST['prod'];
		buscarProducto($datos);
		
		        
        
        
    
    }
    // eliminar
    else if($transaccion == 7)
    {
        
        $datos[0]=$prod = $_POST['prod'];
		buscarPrecioProducto($datos);
        
        
    }
    
    //editar
    else if($transaccion == 8)
    {
        
        $dato[0] = $_POST['id'];
        
        buscarCompra($dato);
        
    }
    
    else if($transaccion == 9)
    {

        $datos[0]=$nombre = $_POST['tipo'];
		$datos[1]=$puesto = $_POST['id'];
		
		        
        cambiarTipoCompra($datos);

    }
	else if($transaccion == 10)
    {

		$datos[0]=$puesto = $_POST['id'];
		
		        
        anularCompra($datos);

    }
	else if($transaccion == 11)
    {

		$datos[0]=$puesto = $_POST['id'];
		
		        
        buscarMarca($datos);

    }
	else if($transaccion == 12)
    {

        $datos[0]=$nombre = $_POST['tipo'];
		$datos[1]=$puesto = $_POST['id'];
		
		        
        agregarFactura($datos);

    }
	else if($transaccion == 13)
    {

        $datos[0]=$nombre = $_POST['codigo'];
		$datos[1]=$puesto = $_POST['cantidad'];
		
		$datos[2]=$puesto = $_POST['costo'];
		$datos[3]=$puesto = $_POST['precioG'];
		$datos[4]=$puesto = $_POST['precioE'];
		$datos[5]=$puesto = $_POST['precioM'];
		$datos[6]=$puesto = $_POST['proveedor'];
		
		        
        agregaInventario($datos);

    }
	else if($transaccion == 14)
    {

        $datos[0] = $_POST['id'];
		
		
		        
        anularDetalleCompra($datos);

    }
	else if($transaccion == 15)
    {

        $datos[0] = $_POST['id'];
		
		
		        
        buscarPlazoCuentaPagar($datos);

    }
	else if($transaccion == 16)
    {

        $datos[0] = $_POST['tipo'];
		
		
		        
        mostrarCompras($datos);

    }
	else if($transaccion == 17)
    {

        $datos[0] = $_POST['tipo'];
		
		
		        
        mostrarComprasAnul($datos);

    }
    
//----------- fin gestion ----------/    
    
}

else
{
    
    //regrsar a index
    echo'regresar al index';
}


?>