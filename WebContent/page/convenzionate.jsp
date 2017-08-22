<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0" />
<title>Impresa Confidi</title>
<link rel="icon" href="resources/img/logo.png">
<link href="/css/bootstrap.css" type="text/css"
	rel="stylesheet" media="screen,projection" />
<link href="/css/general.css" type="text/css"
	rel="stylesheet" />
<link href="/css/convenzionate.css" type="text/css"
	rel="stylesheet" />
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
</head>
<body>
	<%@ include file="/page/header.jsp"%>
	<div id="other-content">
		<div class="side-element">
			<%@ include file="/page/side.jsp"%>
		</div>
		<div class="other-side-element" id="textSpace">
			<a href="https://www.bcp.it/" target="_blank">
				<div class="thumbnail" id="bcp"></div>
			</a> <a href="https://www.ubibanca.com/" target="_blank">
				<div class="thumbnail" id="ubi"></div>
			</a> <a href="http://www.bper.it/" target="_blank">
				<div class="thumbnail" id="bper"></div>
			</a> <a href="https://www.mps.it/" target="_blank">
				<div class="thumbnail" id="mps"></div>
			</a> <a href="https://www.unicredit.it/" target="_blank">
				<div class="thumbnail" id="uni"></div>
			</a>
		</div>
	</div>
	<%@ include file="/page/footer.jsp" %>
</body>
</html>