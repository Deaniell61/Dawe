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


$('#tablaPro').DataTable( {

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


//$('select').material_select(); 

//*********************************************************

//*************** modal ***********************************






function abrirProvNuevo(){

    $('#btnActualizar').hide();
    $('#btnInsertar').show();
    $('#modal1P').openModal();
}

function seleccionar(id)
{
	
	
	buscarNIT(id);
	 cierre();
	$('#modal4').closeModal();
}
$('.modaleliminarP').click(function(){

    event.preventDefault();

    gobIDElim = event.target.dataset.elim;

    $('#modal3P').openModal();

});






$(".dropdown-button").dropdown();

//*********************************************************




//comprobaciones
function distribuidores(prov)
{
	
		
		$('#modal4P').openModal();
		llamarDistribuidor();
	
	
}
function llamarDistribuidor()
{
	
	$.ajax
        ({
            type:"POST",
            url:"Distribuidores.php",
            success: function(resp)
            {
				$('#distribuidorContenedor').html(resp);
            }    
        });
}


//**********************



function ingresarClienteP(){

    // alert('hola');  

  

    var  nombre, direccion, telefono, nit, apellido,  trasDato;
	
        nombre = $('#nombreP').val();
		apellido = $('#apellidoP').val();
		direccion = $('#direccionP').val();
		telefono = $('#telefonoP').val();
		nit = $('#nitP').val();
		

        trasDato = 1;
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/clientesControlador.php",
            data:' nombre=' +  nombre + '&direccion=' + direccion + '&nit=' + nit + '&telefono=' + telefono + '&apellido=' + apellido + '&trasDato=' + trasDato,
            success: function(resp)
            {

                

                if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
                    
						
                  
					llamarCliente();
                }


            }     
        });
    


}




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


$('#modalcliente').click(function(){
	$('#modal4').closeModal();
	cierre();
	//alert('sdjhfkjshfjk');
});


$('#btnInsertarP').click(function(){

	//cierre();
	//$('#modalP').closeModal();

	
});