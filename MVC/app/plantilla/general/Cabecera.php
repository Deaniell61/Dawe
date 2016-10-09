<?php
		for($i=0;$i<count($_SESSION['notified1']);$i++)
		{
			$_SESSION['notified1'][($i)]="";
		}
		
		for($i=0;$i<count($_SESSION['notified22']);$i++)
		{
			$_SESSION['notified22'][($i)]="";
		}
$_SESSION['notified'] = nitificaciones();
if ($_SESSION['notified'] != 0) {
    $_SESSION['notified2'] = "(" . ($_SESSION['notified']) . ") ";
} else {
    $_SESSION['notified2'] = "";
}

function nitificaciones()
{
	$fecha3 = date('Y-m-d');
    $nuevafecha3 = strtotime ( '+5 day' , strtotime ( $fecha3 ) ) ;
	$hoy = date ( 'Y-m-d' , $nuevafecha3 );
	$contador = 0;
    	$sql = "select cc.fecha,cc.tipoPlazo,cc.plazo,cc.total,c.nombre,c.apellido from cuentascobrar cc inner join cliente c on c.idcliente=cc.idcliente";
    $mysql = conexionMysql(); 
	
	if($resultado = $mysql->query($sql))
    {
		if($resultado->num_rows>0)
		{
			while($fila=$resultado->fetch_row())
			{
				$fecha1 = substr($fila[0],0,10);
				$tipoPlazo="";
				switch($fila[1])
				{
					case '1':
					{
						$tipoPlazo="day";
						break;
					}
					case '2':
					{
						$tipoPlazo="month";
						break;
					}
					case '3':
					{
						$tipoPlazo="year";
						break;
					}
				}
				$nuevafecha2 = strtotime ( '+28 day' , strtotime ( $fecha1 ) ) ;
				$fecha28 = date ( 'Y-m-d' , $nuevafecha2 );
				$fechaOri=$fecha1;
				$nuevafecha1 = strtotime ( '+'.$fila[2].' '.$tipoPlazo , strtotime ( $fecha1 ) ) ;
				$fecha1 = date ( 'Y-m-d' , $nuevafecha1 );
				
				//echo $fecha1."  ".$hoy;
				if($fecha1<=$hoy && $fila[3]>0)
				{
					
					$_SESSION['notified1'][($contador)] = $fila[4]." ".$fila[5]."  ".toMoney($fila[3]);//substr($fila[0],0,10);
					$_SESSION['direccione1'][($contador)] = $fila['1'];
					$contador++;
				}
				else
				if($fecha28<=$fecha3 && $fila[3]>0)
				{
					
					$_SESSION['notified1'][($contador)] = $fila[4]." ".$fila[5]."  ".toMoney($fila[3]);//substr($fila[0],0,10);
					$_SESSION['direccione1'][($contador)] = $fila['1'];
					$contador++;
				}
			}
			
		}
		else
		{  
			
		}
		
    }
    else
    {  
        echo 1;
    }
	
	$sql = "select cc.fecha,cc.tipoPlazo,cc.plazo,cc.total,c.nombreempresa from cuentaspagar cc inner join proveedor c on c.idproveedor=cc.idproveedor";
    $mysql = conexionMysql(); 
	
	if($resultado = $mysql->query($sql))
    {
		$contP=0;
		if($resultado->num_rows>0)
		{
			while($fila=$resultado->fetch_row())
			{
				$fecha1 = substr($fila[0],0,10);
				$tipoPlazo="";
				switch($fila[1])
				{
					case '1':
					{
						$tipoPlazo="day";
						break;
					}
					case '2':
					{
						$tipoPlazo="month";
						break;
					}
					case '3':
					{
						$tipoPlazo="year";
						break;
					}
				}
				$nuevafecha2 = strtotime ( '+28 day' , strtotime ( $fecha1 ) ) ;
				$fecha28 = date ( 'Y-m-d' , $nuevafecha2 );
				$fechaOri=$fecha1;
				$nuevafecha1 = strtotime ( '+'.$fila[2].' '.$tipoPlazo , strtotime ( $fecha1 ) ) ;
				$fecha1 = date ( 'Y-m-d' , $nuevafecha1 );
				if($fecha1<=$hoy && $fila[3]>0)
				{
					
					$_SESSION['notified22'][($contP)] = $fila[4]." sfsd ".toMoney($fila[3]);//substr($fila[0],0,10);
					$_SESSION['direccione22'][($contP)] = $fila['1'];
					$contador++;
					$contP++;
				}
				else
				if($fecha28<=$fecha3 && $fila[3]>0)
				{
					
					$_SESSION['notified22'][($contP)] = $fila[4]." sfsd ".toMoney($fila[3]);//substr($fila[0],0,10);
					$_SESSION['direccione22'][($contP)] = $fila['1'];
					$contador++;
					$contP++;
				}
			}
			
		}
		else
		{  
			
		}
		
    }
    else
    {  
        echo 1;
    }
    
    
    $mysql->close();
	return $contador;
}

?>
<div class="navbar-fixed">
            <nav>
                <div class="nav-wrapper grey darken-4">
                    <a  class="brand-logo"><img class="logo" src="../app/img/logoHectoRepuestos.png"/></a>
                     <a href="#" data-activates="mobile-demo" class="button-collapse"><i class="material-icons"><img src="../app/img/ordenar.png"></i></a>
                     
               
                         <ul class="right hide-on-med-and-down">
                
                <?php 
				if($_SESSION['SOFT_ROL']=='1' || $_SESSION['SOFT_ROL']=='0')
				{
					?>         
                <li><a class="right ayuda">
                	<img src="../app/img/mensajes/sinnotifiacion.svg" id="notified" onClick="if(document.getElementById('globoNotificacion').hidden){document.getElementById('globoNotificacion').hidden=false;}else{document.getElementById('globoNotificacion').hidden=true;}">

                <div id="notificationsCont" <?php if($_SESSION['notified']==0){echo "hidden";}else{echo "";}?>><strong id="cantNotified"><?php echo $_SESSION['notified'];?></strong></div>
                
                </a></li>
                   
                 <?php }?>         
						<li><a id="ayuda" class="right ayuda"><img class="ayudaI" src="../app/img/ayuda.png"></a></li>
						<li><a class="right"  id="logout" href="#!">Cerrar Session</a></li>
					     <div id="globoNotificacion" hidden> 
                             <ul id="menuNotificacion">
                        			<?php 
											if($_SESSION['notified']>0)
											{
												echo "
													<li class=\"tituloNotifica\" >Cuentas por Cobrar </li>
													";
												for($i=0;$i<count($_SESSION['notified1']);$i++)
												{
												echo "
													<li class=\"listaNotificacion\" >".$_SESSION['notified1'][($i)]." </li>
													";
												}
												echo "
													<li class=\"tituloNotifica\" >Cuentas por Pagar </li>
													";
												for($i=0;$i<count($_SESSION['notified22']);$i++)
												{
												echo "
													<li class=\"listaNotificacion\" >".$_SESSION['notified22'][($i)]." </li>
													";
												}
											} else {
												echo "
										<li class=\"listaNotificacion\">No tiene notificacines pendientes</li>
										";
											}
													?>
                            </ul>
    
                       	</div> 
                    </ul>	
                       
                </div>
            </nav>
        </div>

<!-- mobil ----------------------------------------------------------->      
      <ul class="side-nav" id="mobile-demo">
        <li><a id="ayuda" href="ayuda.php" class="ayuda" >Ayuda</a></li>
		<li><a id="logoutR"  >Cerrar Session</a></li>
      </ul>
<!-- mobil ----------------------------------------------------------->