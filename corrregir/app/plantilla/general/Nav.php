<br>




   <div class="controlTabs">


            <div class="row">


                <div class="col s12">

                    <ul id="tabsn" class="tabs tabsTa centrartab blue darken-1 ">



                        <div class="centrarlip">

                            <?php

							$class="";
							for($i=0;$i<=$_SESSION['SOFT_MODULO_NUM'];$i++)
							{

								if($_SESSION['SOFT_MODULO_REF'][$i]==$_SESSION['SOFT_NAV'])
								{
									$class="blue darken-4";
								}
								else
								{
									$class="";
								}

								echo '<li class="centrarli"><a id="'.$_SESSION['SOFT_MODULO_REF'][$i].'" href="#" class="blue darken-1 btn white-text tamatabsa '.$class.'"><i class="material-icons left"><img class="iconotab" src="'.$_SESSION['SOFT_MODULO_DIR'][$i].'" /></i>'.$_SESSION['SOFT_MODULO'][$i].'</a></li>';

							}

						  ?>
              <a  id="prueba" class="blue darken-1 btn  white-text tamatabsa" href="#!" >Prueba</a>
                  <div class="sigue subM">
                        <a  id="1" class="subM blue darken-1 btn  white-text tamatabsa" href="#!" >Usuarios</a>
                        <a  id="2" class="subM blue darken-1 btn  white-text tamatabsa" href="#!" >Cuentas</a>
                        <a  id="3" class="subM blue darken-1 btn  white-text tamatabsa" href="#!" >Estadistica</a>
                        <a  id="4" class="subM blue darken-1 btn  white-text tamatabsa" href="#!" >Pagos</a>
                  </div>





                <!-- <div class="indicator blue" style="z-index:1"></div>  -->
                        </div>

                    </ul>

                </div>

            </div>
        </div>
