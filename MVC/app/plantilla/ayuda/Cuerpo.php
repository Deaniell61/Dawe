
    

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
	                  <img src='../app/img/Ayuda/imbuscar.png' width="30%" height="25%" class="" onclick="zoomToggle('30%','25%','50%','30%',this);"/>
                   <p class="subtitulo1">Filtro de Registro</p>
                   <p class="parrafo1">Permite filtrar la cantidad de registros que se muestran en la administración de los módulos para ordenar el comportamiento de la información.</p>  
                    <img src='../app/img/Ayuda/imgfiltro.png' width="25%" height="20%" class="" onclick="zoomToggle('25%','20%','50%','30%',this);"/> 
                   <p class="subtitulo1">Filtro de Información</p>
                   <p class="parrafo1">Permite separar la información mediante los botones indicados mostrando los registros según se haya seleccionado, a medida de diferenciar que compra, venta o flujo se está administrando.</p>   
                   <div>
        <center>
            <div class="radioFiltro">
                <i class="material-icons prefix"><img class="iconologin radioBoton" src="../app/img/motocicleta.png" /></i>
                <input class="radioColor" name="group1" checked="checked" type="radio" id="motos" />
                <label for="motos">Motos</label>
            </div>

            <div class="radioFiltro carroEspacio">
                <i class="material-icons prefix"><img class="iconologin radioBoton" src="../app/img/coche.png" /></i>
                <input class="radioColor" name="group1" type="radio" id="carros" />
                <label for="carros">Carros</label>
            </div>
        </center>
    </div>
                   <p class="subtitulo1">Administrador de Vistas de tablas</p>
                   <p class="parrafo1">Permite distribuir la información de la vista de los registros ingresados dentro de la base de datos mediante tablas divididas en diferentes partes según se indique en el filtro de Registros.</p>  
                    <img src='../app/img/Ayuda/imgadminlistas.png' width="25%" height="20%" class="" onclick="zoomToggle('25%','20%','50%','30%',this);"/>  

				  </div>

				

          <!-- usuarios --> 
				   <div id="usuariosC"  style="display: none;" >
                      <h4>Usuarios</h4>
					   <p class="subtitulo1">Administración de Usuarios</p>
                   <p class="parrafo1">Contiene los datos ingresados de todos los usuarios, en la cual estos permitirán la manipulación y administración del uso correspondiente del software presentado, podrá asignar un ROL específico para establecer si podrá: eliminar, editar, modificar o solo ver el modulo correspondiente.</p>  
                   <img src='../app/img/Ayuda/Usuarios1.jpg' width="50%" height="30%" class="" onclick="zoomToggle('50%','30%','100%','60%',this);"/>   
                   <p class="parrafo1">a)  En el módulo de usuarios podrá crear uno  nuevo según el criterio del administrador. </p>  
                   <p class="parrafo1">b)  En esta área se mostraran todos los usuarios ingresados. </p>  
                   <p class="parrafo1">c)  El módulo de usuarios contiene una caja de búsqueda que permitirá filtrar y buscar los datos de manera eficiente sobre todos los registros ingresados de usuarios.</p>  
                   <p class="parrafo1">d)  Por cada usuario ingresado se mostrar un panel de mantenimiento en la cual contiene los botones de: editar, eliminar y ver para administrarlos según el criterio del usuario.</p>  
                   <p class="parrafo1">e)  Contiene un submenú en forma de acordeón que posee los botones de empleados y usuarios para administración de cualquiera de estos módulos.</p>  
                   <p class="parrafo1">f)  Contiene un Filtro de Registro para determinar la cantidad de datos que se desea mostrar a medida de localizar la información rápidamente. </p>  
                   <p class="parrafo1">g)  Contiene un Administrador de Vistas de Tablas que muestran los registros en forma de páginas según el rango que se tiene en el Filtro de Registros.     </p>  
           <p class="subtitulo1">Nuevo Usuario</p>
                   <p class="parrafo1">Podrá crear los usuarios que desee  según los trabajadores  que posea la empresa, asignándole un ROL específico, en la cual éste estará encargado de la utilización del sistema según los módulos que  el administrador le asigne.</p>          
                   <img src='../app/img/Ayuda/Usuarios1_1.jpg' width="50%" height="30%" class="" onclick="zoomToggle('50%','30%','100%','60%',this);"/>   
                   <br><img src='../app/img/Ayuda/Usuarios2.jpg' width="50%" height="30%" class="" onclick="zoomToggle('50%','30%','100%','60%',this);"/>   
                   <p class="parrafo1">a) Al crear un nuevo registro deberá de ingresar un Nombre de Usuario en la cual le servirá a esta persona manipular el sistema, según los módulos que el administrador le asigne. </p>  
                   <p class="parrafo1">b) Todo usuario debe contener una contraseña específica para poder acceder al sistema. La contraseña debe volverse a escribir a medida de seguridad para determinar que las contraseñas son iguales y deben ser mayores a 9 caracteres (ej. A12345678! ).</p>  
                   <p class="parrafo1">c) El administrador o persona encargada deberá de determinar el ROL en que los usuarios utilizaran el sistema.</p>  
                   <p class="parrafo1">d) Deberá de elegir el Empleado al que pertenece esta cuenta de usuario  </p>  
                   <p class="parrafo1">e) Al terminar de llenar los registros del formulario deberá de aceptar para que almacena la información ingresada.</p>  
                   <img src='../app/img/Ayuda/Usuarios3.jpg' width="50%" height="30%" class="" onclick="zoomToggle('50%','30%','100%','60%',this);"/>   
                   <p class="parrafo1">f) Cuando haya guardado el formulario anterior deberá de asignar los módulos específicos a los usuarios para la manipulación en el sistema </p> 
                   <img src='../app/img/Ayuda/Usuarios4.jpg' width="50%" height="30%" class="" onclick="zoomToggle('50%','30%','100%','60%',this);"/>   
                   <img src='../app/img/Ayuda/Usuarios5.jpg' width="50%" height="30%" class="" onclick="zoomToggle('50%','30%','100%','60%',this);"/>   
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



    
    
	
	
