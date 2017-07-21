<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Impresa Confidi</title>
<link rel="icon" href="resources/img/logo.png">
<link href="/ImpresaConfidi/css/bootstrap.css" type="text/css" rel="stylesheet"
	media="screen,projection" />
<link href="/ImpresaConfidi/css/general.css" type="text/css" rel="stylesheet" />
<link href="/ImpresaConfidi/css/contatti.css" type="text/css" rel="stylesheet" />
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
				<h2>Contatti</h2>
				<p style="font-size:18px;">Via cappuccini, 64<br>
				80059 Torre del Greco<br>
				Tel. 0813580367 - Fax. 0818470570<br>
				E-mail impresaconfidi@gmail.com</p>
				<p>orario uffici 09:00 - 13:00<br>
				dal lunedì al venerdì</p>
			</div>
		</div>
	</div>
	<%@ include file="/page/footer.jsp" %>
</body>
</html>