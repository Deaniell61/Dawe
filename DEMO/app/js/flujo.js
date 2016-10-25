
function limpiarCuerposModales()
{
	$('#cuerpoModal1').html("");
	$('#cuerpoModal2').html("");
	$('#cuerpoModal3').html("");
}

$('#modalVentas').click(function(){

limpiarCuerposModales();
   $('#modal1').openModal();
   filto='1';
   var  trasDato;
	trasDato = 16;
	
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/ventasControlador.php",
            data:' tipo=' +  filto + '&trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
                    
					
					 $('#cuerpoModal1').html(resp); 
					 
					 $('#tabla').DataTable( {

											info:     false,
										
										
										
											language: {
										
												search: "Buscar",
												sLengthMenu:" _MENU_ ",
										
												paginate:{
										
													previous: "Anterior",
													next: "Siguiente",
										
												},
										
											},
											/*
													   "scrollY":        "375px",
												"scrollCollapse": true,
												"paging":         true
												 */
										} );
										$('#tabla_length').material_select(); 

                }


            }     
        });
   

});


$('#modalAbonos').click(function(){

   $('#modal2').openModal();


});



$('#modalCompras').click(function(){
limpiarCuerposModales();
   $('#modal3').openModal();
   filto=1;
   var  trasDato;
	trasDato = 16;
	
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/comprasControlador.php",
            data:' tipo=' +  filto + '&trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
                    
					
					 $('#cuerpoModal3').html(resp); 
					 
					 $('#tabla').DataTable( {

											info:     false,
										
										
										
											language: {
										
												search: "Buscar",
												sLengthMenu:" _MENU_ ",
										
												paginate:{
										
													previous: "Anterior",
													next: "Siguiente",
										
												},
										
											},
											/*
													   "scrollY":        "375px",
												"scrollCollapse": true,
												"paging":         true
												 */
										} );
										$('#tabla_length').material_select(); 

                }


            }     
        });


});
$('#modalSueldos').click(function(){

   $('#modal4').openModal();


});
$('#modalCreditos').click(function(){

   $('#modal5').openModal();


});

$('#modalGastos').click(function(){

   $('#modal6').openModal();


});
