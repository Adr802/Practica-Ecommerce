<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true" import="com.productos.negocio.*"%>
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

		<div id="contenido" style="margin-top: 100px;">
			<!-- CAPTURAR DATOS DEL REQUEST -->
				<%
				
				String nombre = request.getParameter("txtNombre");
				String cedula = request.getParameter("txtCedula");
				String usuario = request.getParameter("txtUsuario");
				String clave = request.getParameter("txtPass");
				String anio = "18	";
				String correo = request.getParameter("txtCorreo");
				String direccion = request.getParameter("txtDireccion");
				Usuario user = new Usuario();
				boolean verificar = user.verificarExistencia(cedula);
				if(verificar){
					user.insertarUsuario(nombre, cedula, usuario, clave, anio, correo, direccion);
					%>
						<h3>PUEDE INSCRIBIRSE</h3>
					<%
				}else{
					%>
					<h3>NO PUEDE INSCRBIRSE</h3>
					<%
				}
				
				
				%>
			
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