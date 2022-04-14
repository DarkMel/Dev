<!DOCTYPE html>
<%@page import="java.util.Date"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<head>
<title>Authentification</title>
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
					<ul class="nav navbar-nav flex-grow-1 ml-auto">
						<li class="nav-item" role="presentation"><a class="nav-link"
							href="#"><i class="fa fa-apple apple-logo"></i></a></li>
						
							<li class="nav-item " role="presentation"><a class="nav-link"
								href="login?action=authent">Login</a></li>
					
					</ul>
				</div>
			</div>
		</nav>
	</header>


	<!-- AUTHENTIFICATION -->

	<div class="wrapper">
		<div class="logo">
			<img
				src="https://www.freepnglogos.com/uploads/twitter-logo-png/twitter-bird-symbols-png-logo-0.png"
				alt="">
		</div>
		<div class="text-center mt-4 name">Piou Piou !</div>
		<form class="p-3 mt-3" action="login" method="post">
			<div class="form-field d-flex align-items-center">
				<span class="far fa-user"></span> <input type="text" name="username"
					id="name" placeholder="Username">
			</div>
			<div class="form-field d-flex align-items-center">
				<span class="fas fa-key"></span> <input type="password"
					name="password" id="pwd" placeholder="Password">
			</div>
			<button class="btn mt-3" type="submit" >Login</button>
		</form>
<!-- 		<div class="text-center fs-6">
			<a href="#">Forget password?</a> or <a href="#">Sign up</a>
		</div> -->
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