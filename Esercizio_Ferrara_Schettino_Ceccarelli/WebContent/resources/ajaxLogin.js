$(document).ready(function(){
	var err= 0;
	var err2= 0;
	$('#submit').click(function(){
	var email= 	$('#email1').val();
	var pass= $('#password1').val();
	var expEm= /^([a-z1-9.-])*@([a-z])+(.com)$/;
	var expPs= /^([A-Za-z-0-9])+$/;
	
	if (!(email.match(expEm)) && err < 1){
		err= err + 1;
		$('#email1').after("<b><p id=erroreEmail style='color: red;'>Errore nell'inserimento dell'email</p></b> <br>");
	}
		
		if (!(pass.match(expPs)) && err2 < 1){
			err2= err2 + 1;
			$('#password1').after("<b><p id=errorePassword style='color: red;'>Errore nell'inserimento della password</p></b> <br>");
		}
	
	if (email.match(expEm)){
		err= err + 1;
		$('#erroreEmail').remove();
	}
	
	if (pass.match(expPs)){
		err2= err2 + 1;
		$('#errorePassword').remove();
	}
	
	if ((email.match(expEm)) && (pass.match(expPs))){
		$.ajax({
			type: 'POST',
			data: {email: email, password: password},
			url: 'Login',
			success: function(result){
				
				if (result == "Admin"){
					window.location.href="ControlloAdmin";
				}
				if (result == "Utente"){
					window.location.href="ProdottiView.jsp";
				}
			}
		})
	}
	})
	
})