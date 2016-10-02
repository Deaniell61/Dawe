


<div id="contenidoCrud">


   <ul class="collapsible popout" data-collapsible="accordion">
        <li>
            <div class="collapsible-header"><i class="material-icons"><img class="imgSub" src="../app/img/flecha-hacia-abajo-signo-para-navegar.png" /></i>Inventario del Administrador</div>
            <div class="collapsible-body">
                <div class="col s12">
                    <ul id="tabsn" class="tabsUsuarios centrartab blue darken-1 ">
                        <div class="lipUsuario">
                            <li class="centrarli"><a id="inventarioV" href="#" class="yellow darken-3 btn white-text tamatabsa "><i class="material-icons left"><img class="iconotab" src="../app/img/empleado.png" /></i>Vendedor</a></li>
                            <li class="centrarli"><a id="inventarioA" href="#" class="yellow darken-4   btn white-text  tamatabsa1"><i class="material-icons left"><img class="iconotab" src="../app/img/avatar.png" /></i>Administrador</a></li>
                            <li class="centrarli"><a id="inventarioI" href="#" class="yellow darken-3   btn white-text  tamatabsa"><i class="material-icons left"><img class="iconotab" src="../app/img/avatar.png" /></i>Inicial</a></li>




                            <!-- <div class="indicator blue" style="z-index:1"></div>  -->
                        </div>
                    </ul>
                </div>
            </div>
        </li>

    </ul>


    <!-- ********************************** tabla inicio ********************************** -->

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

    <div class="centrartabla">


        <table>
            <tr>
                <td class="">
                    <div class="input-field ">

                    </div>
                </td>
                <td class="">




                </td>
            </tr>
        </table>





        <?php
        include('../vista/inventarioAdminVista.php');
        mostrarInventario();


        ?>


        <!-- ********************************** modal ********************************** -->

        <!-- nuevo --->

        <div id="modal1" class="modal">
            <div class="modal-content">
                <form id="formUser" class="col s8">
                    <div id="mensaje"></div>
                    <div class="row">
                        <div class="nav-wrapper grey darken-4">
                            <div>
                                <p class="encabezadotextomodal">Inventario</p>

                                <a id="modalcerrar" class=" modal-action modal-close waves-effect waves-light right  " ><i class="material-icons prefix"><img class="iconocerrarmodal" src="../app/img/desenfrenado.png"></i></a>
                            </div>

                        </div>
                    </div>
                    <div class="input-field col s10">
                        <i class="material-icons prefix"><img class="iconologin" src="../app/img/producto.png" /></i>
                        <input id="producto" disabled type="text" class="validate">
                        <label for="icon_prefix" ><span class="etiquelogin">Productos</span></label>
                    </div>
                    <div class="input-field col s10">
                        <i class="material-icons prefix"><img class="iconologin" src="../app/img/marca.png" /></i>
                        <input id="marca" disabled type="text" class="validate">
                        <label for="icon_prefix" ><span class="etiquelogin">Marca</span></label>
                    </div>
                    <div class="input-field col s10">
                        <i class="material-icons prefix"><img class="iconologin" src="../app/img/descripcion.png" /></i>
                        <input id="descripcion" disabled type="text" class="validate">
                        <label for="icon_prefix" ><span class="etiquelogin">Descripcion</span></label>
                    </div>
                    <div class="input-field col s10">
                        <i class="material-icons prefix"><img class="iconologin" src="../app/img/precioCosto.png" /></i>
                        <input id="costo" disabled type="text" class="validate">
                        <label for="icon_prefix" ><span class="etiquelogin">Costo</span></label>
                    </div>
                    <div class="input-field col s10">
                        <i class="material-icons prefix"><img class="iconologin" src="../app/img/cantidad.png" /></i>
                        <input id="cantidad" disabled type="number" class="validate">
                        <label for="icon_prefix" ><span class="etiquelogin">Cantidad</span></label>
                    </div>



                    <div class="input-field col s10">
                        <i class="material-icons prefix"><img class="iconologin" src="../app/img/precioGeneral.png" /></i>
                        <input id="precioG"  type="number" class="validate">
                        <label for="icon_prefix" ><span class="etiquelogin">Precio General</span></label>
                    </div>
                    <div class="input-field col s1">
                        <input id="precioEP"  type="text" class="validate" value="15">
                        <label for="icon_prefix" ><span class="etiquelogin"></span>% Especial</label>
                    </div>



                    <div class="input-field col s10">
                        <i class="material-icons prefix"><img class="iconologin" src="../app/img/precioespecial.png" /></i>
                        <input id="precioE"  disabled type="number" class="validate">
                        <label for="icon_prefix" ><span class="etiquelogin">Precio Especial</span></label>
                    </div>
                    <div class="input-field col s1">
                        <input id="precioGP"    type="number" class="validate"  value="20">
                        <label for="icon_prefix" ><span class="etiquelogin"></span>% Mayoreo</label>
                    </div>




                    <div class="input-field col s10">
                        <i class="material-icons prefix"><img class="iconologin" src="../app/img/preciomayoreo.png" /></i>
                        <input id="precioM"  disabled type="number" class="validate">
                        <label for="icon_prefix" ><span class="etiquelogin">Precio Mayoreo</span></label>
                    </div>

                    <div class="modal-footer">

                        <a id="btnActualizar" class=" modal-action waves-effect waves-light btn blue lighten-1 " >Aceptar</a>


                    </div>

        </div>
    </div>

    </form>


</div>


<!-- nuevo fin --->


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
                            <input id="icon_telephone" type="password" class="validate">
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

<!-- ********************************** modal fin ********************************** -->
