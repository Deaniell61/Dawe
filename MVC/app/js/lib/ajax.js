

$('#logout').click(function(){

    cerrarSesion();
	
});


$('#logoutR').click(function(){

    cerrarSesion();
	
});


function cerrarSesion()
{
    var trasDato;
     
     trasDato = 66;
   $.ajax
   ({
      type:"POST",
      url:"../core/controlador/usuarioControlador.php",
     data:'trasDato=' + trasDato,
      success: function(resp)
       { 
           location.href=resp;
          
       }  
   });
}

function siguiente(evt,id)
{
	if(evt.keyCode=='13')
	{
		if(id=="compra1")
		{
			ingresoCompra(document.getElementById('codigo').value);
		}
		document.getElementById(id).focus();		
	}
}
function cierre()
{
	$('.lean-overlay').css('display','none');    
	
}






