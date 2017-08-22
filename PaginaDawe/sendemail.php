<?php
	header('Content-type: application/json');
	$status = array(
		'type'=>'success',
		'message'=>'Gracias por contactarnos. Te contactaremos tan pronto como sea posible <script>setTimeout(function(){location.href="http://dawesystems.com";},3000);</script>'
	);

    $name = (stripslashes($_POST['name'])); 
    $email = (stripslashes($_POST['email'])); 
    $subject = (stripslashes($_POST['subject'])); 
    $message =(stripslashes($_POST['message'])); 
    $telefono =(stripslashes($_POST['numero'])); 
    $negocio =(stripslashes($_POST['negocio'])); 

    $email_from = $email;
    $headers = "MIME-Version: 1.0\r\n"; 
	$headers .= "Content-type: text/html; charset=iso-8859-1\r\n"; 
	$headers .= "From: $email_from\r\n"; 
	$headers .= "Reply-To: $email_from\r\n"; 
	$headers .= "Return-path: $email_from\r\n"; 
	$headers .= "Bcc: $destino3, $destino2\r\n"."X-Mailer: PHP/".phpversion(); 
	$desde=$headers;
    $email_to = 'support@dawesystems.com';//replace with your email

    $body = utf8_decode("<html>
              <head>
              </head>
                <body>
                <span style=\"text-align:center;
                              color:red;
                              width:100%;
                              margin-left:0%;\">
                    Nombre:  <strong>$name</strong><br>
                    Email:  <strong>$email</strong><br>
                    Telefono:  <strong>$telefono</strong><br>
                    Empresa:  <strong>$negocio</strong><br>
                </span>
                <br>
                <br>
                <center>
                <div style=\"text-align:left;
                             color:blue;
                             width:70%;\">
                Asunto:  <strong>$subject</strong><br><br>
                Mensaje:  <strong>$message</strong><br>
                        
                </div>
                </center>	
                <div style=\"text-align:rigth;
                             color:#D67900;
                             width:100%;
                             margin-left:10%;\" >
                </div>
                <center> 
                <a href=\"http://www.dawesystems.com/\">
                <img style=\"cursor:pointer;\" src=\"http://dawesystems.com/images/Dawelogo.png\"  width='200' height='100' alt=\"DaweSystems\">
                        <br><br>http://www.dawesystems.com/ </a></center>
                </body>	
                </html>");
    
    $success = mail($email_to, $subject, $body, $desde);

    echo json_encode($status);
    die;