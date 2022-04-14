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
	<!-- équivalent a pourcentage arrobasse   -->

	<jsp:include page="../jspf/head.jsp" />

	<h2>JSP Action : jsp:usebean</h2>

	<jsp:useBean id="helloBean" class="fr.formation.inti.model.HelloModel"></jsp:useBean>
	<!-- instancie la classe  -->
	<jsp:getProperty property="name" name="helloBean" /> <!-- se base sur les méthodes get de la classe -->
	<jsp:setProperty property="name" name="helloBean" value="Samuel"/>
	<jsp:getProperty property="hello" name="helloBean" />
	<!-- les balises jsp c'est comme si on codé en java et qu'on appelé les méthodes des classes   -->

	<%@ include file="../jspf/script.jsp"%>

</body>

</html>