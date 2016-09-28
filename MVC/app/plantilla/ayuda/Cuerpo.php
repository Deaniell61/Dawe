
    

<?php
    
		
    include('../vista/ayudaVista.php');    
    mostrarAyuda();
    	
?>

 <div class="row">
     
      
      <div class="col s2  ">
         <center>
         <div class="izqC">
         	<ul>
         	   <li><a id="resumenA" href="#!" class="" >Resumen</a></li>
         		<li><a id="usuariosA" href="#!" class="" >Usuarios</a></li>
         		<li><a id="empleadosA"  href="#!" class="">Empleados</a></li>
         		<li><a id="comprasA" href="#!" class="" >Compras</a></li>
         	</ul>
          </div>	
         </center>
      
      </div>
      <div class="col s10 ">
         <center>
          <div class="derC"> 
          
          
          
				<!-- reumen --> 
				 <div id="resumenC"   >
                   <h4>Video Resumen</h4>
				<video id="resumenV" controls>
				   <source src="../app/video/video.mp4" type="video/mp4">
				</video>

				  </div>

				  <!-- usuarios --> 
				   <div id="usuariosC"  style="display: none;" >
                      <h4>Usuarios</h4>
					   <p>usuarios</p>

				  </div>


				  <!-- empleados --> 
				   <div id="empleadosC"  style="display: none;" >
                       <h4>Empleados</h4>
						<p> empleados </p>

				  </div>

				  <!-- compras --> 
				   <div id="comprasC"  style="display: none;" >
                      <h4>Compras</h4>
						<p> compras </p>

			             </div>
			             
			             
			      
			             
			             
           </div>	   
              
         </center>
      </div>
      
      
     
 </div>



    
    
	
	
