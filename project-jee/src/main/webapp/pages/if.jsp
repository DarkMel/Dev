<!DOCTYPE html>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page errorPage="error.jsp" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>Page HTML</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link rel="stylesheet" href="../css/style.css">
</head>
<body>

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
		<c:if test="${dept.deptId == 3 }">
			<tr style="background: red;">
					<td>${dept.deptId}</td>
					<td>${dept.name}</td>
					<td></td>
			</tr>
		</c:if>
		
		<c:if test="${dept.deptId != 3 }">
			<tr>
					<td>${dept.deptId}</td>
					<td>${dept.name}</td>
					<td></td>
			</tr>
		</c:if>
				
			
			</c:forEach>
		</tbody>
	</table>



	<%@ include file="../jspf/script.jsp"%>
</body>
</html>