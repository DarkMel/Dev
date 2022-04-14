<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<head>
<title>Menu Principal</title>
<meta charset="UTF-8" />
<!-- sert pour le référenement -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
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
							href="emp?action=employe">Employ�s</a></li>
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

	;



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