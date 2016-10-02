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

$('select').material_select(); 

//*********************************************************

//*************** modal ***********************************



$('.modaleliminar').click(function(){

    event.preventDefault();

    gobIDElim = event.target.dataset.elim;

    $('#modal3').openModal();

});




$(".dropdown-button").dropdown();

//*********************************************************

function editar(id)
{
	$('#modal1').openModal();

	 var  trasDato;
	trasDato = 1;
	habilita(false);
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/inventarioControlador.php",
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
                    
					
					 $('#mensajeINA').html(resp); 

                }


            }     
        });
}
function guardarInventario()
{
	

	 var  trasDato;
	trasDato = 2;
	id=document.getElementById('idproducto').value;
	precioG=document.getElementById('precioG').value;
	precioE=document.getElementById('precioE').value;
	precioM=document.getElementById('precioM').value;
        $.ajax
        ({
            type:"POST",
            url:"../core/controlador/inventarioControlador.php",
            data:' id=' +  id + '&precioG=' + precioG + '&precioE=' + precioE + '&precioM=' + precioM + '&trasDato=' + trasDato,
            success: function(resp)
            {

               if(resp == '1')
                {


                    //$('#mensaje').html('Datos Incorrectos.');         
                    //$('#precargar').hide();    
                }
                else
                {
                    
					
					 $('#mensajeINA').html(resp); 

                }


            }     
        });
}
function calcula()
{
	precio=document.getElementById('precioG').value;
	
	pe=precio-(precio*(document.getElementById('precioEP').value/100));
	pm=precio-(precio*(document.getElementById('precioMP').value/100));
	
	
	document.getElementById('precioE').value=pe;
	document.getElementById('precioM').value=pm;
	
}
function habilita(ds)
{
	document.getElementById('producto').disabled=ds;
	document.getElementById('marca').disabled=ds;
	document.getElementById('descripcion').disabled=ds;
	document.getElementById('costo').disabled=ds;
	document.getElementById('cantidad').disabled=ds;
	document.getElementById('precioE').disabled=ds;
	document.getElementById('precioM').disabled=ds;
}