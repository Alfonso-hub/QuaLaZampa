$(document).ready(function(){
	var err= 0;
	$('#submit').click(function(){
	var email= $('#email1').val();
	var password= $('#password1').val();	
	var expEm= /^([a-z1-9.-])*@([a-z])+(.com)$/;
	
	if (!(email.match(expEm)) && err < 1){
		err= err + 1;
		$('#email1').after("<b><p id=erroreEmail style='color: red;'>Errore nell'inserimento dell'email</p></b> <br>");
	}
	
	if (email.match(expEm)){
		$('#erroreEmail').remove();
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