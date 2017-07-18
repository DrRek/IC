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
<link href="/ImpresaConfidi/css/modulistica.css" type="text/css" rel="stylesheet" />
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
				<div class="col-md-5 text-left moduli">
					<h2>Moduli per startup</h2><br>
					<p>
						Questo documento serve per...<br>
						<div class="dwl"><a href="/ImpresaConfidi/resources/doc/startup/sampleDoc.pdf" target="_blank">Download</a></div>
					</p><br>
					<p>
						Quest altro documento serve per...<br>
						<div class="dwl"><a href="/ImpresaConfidi/resources/doc/startup/sampleDoc.pdf" target="_blank">Download</a></div>
					</p>
				</div>
				<div class="col-md-5 text-left moduli">
					<h2>Altri moduli per le imprese</h2><br>
					<p>
						Questo documento serve per...<br>
						<div class="dwl"><a href="/ImpresaConfidi/resources/doc/startup/sampleDoc.pdf" target="_blank">Download</a></div>
					</p><br>
					<p>
						Quest altro documento serve per...<br>
						<div class="dwl"><a href="/ImpresaConfidi/resources/doc/startup/sampleDoc.pdf" target="_blank">Download</a></div>
					</p>
				</div>
			</div>
		</div>
	</div>
</body>
</html>