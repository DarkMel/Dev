<!DOCTYPE html>


<%@page errorPage="error.jsp" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<!-- entÃªte du document -->

<head>
<title>Page HTML</title>
<meta charset="UTF-8" />
<!-- sert pour le rÃ©fÃ©renement -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">

</head>

<body>
	<!-- interessant pour les blocs de code qui se repete entre les pages , example le menu  -->
	<%@ include file="jspf/head.jsp"%>

	<h2>Error division</h2>

	<%
	int i = 10 / 0;
	%>


	<%@ include file="jspf/script.jsp"%>

</body>

</html>