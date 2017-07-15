$(document).ready(function() {
	$(".required").each(function(){
		var lab = $(this).siblings("label")
		lab.html("<span title='Il campo deve essere riempito'><span style='color:red;'>* </span>"+lab.html()+"</span>");
	})
	$(".requiredIf").each(function(){
		var lab = $(this).siblings("label")
		lab.html("<span title='Il campo deve essere riempito'><span style='color:red;'>* </span>"+lab.html()+"</span>");
	})
	$("#AltroTipo").hide();
	$("select[name=tipo]").on("change", function(){
		if($("select[name=tipo]").val()=="Altro"){
			$("#AltroTipo").show();
		}else{
			$("#AltroTipo").hide();
		}
	})
	$("#AltraMotivazione").hide();
	$("select[name=motivazione]").on("change", function(){
		if($("select[name=motivazione]").val()=="Altro"){
			$("#AltraMotivazione").show();
		}else{
			$("#AltraMotivazione").hide();
		}
	})
});

function sendPRequest(){
	if(checkField()){
		var daInviare="L'email che verrà inviata conterrà queste informazioni:\n\n";
		daInviare+="\nInformazioni dell'utente:";
		daInviare+="\n\tNome: "+$("input[name=nome]").val().trim();
		daInviare+="\n\tCognome: "+$("input[name=cognome]").val().trim();
		daInviare+="\n\tEmail: "+$("input[name=email]").val().trim();
		daInviare+="\n\tTelefono: "+$("input[name=telefono]").val().trim();
		daInviare+="\n\tProvincia: "+$("select[name=provincia]").val().trim();
		daInviare+="\n\tCittà: "+$("input[name=città]").val().trim();
		daInviare+="\n\tVia: "+$("input[name=via]").val().trim();
		daInviare+="\nInformazioni sul prestito:";
		daInviare+="\n\tTipo: "+$("select[name=tipo]").val().trim()+" "+$("input[name=tipoAltro]").val().trim();
		daInviare+="\n\tImporto: "+$("input[name=importo]").val().trim();
		daInviare+="\n\tDurata: "+$("input[name=durata]").val().trim();
		daInviare+="\n\tMotivazione: "+$("select[name=motivazione]").val().trim()+" "+$("input[name=motivazioneAltro]").val().trim();
		daInviare+="\nUlteriori informazioni:";
		daInviare+="\n\tMessaggio dall'utente:"+$("textarea[name=messaggio]").val().trim();
		alert(daInviare);
	}
}

function checkField(){
	$("span.help-block").html("");
	var end = false;
	
	if($("select[name=tipo]").val()=="Altro"){
		alert("ok")
		$("input[name=tipoAltro]").addClass("required");
		$("input[name=tipoAltro]").addClass("string");
	}else{
		$("input[name=tipoAltro]").removeClass("required");
		$("input[name=tipoAltro]").removeClass("string");
	}
	if($("select[name=motivazione]").val()=="Altro"){
		$("input[name=motivazioneAltro]").addClass("required");
		$("input[name=motivazioneAltro]").addClass("string");
	}else{
		$("input[name=motivazioneAltro]").removeClass("required");
		$("input[name=motivazioneAltro]").removeClass("string");
	}
	
	$(".required").each(function(){
		if( $(this).val()==undefined || $(this).val()==null || $(this).val()=="" ){
			sendError(this, "Il campo non può essere lasciato vuoto.");
			end=true;
		}
	});
	if(end) return false;
	$(".string").each(function(){
		if( !$(this).val().match(/^[a-zA-ZÀ-ÿàèéìòóù ']+$/) ){
			sendError(this, "Sono presenti caratteri non consentiti.");
			end=true;
		}
	})
	if(end) return false;
	$(".email").each(function(){
		if( !$(this).val().match(/^[a-zA-Z0-9@.]+$/) ){
			sendError(this, "Sono presenti caratteri non validi");
			end=true;
		}
	})
	if(end) return false;
	$(".stringOfNumber").each(function(){
		if( !$(this).val().match(/^[0-9 +]+$/) ){
			sendError(this, "Sono presenti caratteri non consentiti.");
			end=true;
		}
	})
	if(end) return false;
	$(".stringWithNumber").each(function(){
		if( !$(this).val().match($(this).val().match(/^[a-zA-ZÀ-ÿ0-9àèéìòóù ',]+$/)) ){
			sendError(this, "Sono presenti caratteri non consentiti.");
			end=true;
		}
	})
	if(end) return false;
	$(".number").each(function(){
		if( !$(this).val().match($(this).val().match(/^[+0-9,.]+$/)) ){
			sendError(this, "Sono consentiti solo numeri.");
			end=true;
		}
	})
	if(end) return false;
	
	return true;
}

function sendError(obj, mex){
	$(obj).siblings("span").html(mex);
}