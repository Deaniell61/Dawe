<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Estadistica</title>
        <?php include('../app/plantilla/general/libCss.php');   ?>
        
        <link rel="stylesheet" href="../app/css/estadistica.css">
        <link href="../app/css/lib/c3.css" rel="stylesheet" type="text/css">
        <script src="../app/js/lib/d3.v3.min.js" charset="utf-8"></script>
		<script src="../app/js/lib/c3.min.js"></script> 
    </head>
    <body>
    
        <!-- ********************************** nav inicio ********************************** -->

        <?php 
		$_SESSION['SOFT_NAV']="estadistica";
		include('../app/plantilla/general/Cabecera.php');   ?>
        <!-- ********************************** nav fin ********************************** -->


        <!-- ********************************** tabs ********************************** -->

		<?php include('../app/plantilla/general/Nav.php');   ?>
        <!-- ********************************** tabs fin ********************************** -->



   

