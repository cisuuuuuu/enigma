$( document ).ready(function() {
		$( ".s_mail" ).submit(function() {
			if($(".s_mail").valid()){
			
				$('.btn-send').attr('disabled','true');								
				
				$.ajax({
					type: "POST",
					url: "index.php",
					data: "action=send" + "&imie=" + $("#imie").val() + "&email=" + $("#email").val()+ "&telefon=" + $("#telefon").val()+ "&tresc=" + $("#tresc").val(),					
					success: function(returned){
						if(returned=='true'){								
								alert("Dziękujemy za wysłanie wiadomości.");
						}else{
							//alert('an error occured:'+returned);		
							alert('Przepraszamy. Wystąpił błąd, wiadomość nie została wysłana.');		
						}
					}
				});
			
			
				
			}
			
			return false;
		});
		
});