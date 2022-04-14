<!DOCTYPE html>


<%@page import="java.util.Date" isErrorPage="true"%>
<html>
<!-- entête du document -->

<head>
<title>Page HTML</title>
<meta charset="UTF-8" />
<!-- sert pour le référenement -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css">

</head>

<body>
	<!-- interessant pour les blocs de code qui se repete entre les pages , example le menu  -->
	<%@ include file="jspf/head.jsp"%>


	<h2>Error sur cette page :</h2>

	<%=exception.getMessage()%>

	<%@ include file="jspf/script.jsp"%>

</body>

</html>