$(document).ready(function() {
	$(".required").each(function(){
		var lab = $(this).siblings("label")
		lab.html("<span title='Il campo deve essere riempito'>"+lab.html()+"<span style='color:red;'> *</span></span>");
	});
	$(".requiredIf").each(function(){
		var lab = $(this).siblings("label")
		lab.html("<span title='Il campo deve essere riempito'><span style='color:red;'>* </span>"+lab.html()+"</span>");
	});
	$("#AltroTipo").hide();
	$("select[name=tipo]").on("change", function(){
		if($("select[name=tipo]").val()=="Altro"){
			$("#AltroTipo").show();
		}else{
			$("#AltroTipo").hide();
		}
	});
	$("#AltraMotivazione").hide();
	$("select[name=motivazione]").on("change", function(){
		if($("select[name=motivazione]").val()=="Altro"){
			$("#AltraMotivazione").show();
		}else{
			$("#AltraMotivazione").hide();
		}
	});
	
	/*Controlla che l'importo e la durata non superino il massimo in base al tipo di prestito*/
	$("input[name=importo]").on("change", function(){
		validateImport();
	});
	$("input[name=durata]").on("change", function(){
		validateDurata();
	});
	
	/*Aggiunge spazi per inserire conti correnti aperti*/
	$("input[name=add]").on("click", function(){
		$("div.notStartup").append('<div class="singleCC"><div style="width:40%;display:inline-block;"><label for="banca">Banca:</label><input class="form-control string" name="banca" list="suggestedBank" type="text"><span class="help-block" id="banca"></span></div><div style="width:40%;display:inline-block;"><label for="filiale">Filiale:</label><input class="form-control string" name="filiale" type="text"><span class="help-block"id="filiale"></span></div><input class= "btn btn-outline-secondary" name="delete" value="X" type="button" style="width:8%;display:inline-block;color:red;font-weight: bold;"></div>');
	});
	
	/*Rimuove uno spazio per un conto corrente*/
	$(document.body).on('click', 'input[name=delete]' ,function(){
		alert("test")
		$(this).closest("div.singleCC").remove();
	});

	$(document.body).on('click', 'input[name=tipoAzienda]' ,function(){
		$(".notStartup").toggle();
	});
});

function validateImport(){
	$("input[name=importo]").siblings("span").html("");
	if($("input[name=importo]").val()!=undefined && $("input[name=importo]").val()!=null && $("input[name=importo]").val()!=0){
		if($("select[name=tipo]").val()=="Mutuo chirografario" && $("input[name=importo]").val()>50000){
			sendError($("input[name=importo]"), "Il massimo importo per il mutuo chirografario è di 50'000€.");
			return false;
		}else if($("select[name=tipo]").val()=="Mutuo ipotecario" && $("input[name=importo]").val()>300000){
			sendError($("input[name=importo]"), "Il massimo importo per il mutuo ipotecario è di 300'000€.");
			return false;
		}else if($("select[name=tipo]").val()=="Fido di conto corrente" && $("input[name=importo]").val()>10000){
			sendError($("input[name=importo]"), "Il massimo importo per il mutuo ipotecario è di 10'000€.");
			return false;
		}else if($("input[name=importo]").val()>300000){
			sendError($("input[name=importo]"), "Il massimo importo è di 300'000€.");
			return false;
		}
	}
	return true;
}

function validateDurata(){
	$("input[name=durata]").siblings("span").html("");
	if($("input[name=durata]").val()!=undefined && $("input[name=durata]").val()!=null && $("input[name=durata]").val()!=0){
		if($("select[name=tipo]").val()=="Mutuo chirografario" && $("input[name=durata]").val()>5){
			sendError($("input[name=durata]"), "La massima durata di un mutuo chirografario è di 5 anni.");
			return false;
		}else if($("select[name=tipo]").val()=="Mutuo ipotecario" && $("input[name=durata]").val()>10){
			sendError($("input[name=durata]"), "La massima durata di un mutuo ipotecario è di 10 anni.");
			return false;
		}else if($("select[name=tipo]").val()=="Fido di conto corrente" && $("input[name=durata]").val()>1){
			sendError($("input[name=durata]"), "Il fido di conto corrente dura massimo un anno ed è rinnovabile");
			return false;
		}else if($("input[name=durata]").val()>10){
			sendError($("input[name=durata]"), "La massima durata è di 10 anni.");
			return false;
		}
	}
	return true;
}

function sendPRequest(){
	/*if(checkField()){*/
		
		var nome = $("input[name=nome]").val().trim();
		var cognome = $("input[name=cognome]").val().trim();
		var email = $("input[name=email]").val().trim();
		var telefono = $("input[name=telefono]").val().trim();
		var provincia = $("select[name=provincia]").val().trim();
		var città = $("input[name=città]").val().trim();
		var via = $("input[name=via]").val().trim();
		
		var isStartup = true;
		var ragione_sociale_società = $("select[name=ragSociale]").val().trim();
		var conti_correnti_società = [];
		if(!$("input[name=tipoAzienda]").is(":checked")){
			isStartup = false;
			$("input[name=banca]").each(function(index) {
				if(this.value!=undefined && this.value!=null && this.value!= ""){
					conti_correnti_società.push({banca:this.value, filiale:$("input[name=filiale]")[index].value});
				}
			});
			console.log(conti_correnti_società)
		}
		
		var tipo_prestito = $("select[name=tipo]").val().trim()+" "+$("input[name=tipoAltro]").val().trim();
		var importo_prestito = $("input[name=importo]").val().trim();
		var durata_prestito = $("input[name=durata]").val().trim();
		var motivazione_prestito = $("select[name=motivazione]").val().trim()+" "+$("input[name=motivazioneAltro]").val().trim();
		var messaggio = $("textarea[name=messaggio]").val().trim();
		$.ajax({
			type : "POST",
			url : "mail",
			data : {
				action : 'mail-preventivo',
				nome : nome,
				cognome : cognome,
				email : email,
				telefono : telefono,
				provincia : provincia,
				città : città,
				via : via,
				isStartup : isStartup,
				ragione_sociale_società : ragione_sociale_società,
				conti_correnti_società : conti_correnti_società,
				tipo_prestito : tipo_prestito,
				importo_prestito : importo_prestito,
				durata_prestito : durata_prestito,
				motivazione_prestito : motivazione_prestito,
				messaggio : messaggio
			},
			dataType : "json",
			error : function(xhr, status, errorThrown) {
				console.log(JSON.stringify(xhr));
				console.log("AJAX error: " + status + ' : ' + errorThrown);
			},
			success : function(responseText) {
				formatData(responseText);
			}
		})
	//}
}

function checkField(){
	$("span.help-block").html("");
	var end = false;

	if($("select[name=tipo]").val()=="Altro"){
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
	return validateDurata() && validateImport();
}

function sendError(obj, mex){
	$(obj).siblings("span").html(mex);
}