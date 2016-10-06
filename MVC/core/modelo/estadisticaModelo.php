<?php
$meses="";
$fecha3 = date('Y-m-d');
function graficaVentasBarra($datos)
{
	
	?>
    <script>
   		 var chart = c3.generate({
								bindto: '#chart',
								data: {
									x: 'x',
							//        xFormat: '%Y%m%d', // 'xFormat' can be used as custom format of 'x'
									columns: [
										
									],
									type:"bar"
								},
								axis: {
									x: {
										type: 'timeseries',
										tick: {
											format: '%Y-%m-%d'
										},
									y: {
											show: true,
											tick: {
												format: d3.format("Q")
											}
										}
									}
								},
								bar: {
									width: {
										ratio: 0.25// this makes bar width 50% of length between ticks
									}
								},
								color: {
								  pattern: ['#1E88E5']
								},
								tooltip: {
									format: {
										value: function (value, id) {
											var format = d3.format('$');
											return format(value).replace("$","Q");
										}
							
									}
								}
							});
							</script>
    <?php
    $mysql = conexionMysql();
    $form="";
 
 
 	$fecha3 = date('Y-m-d');
     
 $nuevafecha3 = strtotime ( '+1 day' , strtotime ( $fecha3 ) ) ;
$fecha3 = date ( 'Y-m-d' , $nuevafecha3 );
  $sql = "SELECT sum(v.total),u.user,v.fecha FROM ventas v inner join usuarios u on v.idusuario=u.idusuarios where (v.fecha>'".$datos[0]."' and v.fecha<='".$fecha3."') and v.estado=1 group by date(v.fecha)";
	if($datos[0]<=$datos[1])
	{$fecha3=$datos[1];
    	$titulo="['x'";
		$meses="";
		$contar=0;
		$fechas[]="";
		$fecha2=$datos[0];
		$titulo.=",'".$fecha2."'";
			$meses.=",'".($contar+1)."'";
			$fechas[$contar]=$fecha2;
			$contar++;	
		while($fecha2<($fecha3))
		{
			
			
			$nuevafecha2 = strtotime ( '+1 day' , strtotime ( $fecha2 ) ) ;
			$fecha2 = date ( 'Y-m-d' , $nuevafecha2 );
			$titulo.=",'".$fecha2."'";
			$meses.=",'".($contar+1)."'";
			$fechas[$contar]=$fecha2;
			$contar++;			
			
		}
	}
    if($resultado = $mysql->query($sql))
    {
      
		
			if($resultado->num_rows>0)
			{
				$contar2=0;
				while($row= $fila = $resultado->fetch_row())
				{
						
						$reem=(round($row[0],5,5));
						//echo $reem.",";
						$meses=verificarDato($reem,$fechas,$contar,substr($row[2],0,10),$meses);
						
				}
				$meses=limpiarDato($reem,$fechas,$contar,"",$meses);
				echo "
							<script>
							chart.load({
									columns: [
										".$titulo."],
										['Sales'".$meses."]
												
											]
											
									});
							
							</script>
							";
			}
			else
			{
				$reem="";
				$meses=limpiarDato($reem,$fechas,$contar,"",$meses);
				echo "
							<script>
							chart.load({
									columns: [
										".$titulo."],
										['Sales'".$meses."]
												
											]
											
									});
							
							</script>
							";
			}
			
    $form .="<script>";
    $form .=" 
				
	";
	
    $form .="</script>";
        
    $resultado->free();    
    
    }
    else
    {   
    
    $form = "<div><script>console.log('$idedit');</script></div>";
    
    }
    
    
    $mysql->close();
    
    return printf($form);
}

function graficaVentasPie($datos)
{
	
	
		?>
        <script>
		var chart2 = c3.generate({
								bindto: '#chart2',
								data: {
									columns: [
										
									],
									type:"pie"
									,
										selection: {
													enabled: true
												  },
									onselected: function (d, element) 
									{ 
										cargarGrafico('2',d.id);
										cargarGrafico('3',d.id);
										
									 },
									 onunselected: function (d, element) 
									{ 
										cargarGrafico('2','');
										cargarGrafico('3','');
										
									 }
								},
								color: {
								  pattern: ['#61B045','#F7742C','#D4AE18','#F6921E','#9E1F63','#26A9E0','#8BC53F','#D6DE23']
								}/*,
								
								pie: {
									label: {
										format: function (value, ratio, id) {
											
											return "$"+currency(d3.format('')((value)));
										}
									}
								}*/,
								tooltip: {
									format: {
										value: function (value, id) {
											var format = d3.format('');
											return format(value);
										}
							
									}
								}
							});
					</script>
        
        <?php
		
		$mysql = conexionMysql();
    $form="";
 
 
 	$fecha3 = date('Y-m-d');
     
 $nuevafecha3 = strtotime ( '+1 day' , strtotime ( $fecha3 ) ) ;
$fecha3 = date ( 'Y-m-d' , $nuevafecha3 );
  $sql = "SELECT count(*),p.tipoRepuesto FROM ventas v  inner join ventasdetalle dv on dv.idventa=v.idventas inner join productos p on p.idproductos=dv.idproductos inner join usuarios u on v.idusuario=u.idusuarios where (v.fecha>'".$datos[0]."' and v.fecha<='".$fecha3."') and v.estado=1 and dv.estado=1 group by p.tipoRepuesto";
	if($datos[0]<=$datos[1])
	{	$meses="";
		
			
		
	
    if($resultado = $mysql->query($sql))
    {
      
		
			if($resultado->num_rows>0)
			{
				$contar2=0;
				while($row= $fila = $resultado->fetch_row())
				{
					if($row[1]=='1')
					{
						$titulo="Moto";
					}
					else
					if($row[1]=='2')
					{
						$titulo="Carro";
					}
					else
					
					{
						$titulo="No definido";
					}
					$meses.="['".(($titulo))."','".(round($row[0],5,2))."'],";
						
						
				}
				
				echo "
							<script>
							chart2.load({
									columns: [
										
										".substr($meses,0,strlen($meses)-1)."
												
											]
											
									});
							
							</script>
							";
			}
			else
			{
				
			}
			
    
        
    $resultado->free();    
    
    }
    else
    {   
    
    $form = "<div><script>console.log('$idedit');</script></div>";
    
    }
    
    }
    $mysql->close();
    
    return printf($form);
}


function buscarBestFive($datos)
{
	
$mas="";
$cod2=$datos[2];
				if($cod2=='Moto')
					{
						$titulo="=1";
					}
					else
					if($cod2=='Carro')
					{
						$titulo="=2";
					}
					else
					
					{
						$titulo=" is NULL";
					}
	if($cod2!='')
	{
		$mas="and p.tiporepuesto".$titulo."";
	}
	
$mysql = conexionMysql();
    $form="";
 
 
 	$fecha3 = date('Y-m-d');
     
 $nuevafecha3 = strtotime ( '+1 day' , strtotime ( $fecha3 ) ) ;
$fecha3 = date ( 'Y-m-d' , $nuevafecha3 );
    $sql = "SELECT sum(dv.subtotal),dv.cantidad,p.nombre,p.codigoproducto,p.tiporepuesto FROM ventas v  inner join ventasdetalle dv on dv.idventa=v.idventas inner join productos p on p.idproductos=dv.idproductos inner join usuarios u on v.idusuario=u.idusuarios where (v.fecha>'".$datos[0]."' and v.fecha<='".$fecha3."') and v.estado=1 and dv.estado=1 and p.estado=1 $mas group by p.idproductos order by sum(dv.subtotal) desc limit 5;";
	if($datos[0]<=$datos[1])
	{	$meses="";
		
			
		
	
    if($resultado = $mysql->query($sql))
    {
      
		$meses.="<table id='tabla' class='bordered centered highlight responsive-table centrarT'><thead><th>Producto</th><th>Codigo</th><th>Cantidad</th><th>Venta</th></thead><tbody>";
			if($resultado->num_rows>0)
			{
				$contar2=0;
				while($row= $fila = $resultado->fetch_row())
				{
					
					$meses.= "<tr><td>".$row[2]."</td><td>".$row[3]."</td><td>".$row[1]."</td><td>".toMoney($row[0])."</td></tr>";
						
						
				}
				
				echo "
							<script>
							document.getElementById('best5').innerHTML='';
							document.getElementById('best5').innerHTML='Top 5 Prodcutos mas vendidos<div style=\" float:right; margin-right:20px;\"><strong>".$cod2."</strong></div><br>".str_replace("'","\'",$meses)."</tbody></table>';
							
							</script>
							";
			}
			else
			{
				echo "
							<script>
							document.getElementById('best5').innerHTML='';
							document.getElementById('best5').innerHTML='Top 5 Prodcutos mas vendidos<div style=\" float:right; margin-right:20px;\"><strong>".$cod2."</strong></div><br>".str_replace("'","\'",$meses)."</tbody></table>';
							
							</script>
							";
			}
			
    
        
    $resultado->free();    
    
    }
    else
    {   
    
    $form = "<div><script>console.log('$idedit');</script></div>";
    
    }
    
    }
    $mysql->close();
    
    return printf($form);
				
				
}
function buscarBestFiveQ($datos)
{
	
$mas="";
$cod2=$datos[2];
				if($cod2=='Moto')
					{
						$titulo="=1";
					}
					else
					if($cod2=='Carro')
					{
						$titulo="=2";
					}
					else
					
					{
						$titulo=" is NULL";
					}
	if($cod2!='')
	{
		$mas="and p.tiporepuesto".$titulo."";
	}
	
$mysql = conexionMysql();
    $form="";
 
 
 	$fecha3 = date('Y-m-d');
     
 $nuevafecha3 = strtotime ( '+1 day' , strtotime ( $fecha3 ) ) ;
$fecha3 = date ( 'Y-m-d' , $nuevafecha3 );
    $sql = "SELECT sum(dv.subtotal),dv.cantidad,p.nombre,p.codigoproducto,p.tiporepuesto FROM ventas v  inner join ventasdetalle dv on dv.idventa=v.idventas inner join productos p on p.idproductos=dv.idproductos inner join usuarios u on v.idusuario=u.idusuarios where (v.fecha>'".$datos[0]."' and v.fecha<='".$fecha3."') and v.estado=1 and dv.estado=1 and p.estado=1 $mas group by p.idproductos order by dv.cantidad desc limit 5;";
	if($datos[0]<=$datos[1])
	{	$meses="";
		
			
		
	
    if($resultado = $mysql->query($sql))
    {
      
		$meses.="<table id='tabla' class='bordered centered highlight responsive-table centrarT'><thead><th>Producto</th><th>Codigo</th><th>Cantidad</th><th>Venta</th></thead><tbody>";
			if($resultado->num_rows>0)
			{
				$contar2=0;
				while($row= $fila = $resultado->fetch_row())
				{
					
					$meses.= "<tr><td>".$row[2]."</td><td>".$row[3]."</td><td>".$row[1]."</td><td>".toMoney($row[0])."</td></tr>";
						
						
				}
				
				echo "
							<script>
							document.getElementById('best5Q').innerHTML='';
							document.getElementById('best5Q').innerHTML='Top 5 Prodcutos mas solicitados<div style=\" float:right; margin-right:20px;\"><strong>".$cod2."</strong></div><br>".str_replace("'","\'",$meses)."</tbody></table>';
							
							</script>
							";
			}
			else
			{
				echo "
							<script>
							document.getElementById('best5Q').innerHTML='';
							document.getElementById('best5Q').innerHTML='Top 5 Prodcutos mas solicitados<div style=\" float:right; margin-right:20px;\"><strong>".$cod2."</strong></div><br>".str_replace("'","\'",$meses)."</tbody></table>';
							
							</script>
							";
			}
			
    
        
    $resultado->free();    
    
    }
    else
    {   
    
    $form = "<div><script>console.log('$idedit');</script></div>";
    
    }
    
    }
    $mysql->close();
    
    return printf($form);
				
				
}
function verificarDato($reem,$fechas,$contar,$fecha,$meses)
{
	for($i=1;$i<=$contar+1;$i++)
	{
		if($fecha==$fechas[$i-1])
		{
			$meses=str_replace(",'".$i."'",",'".$reem."'",$meses);
			break;
		}
		
	}
	return $meses;
}
function limpiarDato($reem,$fechas,$contar,$fecha,$meses)
{
	for($i=1;$i<$contar+1;$i++)
	{
			$meses=str_replace(",'".$i."'",",''",$meses);
		
		
	}
	return $meses;
}
?>