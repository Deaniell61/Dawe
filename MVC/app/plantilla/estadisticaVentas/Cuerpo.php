


<ul id="tabsn" class="tabsUsuarios centrartab blue darken-1 ">
    <div class="lipUsuario">

           <li class="centrarli"><a id="vendedor" href="#" class="amber accent-4 btn white-text tamatabsa  ">Vendedor</a></li>

           <li class="centrarli"><a id="flujo" href="#" class=" amber accent-4 btn white-text tamatabsa  ">Flujo</a></li>



           <li class="centrarli"><a id="estadisticaVentas" href="#" class=" btn white-text  yellow darken-4 tamatabsa  ">Ventas</a></li>


<!-- <div class="indicator blue" style="z-index:1"></div>  -->
    </div>
</ul>

<br>
<br>

     <div class="row">

    	<div class="col s12">




    			                 <div class="input-field col s6">

                                  <i  class="material-icons prefix"><img class="iconologin" src="../app/img/fecha.png"/></i>
								  <input  id="fechaI" class="fechas" type="date" class="validate" onKeyUp="siguiente(event,'factura');" value="<?php echo date('Y-m-d')?>" onChange="cargarGrafico('6','');cargarGrafico('1','');cargarGrafico('2','');cargarGrafico('3','');">
								  <label class="active" for="fecha" >Fecha de Inicio</label>

								</div>

    		                      <div class="input-field col s6">

                                  <i  class="material-icons prefix"><img class="iconologin" src="../app/img/fecha.png"/></i>
								  <input  id="fechaF" class="fechas" type="date" class="validate" onKeyUp="siguiente(event,'factura');" value="<?php echo date('Y-m-d')?>" onChange="cargarGrafico('6','');cargarGrafico('1','');cargarGrafico('2','');cargarGrafico('3','');">
								  <label class="active" for="fecha" >Fecha Final</label>
								</div>

                <center>
                  <li class="centrarli"><a id="imprimirT" href="#!" class="amber accent-3 btn white-text tamaniobot " ><i class="material-icons left"><img class="iconotab" src="../app/img/imprimir.png" /></i>Imprimir</a></li>
                </center>
                <br>


	<div class="row">
      <div class="col s12">
            <div class="col s6 ">
                  <div class="" id="chart">
        
                  </div>
    
            </div>
            <div class="col s6 ">
                  <div class="" id="chart2">
                  Grafica Grande 2
                  </div>
    
            </div>


            <div class="col s6 " id="best5">
                  Tabla 1
            </div>
            <div class="col s6 " id="best5Q">
                Tabla  2
            </div>
      </div>
    </div>




<div id="comoGraficar">
<script>
cargarGrafico('6','');
cargarGrafico('1','');
cargarGrafico('2','');
cargarGrafico('3','');

</script>
</div>
				</center>

    		</div>



    	</div>

    </div>
