
    

<?php
    
		
    include('../vista/ayudaVista.php');    
    mostrarAyuda();
    	
?>

 <div class="row">
     
      
      <div class="col s2  ">
         <center>
         <div class="izqC">
         	<ul>
         	   <li><a id="resumenA" href="#!" class="" >Video Resumen</a></li>
         	   <li><a id="mapacontenidoA" href="#!" class="" >Contenido</a></li>
         		<li><a id="usuariosA" href="#!" class="" >Usuarios</a></li>
         		<li><a id="empleadosA"  href="#!" class="">Empleados</a></li>
         		<li><a id="comprasA" href="#!" class="" >Compras</a></li>
         	</ul>
          </div>	
         </center>
      
      </div>
      <div class="col s10 ">
         <center>
          <div class="derC"> 
          
          
          
				<!-- reumen --> 
				 <div id="resumenC"   >
                   <h4>Video Resumen</h4>
				<video id="resumenV" controls>
				   <source src="../app/video/video.mp4" type="video/mp4">
				</video>

				  </div>

				  <!-- Detalle todos --> 
				   <div id="mapacontenidoC"  style="display: none;" >
                       <h4>Contenido General</h4>
						
                     <p class="subtitulo1">Menú</p>
                	 <p class="parrafo1">Son botones de acceso a cada módulo, en la cual indicara las opciones que podrá utilizar dentro de la administración que el usuario desee según, el acceso que se hay indicado. Dentro de estos botones podemos encontrar usuarios, compras, cuentas por cobrar y cuentas por pagar, etc.</p>
                	 
				   	 <div class="controlTabs">
				     <div class="row">
				     <div class="col s12">
					 <ul id="tabsn" class="tabs tabsTa centrartab blue darken-1 ">
				     <div class="centrarlip">
				           <?php
							$class="";
							for($i=0;$i<=$_SESSION['SOFT_MODULO_NUM'];$i++)
							{
							echo '<li class="centrarli"><a id="'.$_SESSION['SOFT_MODULO_REF'][$i].'" href="#" class="blue darken-1 btn white-text tamatabsa '.$class.'"><i class="material-icons left"><img class="iconotab" src="'.$_SESSION['SOFT_MODULO_DIR'][$i].'" /></i>'.$_SESSION['SOFT_MODULO'][$i].'</a></li>';
							}
							?>
				    </div>
				                    
					</ul>
				                    
					</div>
					</div>
				 	</div> 
					 <p class="subtitulo1">Submenú</p>
                	 <p class="parrafo1">Estos botones permiten añadir más opciones a la vista de los módulos que se desea administrar, presentados por medio de un acordeón que al presionarlo,  genera las opciones correspondientes al menú que lo conforma.</p>
	                	<ul class="collapsible popout" data-collapsible="accordion">
        				<li>
            			<div class="collapsible-header"><i class="material-icons"><img class="imgSub" src="../app/img/flecha-hacia-abajo-signo-para-navegar.png" /></i>Usuarios</div>
            			<div class="collapsible-body">
                		<div class="col s12">
                    	<ul id="tabsn" class="tabsUsuarios centrartab blue darken-1 ">
                        <div class="lipUsuario">
                        <li class="centrarli"><a id="empleadoDD" href="#" class="amber accent-3 btn white-text tamatabsa "><i class="material-icons left"><img class="iconotab" src="../app/img/empleado.png" /></i>Empleados</a></li>
                        </div>
                    	</ul>
                		</div>
            			</div>
        				</li>
						</ul>
					<p class="subtitulo1">Botón Editar</p>
                	 <p class="parrafo1">Este botón permite entrar al menú contextual de edición de los formularios sobre la información que se ha almacenado dentro de la base de datos, para así poder modificar cualquier dato erróneo o actualizarlo de manera eficientemente. </p>
                	 <a class='waves-effect waves-light btn orange lighten-1 modal-trigger botonesm editar' ><i class='material-icons left'><img align="center" class='iconoeditcrud' src='../app/img/editar.png' /></i></a>
                	 <p class="subtitulo1">Botón Eliminar</p>
                	 <p class="parrafo1">Botón que se utiliza para eliminar algún registro no deseado. Se aplica cuando el dato o la información no es correcta; cuando los registros no son deseados o por alguna anulación de factura o requerimiento que ya no se necesite. Al utilizarlo se mostrara una confirmación con contraseña para que el usuario este seguro de la eliminación porque al procesarlo,  los registros quedaran fuera del sistema de base de datos.</p>
                	 <a class='waves-effect waves-light btn red lighten-1 modal-trigger botonesm modaleliminar' ><i class='material-icons left'><img align="center" class='iconoaddcrud' src='../app/img/boton-borrar.png' /></i></a>
                	 <p class="subtitulo1">Botón Ver</p>
                	 <p class="parrafo1">Botón que permite visualizar todos los procesos utilizados para la ejecución correcta del sistema, permitirá ver todos los movimientos que se han generado, editado, agrupado y eliminado, como también ver la información detallada ingresada dentro de la base de datos.</p>
                	 <a class='waves-effect waves-light btn yellow dark-1 modal-trigger botonesm ver' ><i class='material-icons left'><img align="center" class='iconoeditcrud' src='../app/img/ojo.png' /></i></a></td>
                	 <p class="subtitulo1">Botón Seleccionar</p>
                	 <p class="parrafo1">Botón que permite visualizar todos los procesos utilizados para la ejecución correcta del sistema, permitirá ver todos los movimientos que se han generado, editado, agrupado y eliminado, como también ver la información detallada ingresada dentro de la base de datos.</p>
				 	<a class='waves-effect waves-light btn modal-close  green lighten-1 modal-trigger botonesm editar' ><i class='material-icons left'><img align="center" class='iconoeditcrud' src='../app/img/seleccion.png' /></i></a>
				 	<p class="subtitulo1">Botón Nuevo</p>
                	 <p class="parrafo1">Batón que permite ingresar un nuevo registro  al sistema de la base de datos, se almacenara  en las tablas correspondientes al módulo que se ha elegido. Batón agrega clientes, proveedores, compras, ventas, etc.</p>	
                	 <a id="modalnuevoP" class="waves-effect waves-light btn blue lighten-1 modal-trigger botonesr " ><i class="material-icons left"><img class="iconoaddcrud" src="../app/img/anadir.png" /></i>Nuevo</a>
                	 <p class="subtitulo1">Caja de Búsqueda</p>
                	 <p class="parrafo1">Esta caja de búsqueda permite localizar el registro almacenado en las tablas de la base de datos  sin importar en qué tipo de columna pertenece, ya que lo hace de manera dinámica para filtrar los datos de manera confiable. </p>	
	                <!--<table id='tabla1' class='bordered centered highlight responsive-table centrarT'><thead><tr><th></th></tr></thead></table>   -->
  					<a class='' ><i class='material-icons left'align="center"><img align="center" class='iconoaddcrud tamimagenayuda' src='../app/img/imbuscar.jpg' /></i></a>

				  </div>

				  <!-- usuarios --> 
				   <div id="usuariosC"  style="display: none;" >
                      <h4>Usuarios</h4>
					   <p>usuarios</p>

				  </div>


				  <!-- empleados --> 
				   <div id="empleadosC"  style="display: none;" >
                       <h4>Empleados</h4>
						<p> empleados </p>

				  </div>

				  <!-- compras --> 
				   <div id="comprasC"  style="display: none;" >
                      <h4>Compras</h4>
						<p> compras </p>

			             </div>
			             
			             
			      
			             
			             
           </div>	   
              
         </center>
      </div>
      
      
     
 </div>



    
    
	
	
