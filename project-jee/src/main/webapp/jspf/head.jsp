
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
	<!-- Brand -->
	<a class="navbar-brand" href="#">Gestion-RH</a>

	<!-- Links -->
	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link" href="example.jsp">example.jsp</a>
		</li>
		<li class="nav-item"><a class="nav-link" href="pageasError.jsp">pageasError.jsp</a>
		</li>

		<!-- Dropdown -->
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			href="#" id="navbardrop" data-toggle="dropdown"> Action standard
		</a>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="/action/jspinclude.jsp">include</a> 
				<a class="dropdown-item" href="action/useBean.jsp">useBean</a> 
				<a class="dropdown-item" href="#">Bootstrap</a>
			</div></li>
			
				<!-- Dropdown -->
		<li class="nav-item dropdown"><a class="nav-link dropdown-toggle"
			href="#" id="navbardrop" data-toggle="dropdown"> JSTL
		</a>
			<div class="dropdown-menu">
				<a class="dropdown-item" href="dept?action=forEach">forEach</a> <!-- ici on met url de la servlet : dept -->
					<a class="dropdown-item" href="dept?action=if">if</a> 
					<a class="dropdown-item" href="dept?action=choose">choose</a> 
			</div></li>
	</ul>
	<!-- Right -->
	<ul class="navbar-nav ml-auto">

		<li class="nav-item"><a class="nav-link" href="login.html">Login</a>
		</li>
	</ul>
</nav>
