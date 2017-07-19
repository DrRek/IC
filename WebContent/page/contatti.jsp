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
				<p>Roba da inserire</p>
				<h2>Reti di confidi</h2>
				<p>Altra roba da inserire<br>molta altra roba</p>
				<h2>Altri titoli</h2>
				<p>con relativi approfondimenti</p>
				<br><br><br><br><br><br><br><br><br>Questo per farti capire come viene scorrendo la pagina<br><br><br><br><br><br>fine.<br>
			</div>
		</div>
	</div>
	<%@ include file="/page/footer.jsp" %>
</body>
</html>