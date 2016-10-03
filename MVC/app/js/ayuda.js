$('#resumenA').click(function(){
	
	
	$("#usuariosC").hide();
	$("#empleadosC").hide();
    $("#comprasC").hide();
	$("#mapacontenidoC").hide();
	
	$("#resumenC").show();
	
	
	
});


$('#mapacontenidoA').click(function(){
	
	
	$("#usuariosC").hide();
	$("#empleadosC").hide();
    $("#comprasC").hide();
	$("#mapacontenidoC").show();
	$("#resumenC").hide();
	
	
	
});



$('#usuariosA').click(function(){
	
	
	$("#resumenC").hide();
	$("#empleadosC").hide();
    $("#comprasC").hide();
	$("#mapacontenidoC").hide();
	
	$("#usuariosC").show();
	

});

$('#empleadosA').click(function(){
	
	
	$("#resumenC").hide();
	$("#usuariosC").hide();
    $("#comprasC").hide();
	$("#mapacontenidoC").hide();
	
	$("#empleadosC").show();
	

});

 var nW,nH,oH,oW;
  function zoomToggle(iWideSmall,iHighSmall,iWideLarge,iHighLarge,whichImage){
    oW=whichImage.style.width;oH=whichImage.style.height;
    if((oW==iWideLarge)||(oH==iHighLarge)){
      nW=iWideSmall;nH=iHighSmall;
    }else{
      nW=iWideLarge;nH=iHighLarge;
    }
    whichImage.style.width=nW;whichImage.style.height=nH;
  }


  $('#tabla1').DataTable( {

    language: {

        search: "Buscar",
       
    },
   
} );