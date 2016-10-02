<?php


if($_POST)
{
    require('../configCore.php');
    
    $transaccion = $_POST['trasDato'];
    
    
//-------------- acceso -----------/    
    if($transaccion == 1)
    {
        $datos[0]=$_POST['id'];
		
		
        buscarInventario($datos);
        
        
    
    }
	else if($transaccion == 2)
    {
        $datos[0]=$_POST['id'];
		$datos[1]=$_POST['precioG'];
		$datos[2]=$_POST['precioE'];
		$datos[3]=$_POST['precioM'];
		
		
        actualizaInventario($datos);
        
        
    
    }
    
//----------- fin gestion ----------/    
    
}

else
{
    
    //regrsar a index
    echo'regresar al index';
}


?>