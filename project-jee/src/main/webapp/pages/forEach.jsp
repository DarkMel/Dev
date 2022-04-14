<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
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

	<h2>JSTL : forEach</h2>



	<table class="table">
		<thead class="thead-dark">
			<tr>

				<th scope="col">Dept ID</th>
				<th scope="col">Name</th>
				<th scope="col">Action</th>
			</tr>
		</thead>
		<tbody>

			<c:forEach items="${list}" var="dept">
				<!-- Langage EL  -->
				<tr>

					<td>${dept.deptId}</td>
					<td>${dept.name}</td>
					<td></td>
				</tr>
			</c:forEach>

		</tbody>

	</table>
	<h2>JSTL : fmt</h2>
	<h5>
		<fmt:formatNumber value="${25547.2}" type="currency" /><br>
		<fmt:formatNumber value="${75847.2}" type="number" maxIntegerDigits="3" /><br>
		<fmt:formatNumber value="${75847.2}" type="number" maxFractionDigits="3" />
	</h5>
	<h5>
	<c:out value="<%= new Date() %>"></c:out>
	<c:set value="<%= new Date() %>" var="now" scope="session"></c:set> <!-- avec les jsp on peut enregistrer les sessions avec scope  -->
	<br>
	<fmt:formatDate value="${now}" type="date"/>
	<br>
	<fmt:formatDate value="${now}" type="time"/>
	<br>
	<fmt:formatDate value="${now}" type="date" pattern="dd-MM-yyyy"/>
	
	</h5>

</body>