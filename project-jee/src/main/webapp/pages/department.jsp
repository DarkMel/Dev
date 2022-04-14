<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<head>
<title>Département</title>
<meta charset="UTF-8" />
<!-- sert pour le rÃ©fÃ©renement -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/icon?family=Material+Icons"
	rel="stylesheet">
<link rel="stylesheet" href="css/style2.css">

</head>

<body>

	<!--  NAVBAR -->
	<header>
		<nav class="navbar navbar-dark navbar-expand-md bg-dark">
			<a class="navbar-brand" href="index2.jsp">Gestion RH</a>
			<div class="container">
				<button data-toggle="collapse" class="navbar-toggler"
					data-target="#navcol-1">
					<span class="sr-only">Toggle navigation</span><span
						class="navbar-toggler-icon"></span>
				</button>
				<div class="collapse navbar-collapse" id="navcol-1">
					<ul class="nav navbar-nav flex-grow-1">


						<li class="nav-item " role="presentation"><a class="nav-link"
							href="emp?action=employe">Employés</a></li>
						<li class="nav-item " role="presentation"><a class="nav-link"
							href="dept?action=dept">Departements</a></li>
					</ul>
					<ul class="nav navbar-nav flex-grow-1 ml-auto">


						<c:choose>
							<c:when test="${user != null}">

								<li class="nav-item " role="presentation"><a
									class="nav-link" href="logout?action=logout">Logout</a></li>
								<li class="nav-item " role="presentation" style="color: white;">
									<a class="nav-link" href="#" style="color: white;">
									Hello <c:out value="${user.username}" /> </a>

								</li>
							</c:when>
							<c:otherwise>


								<li class="nav-item" role="presentation"><a
									class="nav-link" href="login?action=authent">Login</a></li>
							</c:otherwise>
						</c:choose>

					</ul>
				</div>
			</div>
		</nav>
	</header>

<!-- 	Tableau -->
<div class="tab">
<h4> Liste des départements</h4>
<c:if test="${user !=null }">
	<table class="table">
		<thead class="thead-dark">
			<tr>

				<th scope="col">Departement ID</th>
				<th scope="col">Nom</th>
				<th scope="col" colspan="3">Action</th>
			</tr>
		</thead>
		<tbody>
			<c:if test="${userrole.userRole == 'Admin'}">
				<tfoot>
					<!-- Pied de tableau  -->
					<tr>
						<th></th>
						<th></th>
						<th></th>
						<th></th>
						<th><a class="" href="save?action=save"><span
								class="material-icons md-24">add</span></a></th>
					</tr>

				</tfoot>
			</c:if>
			<c:forEach items="${list}" var="dept">
				<!-- Langage EL  -->
				<tr>

					<td>${dept.deptId}</td>
					<td>${dept.name}</td>
					<c:if test="${userrole.userRole == 'Admin'}">
						<td><a class="" href="visuel?id=${dept.deptId}"><span
								class="material-icons md-24">visibility</span></a></td>
						<td><a class="" href="edit?id=${dept.deptId}"><span
								class="material-icons md-24">edit</span> </a></td>

						<td><a class="" href="delete?id=${dept.deptId }"
							onclick="return confirm('are you sure ?');"> <span
								class="material-icons md-24">delete</span>
						</a></td>
					</c:if>
				</tr>
			</c:forEach>

		</tbody>

	</table>

</c:if>
</div>


	<!-- Bootstrap JS -->
	<script
		src="https://www.markuptag.com/bootstrap/5/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</body>