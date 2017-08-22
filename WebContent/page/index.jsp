<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Impresa Confidi</title>
<link rel="icon" href="resources/img/logo.png">
<link href="/css/bootstrap.css" type="text/css" rel="stylesheet"
	media="screen,projection" />
<link href="/css/general.css" type="text/css" rel="stylesheet" />
<link href="/css/index.css" type="text/css" rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>
	<%@ include file="/page/header.jsp"%>
	<div id="other-content">
		<div class="row">
			<div class="side-element">
				<%@ include file="/page/side.jsp"%>
			</div>
			<div class="other-side-element" id="textSpace">
				<h2>Chi siamo</h2>
				<p><strong style="color:rgb(0, 69, 166);">Impresa Confidi</strong> è una società cooperativa per azioni, non ha fini di lucro, è presente sul territorio dal 1998.<br>
				 È gestore di fondi pubblici di garanzia dedicati alle <i style="color:#d56a00;">Piccole e Medie Imprese</i> operanti nella provincia di Napoli.<br>
				 Ha quale finalità principale le prestazioni di garanzie collettive a favore delle <i style="color:#d56a00;">PMI</i> associate, al fine di 
				 agevolarne l'accesso al credito bancario a condizioni vantaggiose.</p>
				 
				<h2>Il fido migliore</h2>
				<h4><strong style="color:#d56a00;">+</strong> Credito</h4><p class="intra-testo">Fino a 100.000€ in aggiunta a quello già eventualmente convesso dalla Banca.</p>
				<h4><strong style="color:#d56a00;">-</strong> Costi</h4><p class="intra-testo">Stesse condizioni applicabili ai clienti primari.</p>
				<h4><strong style="color:#d56a00;">-</strong> Tassi di interesse</h4><p class="intra-testo">Riduzione del costo degli interessi passivi di circa 2 p.p. con l'intervento della CCIAA di Napoli.</p>
				<h4><strong style="color:#d56a00;">-</strong> Tempi di concessione</h4><p class="intra-testo">15 giorni dalla presentazione della richiesta al Confidi.</p>
				
				<h2>Prestiti come vuoi</h2>
				<h4><strong style="color:#d56a00;">•</strong> Breve termine</h4><p class="intra-testo">Linee di credito per apertura di credito in C/C, autoliquidanti, anticipazione su fatture, castelletto e rischio estero.</p>
				<h4><strong style="color:#d56a00;">•</strong> Medio termine</h4><p class="intra-testo">Finanziamenti chirografari di massimo 60 mesi finalizzati ad investimenti aziendali, incremento magazzino e/o liquidità.</p>
				<h4><strong style="color:#d56a00;">•</strong> Lungo termine</h4><p class="intra-testo">Finanziamenti ipotecari di massimo 120 mesi finalizzati all' acquisto di immobili strumentali e/p ristrutturazione.</p>
			</div>
		</div>
	</div>
	<%@ include file="/page/footer.jsp" %>
</body>
</html>