<?php

function graficoProductos($datos)
{
	
	$squery="select v.total,v. from ventasdetalle ";
	//echo $squery;
		?>
        <script>
							document.getElementById('PromD4').style.width = '50%';
							document.getElementById('PromO4').style.width = '50%';
							document.getElementById('PromTO4').style.width = '50%';
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
												format: d3.format("$")
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
								  pattern: ['#ff571c']
								},
								tooltip: {
									format: {
										value: function (value, id) {
											var format = d3.format('$');
											return format(value);
										}
							
									}
								}
							});
			/*var chart2 = c3.generate({
								bindto: '#PromD4',
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
												format: d3.format("$")
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
								  pattern: ['#ff571c']
								},
								tooltip: {
									format: {
										value: function (value, id) {
											var format = d3.format('$');
											return format(value);
										}
							
									}
								}
							});
			var chart3 = c3.generate({
								bindto: '#PromO4',
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
												format: d3.format("$")
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
								  pattern: ['#ff571c']
								},
								tooltip: {
									format: {
										value: function (value, id) {
											var format = d3.format('$');
											return format(value);
										}
							
									}
								}
							});
			var chart4 = c3.generate({
								bindto: '#PromTO4',
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
												format: d3.format("$")
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
								  pattern: ['#ff571c']
								},
								tooltip: {
									format: {
										value: function (value, id) {
											var format = d3.format('$');
											return format(value);
										}
							
									}
								}
							});
							
							*/
		
					</script>
        
        <?php
		$titulo="['x'";
		$meses="";
		$total=0;
		$contar=0;
		$fechas[]="";
		$fecha2=$nuevafecha;
		$titulo.=",'".$fecha2."'";
			$meses.=",'".($contar+1)."'";
			$fechas[$contar]=$fecha2;
			$contar++;	
		while($fecha2<($ayer))
		{
			
			
			$nuevafecha2 = strtotime ( '+1 day' , strtotime ( $fecha2 ) ) ;
			$fecha2 = date ( 'Y-m-d' , $nuevafecha2 );
			$titulo.=",'".$fecha2."'";
			$meses.=",'".($contar+1)."'";
			$fechas[$contar]=$fecha2;
			$contar++;			
			
		}
		
		if($ejecuta=mysqli_query(conexion($_SESSION['pais']),$squery))
		{
			if($ejecuta->num_rows>0)
			{
				$contar2=0;
				while($row=mysqli_fetch_array($ejecuta,MYSQLI_NUM))
				{
					
						//$titulo.=",'".substr($row[1],0,10)."'";
						
						$reem=(round($row[2],5,2));
						$meses=verificarDato($reem,$fechas,$contar,substr($row[1],0,10),$meses);
						$total=$total+round($row[2],10,2);
				}
				$meses=limpiarDato($reem,$fechas,$contar,"",$meses);
				echo "
							<script>
							document.getElementById('total').innerHTML='".$lang[$idioma]['TotalDiaGraf']." ".toMoney($total)."';
							chart.load({
									columns: [
										".$titulo."],
										['Sales'".$meses."]
												
											]
											
									});
							chart2.load({
									columns: [
										".$titulo."],
										['Sales'".$meses."]
												
											]
											
									});
							chart3.load({
									columns: [
										".$titulo."],
										['Sales'".$meses."]
												
											]
											
									});
							chart4.load({
									columns: [
										".$titulo."],
										['Sales'".$meses."]
												
											]
											
									});
							document.getElementById('PromD4').style.width = '59%';
							document.getElementById('PromO4').style.width = '59%';
							document.getElementById('PromTO4').style.width = '59%';
							document.getElementById('total').innerHTML='".$lang[$idioma]['TotalDiaGraf']." ".toMoney($total)."';
							setTimeout(function(){document.getElementById('chart').style.position='absolute';},200);
							</script>
							";
			}
			else
			{
				echo "
							<script>
							document.getElementById('PromD4').style.width = '59%';
							document.getElementById('PromO4').style.width = '59%';
							document.getElementById('PromTO4').style.width = '59%';
							document.getElementById('total').innerHTML='".$lang[$idioma]['TotalDiaGraf']." ".toMoney($total)."';
							setTimeout(function(){document.getElementById('chart').style.position='absolute';},200);
							
							</script>
							";
			}
			mysqli_close(conexion($_SESSION['pais']));
			
		}
}

function buscarGraficoPie($codigo,$fecha,$nuevafecha,$ayer)
{
	
	$squery="select orderid, timoford, sum(grandtotal), orderunits, ordsou, tranum,codorden,shifee,(grandtotal),shicar from tra_ord_enc where (timoford <= '".$fecha."' and timoford >= '".$nuevafecha."') group by ordsou order by ordsou ";
	//echo $squery;
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
										
										cargarGrafico('3',document.getElementById('filtro').value,'<?php echo $_SESSION['codprov'];?>',d.id);
										cargarGrafico('4',document.getElementById('filtro').value,'<?php echo $_SESSION['codprov'];?>',d.id);
									 },
									 onunselected: function (d, element) 
									{ 
										
										cargarGrafico('3',document.getElementById('filtro').value,'<?php echo $_SESSION['codprov'];?>','');
										cargarGrafico('4',document.getElementById('filtro').value,'<?php echo $_SESSION['codprov'];?>','');
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
											var format = d3.format('$');
											return format(value);
										}
							
									}
								}
							});
					</script>
        
        <?php
		
		$meses="";
		
		$total=0;
		
		
		if($ejecuta=mysqli_query(conexion($_SESSION['pais']),$squery))
		{
			if($ejecuta->num_rows>0)
			{
				$contar2=0;
				while($row=mysqli_fetch_array($ejecuta,MYSQLI_NUM))
				{
					
						
						$meses.="['".(($row[4]))."','".(round($row[2],5,2))."'],";
						
						$total=$total+round($row[2],10,2);
				}
				
				echo "
							<script>
							/*document.getElementById('total').innerHTML='Grand Total Sales: ".toMoney($total)."';*/
							chart2.load({
									columns: [
										
										".substr($meses,0,strlen($meses)-1)."
												
											]
											
									});
								setTimeout(function(){document.getElementById('chart').style.position='absolute';},200);
								
							</script>
							";
			}
			else
			{
				echo "
							<script>
							
							setTimeout(function(){document.getElementById('chart').style.position='absolute';},200);
							
							</script>
							";
			}
			mysqli_close(conexion($_SESSION['pais']));
			
		}
}

function buscarBestFive($codigo,$fecha,$nuevafecha,$ayer,$cod2)
{
	$idioma=idioma();
include('../idiomas/'.$idioma.'.php');
$mas="";
	if($cod2!='')
	{
		$mas="and en.ordsou='".$cod2."'";
	}
	$squery="select sum(en.grandtotal), tr.prodname,sum(de.qty),de.productid from tra_ord_enc en inner join tra_ord_det de on de.codorden=en.codorden inner join tra_bun_det tr on (tr.amazonsku=de.productid or tr.mastersku=de.productid) and tr.prodname IS NOT NULL where (en.timoford <= '".$fecha."' and en.timoford >= '".$nuevafecha."') $mas group by de.productid order by sum(qty) desc limit 5;";
	//echo $squery;
	 
		?>
                
        <?php
		
		$meses="";
		
		$total=0;
		
		
		if($ejecuta=mysqli_query(conexion($_SESSION['pais']),$squery))
		{
			if($ejecuta->num_rows>0)
			{
				$meses.="<table id=\"tablas\" style=\"font-size:12px;width:550px;\"  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"hover tablas table\"><thead><th>".$lang[$idioma]['Nombre']."</th><th>".$lang[$idioma]['amazonSKU']."</th><th>".$lang[$idioma]['cantidadDespacho']."</th><th>".$lang[$idioma]['Sale']."</th></thead><tbody>";
				while($row=mysqli_fetch_array($ejecuta,MYSQLI_NUM))
				{
					
						
						$meses.= "<tr><td>".$row[1]."</td><td>".$row[3]."</td><td>".$row[2]."</td><td>".toMoney($row[0])."</td></tr>";
						
						$total=$total+round($row[0],10,2);
				}
				
				echo "
							<script>
							document.getElementById('best5').innerHTML='';
							document.getElementById('best5').innerHTML='".$lang[$idioma]['Top5Unit']." <div style=\" float:right; margin-right:20px;\"><strong>".$cod2."</strong></div><br>".str_replace("'","\'",$meses)."</tbody></table>';
							setTimeout(function(){document.getElementById('chart').style.position='absolute';},200);
							setTimeout(function(){\$('#cargaLoadG').dialog('close');},500);
							</script>
							";
			}
			else
			{
				echo "
							<script>
							document.getElementById('best5').innerHTML='';
							document.getElementById('best5').innerHTML='".$lang[$idioma]['Top5Unit']." <div style=\" float:right; margin-right:20px;\"><strong>".$cod2."</strong></div><br>".str_replace("'","\'",$meses)."</tbody></table>';
							setTimeout(function(){document.getElementById('chart').style.position='absolute';},200);
							setTimeout(function(){\$('#cargaLoadG').dialog('close');},500);
							</script>
							";
			}
			mysqli_close(conexion($_SESSION['pais']));
			
		}
}
function buscarBestFiveDolar($codigo,$fecha,$nuevafecha,$ayer,$cod2)
{
	$idioma=idioma();
include('../idiomas/'.$idioma.'.php');
$mas="";
	if($cod2!='')
	{
		$mas="and en.ordsou='".$cod2."'";
	}
	$squery="select sum(en.grandtotal), tr.prodname,sum(de.qty),de.productid from tra_ord_enc en inner join tra_ord_det de on de.codorden=en.codorden inner join tra_bun_det tr on (tr.amazonsku=de.productid or tr.mastersku=de.productid) and tr.prodname IS NOT NULL where (en.timoford <= '".$fecha."' and en.timoford >= '".$nuevafecha."') $mas group by de.productid order by sum(en.grandtotal) desc limit 5;";
	
	 //echo $squery;
		?>
                
        <?php
		
		$meses="";
		
		$total=0;
		
		
		if($ejecuta=mysqli_query(conexion($_SESSION['pais']),$squery))
		{
			if($ejecuta->num_rows>0)
			{
				$meses.="<table id=\"tablas\" style=\"font-size:12px;width:550px;\"  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"hover tablas table\"><thead><th>".$lang[$idioma]['Nombre']."</th><th>".$lang[$idioma]['amazonSKU']."</th><th>".$lang[$idioma]['cantidadDespacho']."</th><th>".$lang[$idioma]['Sale']."</th></thead><tbody>";
				$contar2=0;
				
				while($row=mysqli_fetch_array($ejecuta,MYSQLI_NUM))
				{
					
						
						$meses.= "<tr><td>".$row[1]."</td><td>".$row[3]."</td><td>".$row[2]."</td><td>".toMoney($row[0])."</td></tr>";
						
						
				}
				
				echo "
							<script>
							document.getElementById('best5D').innerHTML='';
							document.getElementById('best5D').innerHTML='".$lang[$idioma]['Top5Dol']." <div style=\" float:right; margin-right:20px;\"><strong>".$cod2."</strong></div><br>".str_replace("'","\'",$meses)."</tbody></table>';
							setTimeout(function(){document.getElementById('chart').style.position='absolute';},200);
							setTimeout(function(){\$('#cargaLoadG').dialog('close');},500);
							
							</script>
							";
			}
			else
			{
				echo "
							<script>
							
							document.getElementById('best5D').innerHTML='';
							document.getElementById('best5D').innerHTML='".$lang[$idioma]['Top5Dol']." <div style=\" float:right; margin-right:20px;\"><strong>".$cod2."</strong></div><br>".$meses."</tbody></table>';
							setTimeout(function(){document.getElementById('chart').style.position='absolute';},200);
							setTimeout(function(){\$('#cargaLoadG').dialog('close');},500);
							</script>
							";
			}
			mysqli_close(conexion($_SESSION['pais']));
			
		}
}

function buscarAveSales($codigo,$fecha,$nuevafecha,$ayer,$cod2)
{
	$idioma=idioma();
include('../idiomas/'.$idioma.'.php');
$mas="";
	if($cod2!='')
	{
		$mas="and en.ordsou='".$cod2."'";
	}
	$squery="select sum(en.grandtotal), tr.prodname,sum(de.qty),de.productid from tra_ord_enc en inner join tra_ord_det de on de.codorden=en.codorden inner join tra_bun_det tr on (tr.amazonsku=de.productid or tr.mastersku=de.productid) and tr.prodname IS NOT NULL where (en.timoford <= '".$fecha."' and en.timoford >= '".$nuevafecha."') $mas group by de.productid order by sum(qty) desc limit 5;";
	//echo $squery;
	 
		?>
                
        <?php
		
		$meses="";
		
		$total=0;
		
		
		if($ejecuta=mysqli_query(conexion($_SESSION['pais']),$squery))
		{
			if($ejecuta->num_rows>0)
			{
				$meses.="<table id=\"tablas\" style=\"font-size:12px;width:550px;\"  border=\"0\" cellspacing=\"0\" cellpadding=\"0\" class=\"hover tablas table\"><thead><th>".$lang[$idioma]['Nombre']."</th><th>".$lang[$idioma]['amazonSKU']."</th><th>".$lang[$idioma]['cantidadDespacho']."</th><th>".$lang[$idioma]['Sale']."</th></thead><tbody>";
				while($row=mysqli_fetch_array($ejecuta,MYSQLI_NUM))
				{
					
						
						$meses.= "<tr><td>".$row[1]."</td><td>".$row[3]."</td><td>".$row[2]."</td><td>".toMoney($row[0])."</td></tr>";
						
						$total=$total+round($row[0],10,2);
				}
				
				echo "
							<script>
							document.getElementById('best5').innerHTML='';
							document.getElementById('best5').innerHTML='".$lang[$idioma]['Top5Unit']." <div style=\" float:right; margin-right:20px;\"><strong>".$cod2."</strong></div><br>".str_replace("'","\'",$meses)."</tbody></table>';
							setTimeout(function(){\$('#cargaLoadG').dialog('close');},500);
							</script>
							";
			}
			else
			{
				echo "
							<script>
							document.getElementById('best5').innerHTML='';
							document.getElementById('best5').innerHTML='".$lang[$idioma]['Top5Unit']." <div style=\" float:right; margin-right:20px;\"><strong>".$cod2."</strong></div><br>".str_replace("'","\'",$meses)."</tbody></table>';
							setTimeout(function(){\$('#cargaLoadG').dialog('close');},500);
							</script>
							";
			}
			mysqli_close(conexion($_SESSION['pais']));
			
		}
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