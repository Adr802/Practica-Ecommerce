<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="es">
<head>
<meta charset="utf-8">
<title>Apex Racing Store</title>
<!--Enlace css-->
<link rel="stylesheet" href="css/styles.css">
<link rel="shortcut icon" href="img/fav.png" type="image/x-icon">

</head>

<body>
	<main>
		<header>
			<img src="img/logo.png" alt="Logo de la tienda" id="logo-header">
			<h1 id="titulo">
				<a href="index.jsp">APEX RACING</a>
			</h1>
			<nav class="menu">
				<a href="index.jsp">Inicio</a> <a href="catalogo.jsp">Ver
					Productos</a> <a href="busqueda.jsp">Buscar por categoria</a> <a
					href="login.jsp">Iniciar Sesion</a>
			</nav>
		</header>
		
		<div class="table_center">
			<form method="post" id="login-form" action="verificarLogin.jsp">
				<h3>INICIAR SESION</h3>
				<p>Usuario: </p><input type="text" name="txtUser" required="required"> 
				<p>Contraseña: </p><input type="password" name="txtPass" required="required"> 
				<input type="submit" value="Iniciar Sesion" id="btnIniciar">
				<p>¿No tienes cuenta? <a href="registro.jsp">Registrate</a></p>
			</form>
		</div>
		
		<%
		String error = request.getParameter("error");
		if (error != null && !error.isEmpty()) {
		%>
		<div class="error-message">
			<%=error%>
		</div>
		<%
		}
		%>
		
		<footer>
			<div id="div_logos">
				<a href="https://www.facebook.com/" target="_blank"><img
					src="img/facebook.png" class="logo-footer"></a> <a
					href="https://www.instagram.com/" target="_blank"><img
					src="img/instagram.png" class="logo-footer"></a> <a
					href="https://wa.me/593986987431?text=Â¡Hola!%20Quiero%20informaciÃ³n%20sobre%20un%20producto."
					target="_blank"><img src="img/whatsapp.png" class="logo-footer"></a>
				<a href="https://www.tiktok.com/es/" target="_blank"><img
					src="img/tiktok.png" class="logo-footer"></a>
			</div>
		</footer>
	</main>
</body>
</html>