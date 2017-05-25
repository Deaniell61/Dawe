<?php


function mostrarCorteCaja($dato)
{
	

    $mysql = conexionMysql();
    $form=array();
    $sqlCaja = "select fecha,saldo from caja order by fecha desc limit 1";

    if($resultadoCaja = $mysql->query($sqlCaja))
    {
      if($resultadoCaja->num_rows>0)
	  {
		  if($caja = $resultadoCaja->fetch_row())
		  {
			  $form['estatus']=1;
			  $form['saldoAnt']=toMoney($caja[1]);
			  	$fechaF = date('Y-m-d H:i:s');
				$fechaI = substr($caja[0],0,10);
				$nuevafecha3 = strtotime ( '+1 day' , strtotime ( $fechaI ) ) ;
				//$fechaI = date ( 'Y-m-d' , $nuevafecha3 );
			$sqlVentas = "select sum(total) from ventas where (fecha>'".$fechaI." 00:00:01' and fecha<='".$fechaF." 23:59:59') and estado=1 and tipoventa=1";
			$form['fechaI']=$fechaI;
			$form['fechaF']=$fechaF;
			if($resultadoVentas = $mysql->query($sqlVentas))
			{
				if($resultadoVentas->num_rows>0)
				{
					if($Ventas = $resultadoVentas->fetch_row())
					{
						if($Ventas[0]==NULL){
							$form['ventas']=toMoney(0);
						}else{
						$form['ventas']=toMoney($Ventas[0]);
						}
					}
					$resultadoVentas->free();    
				}else{
					$form['ventas']=0;
				}
		  	
			
			}

			$sqlVentasC = "select sum(total) from ventas where (fecha>'".$fechaI." 00:00:01' and fecha<='".$fechaF." 23:59:59') and estado=1 and tipoventa=2";

			if($resultadoVentasC = $mysql->query($sqlVentasC))
			{
				if($resultadoVentasC->num_rows>0)
				{
					if($VentasC = $resultadoVentasC->fetch_row())
					{
						if($VentasC[0]==NULL){
							$form['ventasC']=toMoney(0);
						}else{
						$form['ventasC']=toMoney($VentasC[0]);
						}
					}
					$resultadoVentasC->free();    
				}else{
					$form['ventasC']=0;
				}
		  	
			
			}

			$sqlAbonos = "select sum(abono) from movimientosc where (fecha>'".$fechaI." 00:00:01' and fecha<='".$fechaF." 23:59:59')";

			if($resultadoAbonos = $mysql->query($sqlAbonos))
			{
				if($resultadoAbonos->num_rows>0)
				{
					if($Abonos = $resultadoAbonos->fetch_row())
					{
						if($Abonos[0]==NULL){
							$form['abonos']=toMoney(0);
						}else{
						$form['abonos']=toMoney($Abonos[0]);
						}
					}
					$resultadoAbonos->free();    
				}else{
					$form['abonos']=0;
				}
		  	
			
			}

			$sqlGastos = "select sum(monto) from gastos where (fecha>'".$fechaI." 00:00:01' and fecha<='".$fechaF." 23:59:59')";

			if($resultadoGastos = $mysql->query($sqlGastos))
			{
				if($resultadoGastos->num_rows>0)
				{
					if($Gastos = $resultadoGastos->fetch_row())
					{
						if($Gastos[0]==NULL){
							$form['Gastos']=toMoney(0);
						}else{
						$form['Gastos']=toMoney($Gastos[0]);
						}
					}
					$resultadoGastos->free();    
				}else{
					$form['Gastos']=0;
				}
		  	
			
			}
		  }
		$resultadoCaja->free();
	  }
	  else
	  {
		$form['estatus']=0;
	  }
	      
    
    }
    else
    {   
    
    $form['estatus']="no se pudo ";
    
    }
    
    
    $mysql->close();
    
    echo json_encode($form);
    
}

function ingresarCorteCaja($dato)
{
	

    $mysql = conexionMysql();
    $form=array();
    
	$fechaF = $dato[2];
	$fechaI = $dato[1];
	$saldo = $dato[3];
	$saldoAnt = $dato[5];
	$descripcion = $dato[4];
	$sqlCajaIns = "insert into caja(fecha,descripcion,saldo,estado,saldoAnt,saldoAct) values('".$fechaF."','".$descripcion."','".$saldo."',1,'".$saldoAnt."','".$saldo."');";			
    $mysql->query("BEGIN");
	if($resultadoCaja = $mysql->query($sqlCajaIns))
    {
	$sqlCaja = "select idcaja from caja order by idcaja desc limit 1";			
    if($resultadoCaja = $mysql->query($sqlCaja))	
	  {
		  if($caja = $resultadoCaja->fetch_row())
		  {
			  $form['estatus']=1;
			  $id=$caja[0];
			  	
			$sqlVentas = "select total,idventas from ventas where (fecha>'".$fechaI." 00:00:01' and fecha<='".$fechaF." 23:59:59') and estado=1 and tipoventa=1";
			if($resultadoVentas = $mysql->query($sqlVentas))
			{
				if($resultadoVentas->num_rows>0)
				{
					while($Ventas = $resultadoVentas->fetch_row())
					{
						if($Ventas[0]==NULL){
							$CajaIns="insert into detalleCaja(entrada,idventa,estado,idcaja) values(0,'".$Ventas[1]."',1,'".$id."')";
							$mysql->query($CajaIns);
						
						}else{
							$CajaIns="insert into detalleCaja(entrada,idventa,estado,idcaja) values('".$Ventas[0]."','".$Ventas[1]."',1,'".$id."')";
							$mysql->query($CajaIns);
						
						}
					}
					$resultadoVentas->free();    
				}else{
					$form['ventas']=0;
				}
		  	
			
			}

			$sqlVentasC = "select total,idcuentasc from cuentascobrar where (fecha>'".$fechaI." 00:00:01' and fecha<='".$fechaF." 23:59:59') and estado=1";

			if($resultadoVentasC = $mysql->query($sqlVentasC))
			{
				if($resultadoVentasC->num_rows>0)
				{
					while($VentasC = $resultadoVentasC->fetch_row())
					{
						if($VentasC[0]==NULL){
							$CajaIns="insert into detalleCaja(entrada,idcuentaC,estado,idcaja) values(0,'".$VentasC[1]."',1,'".$id."')";
							$mysql->query($CajaIns);
						}else{
							$CajaIns="insert into detalleCaja(entrada,idcuentaC,estado,idcaja) values('".$VentasC[0]."','".$VentasC[1]."',1,'".$id."')";
							$mysql->query($CajaIns);
						}
					}
					$resultadoVentasC->free();    
				}else{
					$form['ventasC']=0;
				}
		  	
			
			}

			$sqlAbonos = "select abono,idmovimientoc from movimientosc where (fecha>'".$fechaI." 00:00:01' and fecha<='".$fechaF." 23:59:59')";

			if($resultadoAbonos = $mysql->query($sqlAbonos))
			{
				if($resultadoAbonos->num_rows>0)
				{
					if($Abonos = $resultadoAbonos->fetch_row())
					{
						if($Abonos[0]==NULL){
							$CajaIns="insert into detalleCaja(entrada,idabono,estado,idcaja) values(0,'".$Abonos[1]."',1,'".$id."')";
							$mysql->query($CajaIns);
						}else{
							$CajaIns="insert into detalleCaja(entrada,idabono,estado,idcaja) values('".$Abonos[0]."','".$Abonos[1]."',1,'".$id."')";
							$mysql->query($CajaIns);
						}
					}
					$resultadoAbonos->free();    
				}else{
					$form['abonos']=0;
				}
		  	
			
			}

			$sqlGastos = "select monto,idgastos from gastos where (fecha>'".$fechaI." 00:00:01' and fecha<='".$fechaF." 23:59:59') and estado=1";

			if($resultadoGastos = $mysql->query($sqlGastos))
			{
				if($resultadoGastos->num_rows>0)
				{
					if($Gastos = $resultadoGastos->fetch_row())
					{
						if($Gastos[0]==NULL){
							$CajaIns="insert into detalleCaja(salida,idgasto,estado,idcaja) values(0,'".$Gastos[1]."',1,'".$id."')";
							$mysql->query($CajaIns);
						}else{
							$CajaIns="insert into detalleCaja(salida,idgasto,estado,idcaja) values('".$Gastos[0]."','".$Gastos[1]."',1,'".$id."')";
							$mysql->query($CajaIns);
						}
					}
					$resultadoGastos->free();    
				}else{
					$form['Gastos']=0;
				}
		  	
			
			}
		  }
		$resultadoCaja->free();
		$mysql->query("COMMIT");
	  }
	  else
	  {
		$form['estatus']=0;
	  }
	      
    
    }
    else
    {   
    
    $form['estatus']="no se pudo ";
    
    }
    
    
    $mysql->close();
    
    echo json_encode($form);
    
}

function editarCaja($dato)
{
	

    $mysql = conexionMysql();
    $form="";
     $sql = "SELECT idcaja,fecha,saldoAct,descripcion FROM caja where estado=1 and idcaja='".$dato['0']."' ";

    if($resultado = $mysql->query($sql))
    {
      if($resultado->num_rows>0)
	  {
		  if($fila = $resultado->fetch_row())
		  {
		  	$form .="<script>";
			$form .="document.getElementById('codigo').disabled=false;document.getElementById('codigo').value='".$fila[0]."';document.getElementById('codigo').focus();document.getElementById('codigo').disabled=true;";
			$form .="document.getElementById('fechaCorte').disabled=false;document.getElementById('fechaCorte').value='".$fila[1]."';document.getElementById('fechaCorte').focus();document.getElementById('fechaCorte').disabled=true;";
			$form .="document.getElementById('totalCorte').disabled=false;document.getElementById('totalCorte').value='".toMoney($fila[2])."';document.getElementById('totalCorte').focus();document.getElementById('totalCorte').disabled=true;";
			$form .="document.getElementById('descripcion').disabled=false;document.getElementById('descripcion').value='".$fila[3]."';document.getElementById('descripcion').focus();document.getElementById('descripcion').disabled=true;";
			$form .="cargarDepositos('".$fila[0]."');";
			$form .="</script>";
			
		}
		$resultado->free();    
	  }
	  else
	  {
		$form .="<script>";
			$form .="document.getElementById('productosContenedor').hidden=true;";
			$form .="</script>";
	  }
    
    }
    else
    {   
    
    $form = "<div>$sql<script>console.log('".$dato[0]."');</script></div>";
    
    }
    
    
    $mysql->close();
    
    echo ($form);
    
}



function ingresoDeposito($dato)
{
	

    $mysql = conexionMysql();
    $form="";
     $sql = "insert into deposito(fecha,comprobante,nocuenta,banco,monto,idcaja,estado) values('".$dato['1']."','".$dato['2']."','".$dato['3']."','".$dato['4']."','".$dato['5']."','".$dato['0']."',1); ";

    if($resultado = $mysql->query($sql))
    {
		$sql2 = "update caja set saldo=saldo-".$dato['5']." where idcaja='".$dato['0']."'; ";

		if($resultado2 = $mysql->query($sql2))
		{
			$form .="<script>";
			$form .="location.reload();";
			$form .="</script>";
		}
    
    }
    else
    {   
    
    	$form = "<div>$sql</div>";
    
    }
    
    
    $mysql->close();
    
    echo ($form);
    
}

function  datosImpresionCaja($dato)
{
    

    $mysql = conexionMysql();
    $form=array();
	
	$form['caja']['ingresos'] = 0;
	$form['caja']['egresos'] = 0;
	$form['caja']['totales'] = 0;
	
    $sqlCaja = "SELECT sum(entrada) as total FROM detalleCaja WHERE idventa>0 and idcaja='".$dato[0]."' ";
 	//echo $sql;
	 
    if($resultadoCaja = $mysql->query($sqlCaja))
    {
      if($resultadoCaja->num_rows>0)
	  {
		  $form['estatus']=1;
		  
		  if($filaCaja = $resultadoCaja->fetch_row())
		  {
			if($filaCaja[0]==NULL){
			$form['caja']['ventas'] = '0';
			  }else{
			$form['caja']['ventas'] = $filaCaja[0];
			  }

			}
		$resultadoCaja->free();    
	  }
	  else
	  {
		$form['estatus']=0;
	  }
    
    }
    else
    {   
    
    	$form['estatus']=0;
    
    }

	$sqlCaja = "SELECT sum(entrada) as total FROM detalleCaja WHERE idabono>0 and idcaja='".$dato[0]."' ";
 	//echo $sql;
	 
    if($resultadoCaja = $mysql->query($sqlCaja))
    {
      if($resultadoCaja->num_rows>0)
	  {
		  $form['estatus']=1;
		  
		  if($filaCaja = $resultadoCaja->fetch_row())
		  {
			  if($filaCaja[0]==NULL){
			$form['caja']['abonos'] = '0';
			  }else{
			$form['caja']['abonos'] = $filaCaja[0];
			  }
			}
		$resultadoCaja->free();    
	  }
	  else
	  {
		$form['estatus']=0;
	  }
    
    }
    else
    {   
    
    	$form['estatus']=0;
    
    }

	$sqlCaja = "SELECT sum(entrada) as total FROM detalleCaja WHERE idgasto>0 and idcaja='".$dato[0]."' ";
 	//echo $sql;
	 
    if($resultadoCaja = $mysql->query($sqlCaja))
    {
      if($resultadoCaja->num_rows>0)
	  {
		  $form['estatus']=1;
		  
		  if($filaCaja = $resultadoCaja->fetch_row())
		  {
			if($filaCaja[0]==NULL){
			$form['caja']['gastos'] = '0';
			  }else{
			$form['caja']['gastos'] = $filaCaja[0];
			  }

			}
		$resultadoCaja->free();    
	  }
	  else
	  {
		$form['estatus']=0;
	  }
    
    }
    else
    {   
    
    	$form['estatus']=0;
    
    }

	$sqlCaja = "SELECT saldoAct,saldoAnt,fecha as total,saldo FROM caja WHERE idcaja='".$dato[0]."' ";
 	//echo $sql;
	 
    if($resultadoCaja = $mysql->query($sqlCaja))
    {
      if($resultadoCaja->num_rows>0)
	  {
		  $form['estatus']=1;
		  
		  if($filaCaja = $resultadoCaja->fetch_row())
		  {
			if($filaCaja[0]==NULL){
			$form['caja']['saldo'] = '0';
			  }else{
			$form['caja']['saldo'] = $filaCaja[0];
			  }

			if($filaCaja[1]==NULL){
			$form['caja']['saldoAnt'] = '0';
			  }else{
			$form['caja']['saldoAnt'] = $filaCaja[1];
			  }
			if($filaCaja[0]==NULL){
			$form['caja']['saldoPC'] = '0';
			  }else{
			$form['caja']['saldoPC'] = saldoCorte($filaCaja[2],$filaCaja[3]);
			  }
			

			}
		$resultadoCaja->free();    
	  }
	  else
	  {
		$form['estatus']=0;
	  }
    
    }
    else
    {   
    
    	$form['estatus']=0;
    
    }


	$form['caja']['ingresos'] = floatval($form['caja']['abonos'])+floatval($form['caja']['ventas']);
	$form['caja']['egresos'] = floatval($form['caja']['gastos'])+floatval($form['caja']['saldoAnt']);
	$form['caja']['totales'] = $form['caja']['saldo'];

	$sqlDetalleCaja = "SELECT fecha,comprobante,nocuenta,banco,monto FROM deposito WHERE idcaja='".$dato[0]."' ";
 	//echo $sql;
	$form['total'] = 0;
	$form['DetalleCaja'][0] = array();
    if($resultadoDetalleCaja = $mysql->query($sqlDetalleCaja))
    {
      if($resultadoDetalleCaja->num_rows>0)
	  {
		  $form['estatus']=1;
		   $i=0;
		   
		 $form['estatus']=$sqlDetalleCaja;
		  while($filaDetalleCaja = $resultadoDetalleCaja->fetch_assoc())
		  {
		  	$form['DetalleCaja'][$i] = $filaDetalleCaja;
			$form['total'] += $filaDetalleCaja['monto'];
			$i++;
		}
		$resultadoDetalleCaja->free();    
	  }
	  else
	  {
		$form['estatus']=0;
	  }
    
    }
    else
    {   
    
    $form['estatus']=0;
    
    }
	//$form['caja']['egresos']+=$form['total'];
	$form['estatus']=$sqlDetalleCaja;
    $mysql->close();
    
    echo json_encode($form);
    
}

function eliminaCaja($dato){
	$mysql = conexionMysql();
    $form="";
     $sql = "update deposito set estado=0 where iddeposito='".$dato['0']."'; ";

    if($resultado = $mysql->query($sql))
    {
		$sql2 = "update caja set saldo=saldo+(select monto from deposito where iddeposito='".$dato['0']."') where idcaja='".$dato['1']."'; ";

			if($resultado2 = $mysql->query($sql2))
			{
				//$form .=$sql.$sql2;
				$form .="<script>";
				$form .="location.reload();";
				$form .="</script>";
			}
    
    }
    else
    {   
    
    	$form = "<div>$sql</div>";
    
    }
    
    
    $mysql->close();
    
    echo ($form);
}
?>