<div id="contenidoCrud">

    <ul class="collapsible popout" data-collapsible="accordion">
        <li>
            <div class="collapsible-header"><i class="material-icons"><img class="imgSub" src="../app/img/flecha-hacia-abajo-signo-para-navegar.png" /></i>Comisiones</div>
                <div class="collapsible-body">    
                    <div class="col s12">
                        <ul id="tabsn" class="tabsUsuarios centrartab blue darken-1 ">
                            <div class="lipUsuario">
                                <li class="centrarli"><a id="sueldo" href="#" class=" amber accent-4  btn white-text tamatabsa  ">Sueldos</a></li>
                                <li class="centrarli"><a id="comi" href="#" class=" yellow darken-4 btn white-text tamatabsa  ">Comisiones</a></li>
                                <li class="centrarli"><a id="gastos" href="#" class="amber accent-4 btn white-text tamatabsa  ">Gastos</a></li>
                        

                        <!-- <div class="indicator blue" style="z-index:1"></div>  -->
                            </div>
                        </ul>
                     </div>
                   </div>
                 </li>
               </ul>  
 <!-- ********************************** tabla inicio ********************************** -->

<!-- ********************************** tabla inicio ********************************** -->
          <table>
            <tr>
                <td class="">
                    <div class="input-field ">
                        <a id="modalnuevo" class="waves-effect waves-light btn blue lighten-1 modal-trigger botonesr " ><i class="material-icons left"><img class="iconoaddcrud" src="../app/img/anadir.png" /></i>Nuevo</a>
                    </div>	
                </td>
                <td class="">




                </td>
            </tr>
        </table>
  
  <div class="row">
  	<div class="col s12">
  		
  		  <?php 
    
    include('../vista/comisionVista.php');
   // mostrarEstadistica();
mostrarComision();
    
    ?>
    
  		
  	</div>
  </div>
  
    
    
    
    
    
     <div id="modal1" class="modal">
              <div class="modal-content">
                  
                  <div id="mensaje"></div>
                      <div class="row">
                          <div class="nav-wrapper grey darken-4">
                              <div>
                                  <p class="encabezadotextomodal"> Comisiones </p>

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
													  <input id="vendedor" type="text" class="validate">
													  <label for="icon_telephone" ><span class="etiquelogin">Vendedor</span></label>
												 </div>
												 <div class="input-field col s7">
													  <i  class="material-icons prefix"><img class="iconologin" src="../app/img/codigo.png"/></i>
													  <input id="nombreC" onKeyUp="buscaProductoVenta(this)" type="text" class="validate">
													  <label for="icon_telephone" ><span class="etiquelogin">Vendedor</span></label>
												 </div>
												 
												  
												  <div class="input-field col s7 ">   
													  <i  class="material-icons prefix"><img class="iconologin" src="../app/img/fecha.png"/></i>
													  <input id="fechaI"  onKeyUp="buscaProductoVenta(this)" type="text" class="validate">
													  <label for="icon_telephone" ><span class="etiquelogin">Fecha Inicio</span></label>
												  </div>
												
												   <div class="input-field col s7 ">   
													  <i  class="material-icons prefix"><img class="iconologin" src="../app/img/fecha.png"/></i>
													  <input id="fechaF"  onKeyUp="buscaProductoVenta(this)" type="text" class="validate">
													  <label for="icon_telephone" ><span class="etiquelogin">Fecha Fin</span></label>
												  </div>
												 
                                                   
                                          
												   <div class="input-field col s7 ">   
													  <i  class="material-icons prefix"><img class="iconologin" src="../app/img/monto.png"/></i>
													  <input id="Monto" type="text" class="validate" onKeyUp="siguiente(event,'precioC');">
													  <label for="icon_telephone" ><span class="etiquelogin">Monto</span></label>
												  </div>
												  
												   
												  
												   <div class="input-field col s7 ">   
													  <i  class="material-icons prefix"><img class="iconologin" src="../app/img/porcentaje.png"/></i>
													  <input id="porcentaje" type="text" class="validate" onKeyUp="siguiente(event,'precioE');">
													  <label for="icon_telephone" ><span class="etiquelogin">Porcentaje</span></label>
												  </div>
												  
												   <div class="input-field col s7 ">   
													  <i  class="material-icons prefix"><img class="iconologin" src="../app/img/pagarC.png"/></i>
													  <input id="PagarC" disabled type="text" class="validate" onKeyUp="siguiente(event,'precioM');">
													  <label for="icon_telephone" ><span class="etiquelogin">Comision a Pagar</span></label>
												  </div>
												  
												
								
											  
 
              
                   </div>   
              <div class="modal-footer">
                  <a id="modalnuevo" onClick="ingresoVenta(document.getElementById('codigo').value);" class=" modal-action waves-effect waves-light btn blue lighten-1 " >Aceptar</a></div>
 <script>setTimeout(function(){buscaProductoVenta(document.getElementById('nombreC'));},500);</script>

              </div>
          </div>
          
	</div>    
	
<!-- Eliminar ---> 
<div id="modal3" class="modal">
    <div class="modal-content">
        <form class="col s8">
            <div class="row">
                <form class="col s10">
                    <div class="row">
                        <div class="nav-wrapper grey darken-4">
                            <div>
                                <p class="encabezadotextomodal"> Eliminar </p>

                                <a id="modalcerrar" class=" modal-action modal-close waves-effect waves-light right  " ><i class="material-icons prefix"><img class="iconocerrarmodal" src="../app/img/desenfrenado.png"></i></a> 
                            </div>	

                        </div>

                        <div>
                            <p> Ingrese la contraseña para </p>
                        </div>

                        <div class="input-field col s10">
                            <i  class="material-icons prefix"><img class="iconologin" src="../app/img/cerrojo-cerrado.png"/></i>
                            <input id="contraElim" type="password" class="validate">
                            <label for="icon_telephone" ><span class="etiquelogin">Contraseña</span></label>
                        </div>

                    </div>
                </form>
            </div>

        </form>
    </div>
    <div class="modal-footer">
        <a class=" modal-action waves-effect waves-light btn blue lighten-1 eliminar" >Aceptar</a>


    </div>
</div>

<!-- Eliminar fin --->  
   
	</div>