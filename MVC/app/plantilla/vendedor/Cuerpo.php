<div>
   
 <ul class="collapsible popout" data-collapsible="accordion">
        <li>
            <div class="collapsible-header"><i class="material-icons"><img class="imgSub" src="../app/img/flecha-hacia-abajo-signo-para-navegar.png" /></i>Estadistica Vendedor</div>
                <div class="collapsible-body">    
                    <div class="col s12">
                        <ul id="tabsn" class="tabsUsuarios centrartab blue darken-1 ">
                            <div class="lipUsuario">
                               
                                	 <li class="centrarli"><a id="vendedor" href="#" class=" yellow darken-4 btn white-text tamatabsa  ">Vendedor</a></li>
                                 
                                   <li class="centrarli"><a id="flujo" href="#" class=" amber accent-4 btn white-text tamatabsa  ">Flujo</a></li>
                                   
                                    
                              
                                 	 <li class="centrarli"><a id="estadisticaVentas" href="#" class=" btn white-text amber accent-4  tamatabsa  ">Ventas</a></li>
                        

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
    
    include('../vista/vendedorVista.php');
   mostrarVendedor();
    
    ?>

</center>
    			
    		</div>
    		
    		
    		
    	</div>
         
     
    
    </div>
    
     <div id="modal1" class="modal">
              <div class="modal-content">
                  
                  <div id="mensaje"></div>
                      <div class="row">
                          <div class="nav-wrapper grey darken-4">
                              <div>
                                  <p class="encabezadotextomodal"> Sueldos </p>

                                  <a id="modalcerrar1" onClick="cierre();" class=" modal-action modal-close  waves-effect waves-light right  " ><i class="material-icons prefix"><img class="iconocerrarmodal" src="../app/img/desenfrenado.png"></i></a> 
                              </div>	

                          </div>
                      </div>
                      
                      <div id="productosVenta" class="anchoFila col s4">
                                   
                                    </div>
                   
                  
                     <div class="row">
                    
							
							 
							 	
                             

                              <div class=" col s8 espacio">
                              	
                             
                               					<div class="input-field col s7" hidden>
													  <i  class="material-icons prefix"><img class="iconologin" src="../app/img/codigo.png"/></i>
													  <input id="empleado" type="text" class="validate">
													  <label for="icon_telephone" ><span class="etiquelogin">Empleado</span></label>
												 </div>
												 <div class="input-field col s7" >
													  <i  class="material-icons prefix"><img class="iconologin" src="../app/img/codigo.png"/></i>
													  <input id="empleado" type="text" class="validate">
													  <label for="icon_telephone" ><span class="etiquelogin">Empleado</span></label>
												 </div>
												 <div class="input-field col s7">
													  <i  class="material-icons prefix"><img class="iconologin" src="../app/img/fecha.png"/></i>
													  <input id="fecha" onKeyUp="buscaProductoVenta(this)" type="date" class="validate">
													  <label for="icon_telephone" ><span class="etiquelogin">Fecha</span></label>
												 </div>
												 
												  
												 
												   <div class="input-field col s7 ">   
													  <i  class="material-icons prefix"><img class="iconologin" src="../app/img/descripcion.png"/></i>
													  <input id="descripcion"  type="text" class="validate" onKeyUp="siguiente(event,'fecha');">
													  <label for="icon_telephone" ><span class="etiquelogin">Descripcion</span></label>
												  </div>
                                                  
												
                                                   
                                          
												   <div class="input-field col s7 ">   
													  <i  class="material-icons prefix"><img class="iconologin" src="../app/img/monto.png"/></i>
													  <input id="monto" type="text" class="validate" onKeyUp="siguiente(event,'precioC');">
													  <label for="icon_telephone" ><span class="etiquelogin">Monto</span></label>
												  </div>
												  
												   
												  
                                                </div>

								
											  
 
              
                   </div>   
              <div class="modal-footer">
                  <a id="modalnuevo" onClick="ingresoVenta(document.getElementById('codigo').value);" class=" modal-action waves-effect waves-light btn blue lighten-1 " >Aceptar</a></div>
 <script>setTimeout(function(){buscaProductoVenta(document.getElementById('nombreC'));},500);</script>

              </div>
          </div>
          
          
          
  





