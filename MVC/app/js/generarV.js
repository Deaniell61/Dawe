//************************** globales *********************
var gobIDElim,gobIDEdit;
var passHabilita=0;
//**************************************************
//*************************Iniciales
/*$('#contenidoCrud').mouseenter(function(){
    document.getElementById('formUser').reset();
});
*/
//***********************************
//************************** tabla ***********************
$('#tabla2').DataTable( {

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


$('#tabla2').DataTable( {

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


$('#tipoPlazo').material_select(); 

//*********************************************************

//*************** modal ***********************************
$('#modalnuevo').click(function(){
    $('#btnActualizar').hide();
    $('#btnInsertar').show();
    $('#modal1').openModal();
});


$('.modaleliminar').click(function(){

    event.preventDefault();

    gobIDElim = event.target.dataset.elim;

    $('#modal3').openModal();

});




$(".dropdown-button").dropdown();




$('#modalcerrar1').click(function(){
	

	
});




//*********************************************************




//comprobaciones
function buscarCliente(buscar,evt)
{
	if(evt.keyCode=='13' && buscar.value=="")
	{
		
		$('#modal4').openModal();
		llamarCliente();
	}
	else
	if(buscar.value=="")
	{
		
	}
	else
	if(evt.keyCode=='13')
	{
		buscarNIT(buscar.value)
	}
	
	
}
function anularDetalleVenta1(id)
{
	var  trasDato;
	trasDato = 14;

        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/ventasControlador.php",
            data:' id=' +  id + '&trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
					
                    
					
					 $('#mensajeVV').html(resp); 

                }


            }     
        });
}
function quitaInvetario()
{
	cont=0;
	var real=1;
	while(document.getElementById('Cantidad'+cont))
	{
		cantidad=(document.getElementById('Cantidad'+cont).innerHTML);
		codigo=(document.getElementById('Codigo'+cont).innerHTML);
		var  cantidad,trasDato;
		trasDato = 13;
		
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/ventasControlador.php",
            data:' codigo=' +  codigo + '&cantidad=' + cantidad + '&trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {

					real=0;
                    alert('Algo salio mal');
					
                }
                else
                {
				
                    real=1;
					
					 $('#mensaje').html(resp);
					  

                }


            } 
        });
		
		
		cont++;
	}

	if(real==1)
	{
		
		window.location.href="Ventas.php";
	}
	
}
function seleccionaMarca(mc)
{
	document.getElementById('marca').value=mc;
	document.getElementById('listaMarca').hidden=false;
	
}
function comprobarCredito(obj)
{
	
	if(obj.value=='2')
	{
		$('#cuentasContenedor').show();
	}
	else
	{
		$('#cuentasContenedor').hide();
	}
}
function limpiarProducto()
{
	$('#codigo').val('');
	$('#nombreC').val('');
	$('#Producto').val('');
	$('#descripcion').val('');
	$('#tipoRepuesto').val('');
	$('#marca').val('');
	$('#Cantidad').val('');
	
	$('#precioG').val('');
	$('#precioE').val(''); 
	$('#agregarProd').show();
	$('#nombreC').focus();
	$('#precioM').val(''); 
	document.getElementById('retoCompra').hidden=true;
	
}


function buscarCliente2(buscar)
{
	if(buscar.value=="")
	{
		$('#modal4').openModal();
		llamarCliente();
	}
	else
	{
		buscarNIT(buscar.value)
	}
	
	
}

function buscarNIT(nit)
{
	 var  trasDato;
	trasDato = 1;
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/VentasControlador.php",
            data:' nit=' +  nit + '&trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
                    
					
					 $('#mensajeVV').html(resp); 

                }


            }     
        });
}
function iniciarVenta(id)
{
	 var  trasDato;
	trasDato = 2;
	tipo=document.getElementById('tipoVenta').value;
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/VentasControlador.php",
            data:' prov=' +  id + '&tipo=' + tipo + '&trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
					
                    
					
					 $('#mensajeVV').html(resp); 

                }


            }     
        });
}
function verificaProductoCompra()
{
	
	if(document.getElementById('codigoProd').value!="")
	{
		ingresoCompra(document.getElementById('codigoProd').value);
	}
	else
	{

		$('#productoNom').focus();
		
	}
}
function ingresoVenta(prod)
{
	
	var  cantidad,trasDato;
	trasDato = 3;
		cantidad=$('#Cantidad').val();
		precioG=$('#precioG').val();
		precioE=$('#precioE').val();
		precioM=$('#precioM').val();
		
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/ventasControlador.php",
            data:' prod=' +  prod + '&cantidad=' + cantidad + '&precioG=' + precioG + '&precioE=' + precioE + '&precioM=' + precioM + '&trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
					
                    
					
					 $('#mensaje').html(resp);
					  

                }


            }     
        });
}
function guardarCompra()
{
	var  trasDato;
	trasDato = 4;
		
       $.ajax ({
            type:"POST",
            url:"../core/controlador/VentasControlador.php",
            data:'trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
					
                    
					
					 $('#mensaje').html(resp); 

                }


            }     
        });
}
function cargarDetalleVentas(id)
{
	var  trasDato;
	trasDato = 5;
		
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/VentasControlador.php",
            data:' id=' +  id + '&trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
					
                    
					
					 $('#resumenC').html(resp);
					  

                }


            }     
        });
}
function llamarCliente()
{
	
	$.ajax
        ({
            type:"POST",
            url:"Clientes.php",
            success: function(resp)
            {
				$('#ClienteContenedor').html(resp);
            }    
        });
}

function llamarProducto()
{
	
		
		$('#modal5').openModal();
		$.ajax
        ({
            type:"POST",
            url:"Productos.php",
			data:' id=1',
            success: function(resp)
            {
				$('#productoContenedor').html(resp);
            }    
        });
	
	
}
function buscaProductoVenta(obj)
{
	var prod=obj.value;
	var  trasDato;
	trasDato = 6;
		
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/ventasControlador.php",
            data:' prod=' +  prod + '&trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
					
                    
					
					 $('#productosVenta').html(resp);
					  

                }


            }     
        });
	
	
}
function buscaMarca(obj)
{
	var prod=obj.value;
	var  trasDato;
	trasDato = 11;
		
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/VentasControlador.php",
            data:' id=' +  prod + '&trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
					
                    
					
					 $('#listaMarca').html(resp);
					  

                }


            }     
        });
	
	
}
function seleccionaProductoVenta(codprod)
{
	var prod=codprod;
	var  trasDato;
	trasDato = 7;
		
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/ventasControlador.php",
            data:' prod=' +  prod + '&trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
					
                    
					
					 $('#mensajeV1').html(resp);
					  

                }


            }     
        });
}

function cambiarTipo(tipo,id)
{
	
	var  trasDato;
	trasDato = 9;
		//alert(2);
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/VentasControlador.php",
            data:' tipo=' +  tipo + '&id=' + id + '&trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
					
                   
					
					 $('#mensajeC').html(resp);
					  

                }


            }     
        });
}
function agregarFacturaVenta(tipo,id)
{
	
	var  trasDato;
	trasDato = 12;
		//alert(2);
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/VentasControlador.php",
            data:' tipo=' +  tipo + '&id=' + id + '&trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
					
                   
					
					 $('#mensajeC').html(resp);
					  

                }


            }     
        });
}

function cambiarTipoProd(tipo,id)
{
	
	var  trasDato;
	trasDato = 2;
		//alert(2);
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/productoControlador.php",
            data:' tipo=' +  tipo + '&id=' + id + '&trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
					
                   
					
					 $('#mensajeC').html(resp);
					  

                }


            }     
        });
}
function ingresoCuentaCobrar()
{
	
	var  trasDato;
	trasDato = 1;
		//alert(2);
		tipo=document.getElementById('tipoPlazo').value;
		plazo=document.getElementById('plazo').value;
		id=document.getElementById('codigoVenta').value;
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/cuentasCobrarControlador.php",
            data:' tipo=' +  tipo + '&plazo=' + plazo + '&id=' + id + '&trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
					
                   
					
					 $('#mensajeVV').html(resp);
					  

                }


            }     
        });
}
//**********************



$('#btnInsertar').click(function(){

    // alert('hola');  

    $('#precargar').show();

    var  user, pass, email, trasDato;
    if(passHabilita==1)
    {
        user = $('#user').val();

        pass = $('#password').val();

        rol = $('#rol').val();

        trasDato = 2;
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/usuarioControlador.php",
            data:' user=' +  user + '&pass=' + pass + '&rol=' + rol + '&trasDato=' + trasDato,
            success: function(resp)
            {

                //console.log(trasDato);


                //$('#mensaje').html(resp); 
                // $('#precargar').css('display','none');  
                $("#user").val("");
                $("#password").val("");

                if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
                    passHabilita=0;

                    setTimeout(window.location.reload(), 3000);


                }


            }     
        });
    }
    else
    {
        alert('password erroneo');
    }


});




$('.eliminar').click(function(event)
                     {

    var idelim, trasDato; 

    idelim=gobIDElim;

    trasDato = 3;


    $.ajax
    ({
        type:"POST",
        url:"../core/controlador/usuarioControlador.php",
        data:'idelim=' + idelim  + '&trasDato=' + trasDato,
        success: function(resp)
        {

            console.log(idelim);

            //$('#mensaje').html(resp); 
            //$('#precargar').css('display','none');  
            $("#user").val("");
            $("#password").val("");

            if(resp == '1')
            {

                //$('#mensaje').html('Datos Incorrectos.');         
                //$('#precargar').hide();    
            }
            else
            {

                setTimeout(window.location.reload(), 3000);


            }


        }     
    });            

});






$('.editar').click(function(event)
                   {

    event.preventDefault();

    var idedit, trasDato; 

    gobIDEdit = event.target.dataset.edit;

    idedit = gobIDEdit;

    $('#modal1').openModal();

    trasDato = 4;


    $.ajax
    ({
        type:"POST",
        url:"../core/controlador/usuarioControlador.php",
        data:'idedit=' + idedit  + '&trasDato=' + trasDato,
        success: function(resp)
        {



            $('#mensaje').html(resp); 
            // $('#precargar').css('display','none');  




        }     
    });            

});

$('#btnActualizar').click(function()
                          {

    var idedit, trasDato, user, pass, rol; 

    idedit = gobIDEdit;

    trasDato = 5;
    //$('#precargar').show();


    if($('#password').val()=="")
    {
        passHabilita=1;
    }

    if(passHabilita==1)
    {
        user = $('#user').val();

        pass = $('#password').val();

        rol = $('#rol').val();

        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/usuarioControlador.php",
            data:' user=' +  user + '&pass=' + pass + '&rol=' + rol+ '&id=' + idedit + '&trasDato=' + trasDato,
            success: function(resp)
            {

                //console.log(trasDato);


                //$('#mensaje').html(resp); 
                // $('#precargar').css('display','none');  
                $("#user").val("");
                $("#password").val("");

                if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {


                    setTimeout(window.location.reload(), 3000);


                }


            }     
        });
    }
    else
    {
        alert('password erroneo');
    }


});