$('#resumenA').click(function(){
	
	
	$("#usuariosC").hide();
	$("#empleadosC").hide();
    $("#comprasC").hide();
	
	
	$("#resumenC").show();
	
	
	
});



$('#usuariosA').click(function(){
	
	
	$("#resumenC").hide();
	$("#empleadosC").hide();
    $("#comprasC").hide();
	
	
	$("#usuariosC").show();
	

});

$('#empleadosA').click(function(){
	
	
	$("#resumenC").hide();
	$("#usuariosC").hide();
    $("#comprasC").hide();
	
	
	$("#empleadosC").show();
	

});