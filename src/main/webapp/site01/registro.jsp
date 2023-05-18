<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true" import="java.time.LocalDate"%>
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
			<form action="respuesta.jsp" method="post" id="registro-form">
				<div>
					Nombre: <input type="text" name="txtNombre"  />
				</div>
				<div>
					Cédula: <input type="text" name="txtCedula" maxlength="10" />
				</div>

				<div>
					Usuario: <input type="text" name="txtUsuario"  />
				</div>

				<div>
					Contraseña: <input type="password" name="txtPass" />
				</div>

				<div>
					Mes y año de nacimiento:
					<input type="date" name="fecha" max="<%= LocalDate.now() %>"
						required="required" />
				</div>

				<div>
					Correo:<input type="text" name="txtCorreo"  />
					
				</div>

				<div>
					Direccion:<input type="text" name="txtDireccion"  />
					
				</div>

				<div>
					<input type="submit" value="Registrarse" /> <input type="reset" />
				</div>

			</form>
		</div>
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