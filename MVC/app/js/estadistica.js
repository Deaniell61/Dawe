function cargarGrafico(tipo,mas)
{
	var  trasDato;
	trasDato = tipo;
	fechaini =document.getElementById('fechaI').value;
	fechafin =document.getElementById('fechaF').value;
	
            $.ajax({
                url:"../core/controlador/estadisticaControlador.php",
                type: 'POST',
                data: 'fechaini='+fechaini+'&fechafin='+fechafin+'&mas='+mas+'&trasDato=' + trasDato,
                success: function (resp) {
                    $('#comoGraficar').html(resp);
                }
            });
           
    
}

/*$(document).ready(mostrarResultados(2016));  
                function mostrarResultados(año){
                    $.ajax({
                        type:'POST',
                        url:'controlador/procesar.php',
                        data:'año='+año,
                        success:function(data){

                            var valores = eval(data);

                            var e   = valores[0];
                            var f   = valores[1];
                            var m   = valores[2];
                            var a   = valores[3];
                            var ma  = valores[4];
                            var j   = valores[5];
                            var jl  = valores[6];
                            var ag  = valores[7];
                            var s   = valores[8];
                            var o   = valores[9];
                            var n   = valores[10];
                            var d   = valores[11];
                                
                            var Datos = {
                                    labels : ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
                                    datasets : [
                                        {
                                            fillColor : 'rgba(91,228,146,0.6)', //COLOR DE LAS BARRAS
                                            strokeColor : 'rgba(57,194,112,0.7)', //COLOR DEL BORDE DE LAS BARRAS
                                            highlightFill : 'rgba(73,206,180,0.6)', //COLOR "HOVER" DE LAS BARRAS
                                            highlightStroke : 'rgba(66,196,157,0.7)', //COLOR "HOVER" DEL BORDE DE LAS BARRAS
                                            data : [e, f, m, a, ma, j, jl, ag, s, o, n, d]
                                        }
                                    ]
                                }
                                
                            var contexto = document.getElementById('grafico').getContext('2d');
                            window.Barra = new Chart(contexto).Radar(Datos, { responsive : true });
                        }
                    });
                    return false;
                }*/

