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


					<div class="row">
      <div class="col s12">
        <div class="col s6 ">
          <div class="">
          Grafica Grande 1
          </div>
          <div  id="" class="  ">
            cuerpo
          </div>
        </div>
        <div class="col s6 ">
          <div class="">
          Grafica Grande 2
          </div>
          <div  id="" class="  ">
            cuerpo
          </div>
        </div>
        <div class="col s4 borde ">
            <div class="">
            Grafica pequeña 1
            </div>
            <div  id="" class="  ">
              cuerpo
            </div>
        </div>
        <div class="col s4 borde ">
          <div class="">
          Grafica pequeña 2
          </div>
            <div  id="" class=" ">
              cuerpo
            </div>
        </div>
        <div class="col s4 borde">
          <div class=" ">
          Grafica pequeña 3
          </div>
            <div  id="" class=" ">
              cuerpo
            </div>
        </div>

        <div class="col s6 ">
              Tabla 1
        </div>
        <div class="col s6 ">
            Tabla  2
        </div>
      </div>
    </div>



<div>
<div id="best5" style="display: inline-table;width: 550px;height: 250px;text-align: left;" ></div>
<div id="best5D" style="display: inline-table;width: 550px;height: 250px;text-align: left;"></div>
</div>



<div id="comoGraficar">
<script>
/*cargarGrafico('1',document.getElementById('filtro').value,'<?php echo $_SESSION['codprov'];?>','');
cargarGrafico('2',document.getElementById('filtro').value,'<?php echo $_SESSION['codprov'];?>','');
cargarGrafico('3',document.getElementById('filtro').value,'<?php echo $_SESSION['codprov'];?>','');
cargarGrafico('4',document.getElementById('filtro').value,'<?php echo $_SESSION['codprov'];?>','');
cargarGrafico('5',document.getElementById('filtro').value,'<?php echo $_SESSION['codprov'];?>','');*/

</script>
</div>
				</center>

    		</div>



    	</div>

    </div>
