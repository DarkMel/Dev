<!DOCTYPE html>

<%@page import="java.util.Date"%>
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

	<%--     <%  %> pour ecrire un scripte, équivalent à out.println --%>
	<h2><%=new Date()%></h2>

	<%--  <%! reconnu par toute la page, pour faire les déclarations  --%>
	<%!private int compteur = 0;%>
	<%=++compteur%>

	<%-- <% %> tout court pour écrire du code  --%>
	<%
	int a = 3;
	int b = 5;
	out.println(a + b);
	for (int i = 0; i < 10; i++) {
	%>
	<h3>Hello !</h3>
	<%
	}
	%>

	<h2> ${now}</h2>
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

</body>

</html>