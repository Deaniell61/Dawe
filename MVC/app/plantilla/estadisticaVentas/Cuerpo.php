<div>
   
 <ul class="collapsible popout" data-collapsible="accordion">
        <li>
            <div class="collapsible-header"><i class="material-icons"><img class="imgSub" src="../app/img/flecha-hacia-abajo-signo-para-navegar.png" /></i>Estadistica Ventas</div>
                <div class="collapsible-body">    
                    <div class="col s12">
                        <ul id="tabsn" class="tabsUsuarios centrartab blue darken-1 ">
                            <div class="lipUsuario">
                               
                                	 <li class="centrarli"><a id="vendedor" href="#" class="amber accent-4 btn white-text tamatabsa  ">Vendedor</a></li>
                                 
                                   <li class="centrarli"><a id="flujo" href="#" class=" amber accent-4 btn white-text tamatabsa  ">Flujo</a></li>
                                   
                                     
                              
                                 	 <li class="centrarli"><a id="estadisticaVentas" href="#" class=" btn white-text  yellow darken-4 tamatabsa  ">Ventas</a></li>
                        

                        <!-- <div class="indicator blue" style="z-index:1"></div>  -->
                            </div>
                        </ul>
                     </div>
                   </div>
                 </li>
               </ul>        
    
   
        </div>
    
     <div class="row">
    	
    	<div class="col s12">
    		
    		
    
    			
    			                 <div class="input-field col s6">
                                 
                                  <i  class="material-icons prefix"><img class="iconologin" src="../app/img/fecha.png"/></i>
								  <input  id="fechaI" class="fechas" type="date"  min="2013-01-01" max="2013-12-31" class="validate" onKeyUp="siguiente(event,'factura');" value="<?php echo date('Y-m-d')?>" >
								  <label class="active" for="fecha" >Fecha de Inicio</label>
								
								</div>
    			
    		                      <div class="input-field col s6">
                                 
                                  <i  class="material-icons prefix"><img class="iconologin" src="../app/img/fecha.png"/></i>
								  <input  id="fechaF" class="fechas" type="date" class="validate" onKeyUp="siguiente(event,'factura');" value="<?php echo date('Y-m-d')?>" >
								  <label class="active" for="fecha" >Fecha Final</label>
								</div>
								
								
							
    		
    		<div class="col s12">
    			<center>
    			   <?php 
    
    include('../vista/estadisticaVentasVista.php');
   // mostrarEstadistica();
mostrarEstadiVentas();
    
    ?>
</center>
    			
    		</div>
    		
    		
    		
    	</div>
    
    </div>
    
   
    
    
 





