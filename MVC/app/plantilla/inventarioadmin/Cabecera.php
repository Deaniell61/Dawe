<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Inventario</title>
        <?php include('../app/plantilla/general/libCss.php');   ?>
        <link rel="stylesheet" href="../app/css/inventario.css">
    </head>
    <body>


        <!-- ********************************** nav inicio ********************************** -->

       <?php 
	   $_SESSION['SOFT_NAV']="inventario";
	   include('../app/plantilla/general/Cabecera.php');   ?>
        <!-- ********************************** nav fin ********************************** -->


        <!-- ********************************** tabs ********************************** -->
 
        <?php include('../app/plantilla/general/Nav.php');   ?>
        <!-- ********************************** tabs fin ********************************** -->


