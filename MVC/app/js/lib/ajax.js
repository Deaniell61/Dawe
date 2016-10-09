

$('#logout').click(function(){

    cerrarSesion();
	
});


$('#logoutR').click(function(){

    cerrarSesion();
	
});
$('.row').click(function(){

    document.getElementById('globoNotificacion').hidden=true;
	
});
$('#contenidoCrud').click(function(){

    document.getElementById('globoNotificacion').hidden=true;
	
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


function printDiv(divName) 
{
     var printContents = document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     window.print();

     document.body.innerHTML = originalContents;
	 location.reload();
}

function printCoti(divName) 
{
	 var encab="<div class=\"navbar-fixed\"><nav><div class=\"nav-wrapper grey darken-4\"><a  class=\"brand-logo\"><img class=\"logo\" src=\"../app/img/logoHectoRepuestos.png\"/></a><div style=\"height: 18px; text-align:right;\">Hector Repuestos</div><div  style=\"height: 18px; text-align:right;\">\"Soluciones con Experiencia\"</div><div  style=\"height: 18px; text-align:right;\">Direccion: Retalhuleu</div><div  style=\"height: 18px; text-align:right;\">Tel. 77737775</div><div  style=\"height: 18px; text-align:right;\">Cel. 42207608</div></div></nav></div><br><p>Cliente: "+document.getElementById('Cliente').value+"</p>";
     var printContents = document.head.innerHTML+encab+document.getElementById(divName).innerHTML;
     var originalContents = document.body.innerHTML;

     document.body.innerHTML = printContents;

     print();

     document.body.innerHTML = originalContents;
	 location.reload();
}



