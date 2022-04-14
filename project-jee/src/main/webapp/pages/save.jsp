<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<head>
<title>Ajout employé</title>
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




	<div class="formulaire">
	<h2>Formulaire</h2>
<form action="save" method ="post">
  <!-- 2 column grid layout with text inputs for the first and last names -->
  <div class="row mb-4">
    <div class="col">
      <div class="form-outline">
        <label class="form-label" for="form6Example1">Prénom</label>
        <input type="text" id="form6Example1" name="firstname" class="form-control" />
      </div>
    </div>
    <div class="col">
      <div class="form-outline">
        <label class="form-label" for="form6Example2">Nom</label>
        <input type="text" id="form6Example2" name="lastname" class="form-control" />
      </div>
    </div>
  </div>

  <!-- Text input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form6Example3">Titre</label>
    <input type="text" id="form6Example3" name="title" class="form-control" />
  </div>

  <!-- Text input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form6Example4">Date de début</label>
    <input type="date" id="form6Example4" name ="startdate" class="form-control" />
  </div>

  <!-- Email input -->
  <div class="form-outline mb-4">
    <label class="form-label" for="form6Example5">Departement</label>
    <input type="text" id="form6Example5" name ="departement" class="form-control"/>
 

    
  </div>



  <!-- Submit button -->
  <button type="submit" class="btn btn-primary btn-block mb-4">Ajouter l'employé</button>
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