<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<head>
<title>Editeur</title>
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
									<a class="nav-link" href="#" style="color: white;"> Hello <c:out
											value="${user.username}" />
								</a>

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




	<div class="formulaire">
	<form action="edit" method="post">

	<h2>Formulaire d'édition</h2>
		<!-- Text input -->
		<div class="form-outline mb-4">

			<input type="hidden" name="id" value="${emp.empId}" />
		</div>
		<!-- 2 column grid layout with text inputs for the first and last names -->
		<div class="row mb-4">
			<div class="col">
				<div class="form-outline">
					<h6>Prénom</h6>
					<input type="text" name="firstname"
						value="<c:out value='${emp.firstName}' />" />
				</div>
			</div>

			<div class="col">
				<div class="form-outline">
					<h6>Nom</h6>
					<input type="text" name="lastname"
						value="<c:out value='${emp.lastName}' />" />
				</div>
			</div>
		</div>


		<!-- Text input -->
		<div class="form-outline mb-4">
			<h6>Titre</h6>
			<input type="text" name="title"
				value="<c:out value='${emp.title}' />" />
		</div>

		<!-- Text input -->
		<div class="form-outline mb-4">
			<h6>Date de début</h6>
			<input type="date" name="startdate"
				value="<c:out value='${emp.startDate}' />" />
		</div>

		<!-- Email input -->
		<div class="form-outline mb-4">
			<h6>Departement</h6>
			<input type="text" name="departement"
				value="<c:out value='${emp.department.name}' />" />
		</div>


		<!-- Submit button -->
		<button type="submit" class="btn btn-primary btn-block mb-4">Sauvegarder</button>
		<button class="btn btn-block mb-4" type="button" ><a href="javascript:history.go(-1)">Retour</a></button>
	</form>

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