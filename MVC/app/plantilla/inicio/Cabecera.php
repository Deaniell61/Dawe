<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Inicio</title>
        <?php include('../app/plantilla/general/libCss.php');   ?>
        <link type="text/css" rel="stylesheet" href="../app/css/inicio.css"  />
    </head>
    <body>
    <body>


        <!-- ********************************** nav inicio ********************************** -->

      <?php 
	  $_SESSION['SOFT_NAV']="inicio";
	  include('../app/plantilla/general/Cabecera.php');   ?>
        <!-- ********************************** nav fin ********************************** -->


        <!-- ********************************** tabs ********************************** -->


        <?php include('../app/plantilla/general/Nav.php');   ?>
        <!-- ********************************** tabs fin ********************************** -->



