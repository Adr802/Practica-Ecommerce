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

			<section>
				<form action="respuesta.jsp" method="post" id="formulario" class="table_center">
					<table border=1>
						<tr>
							<td>Nombre:</td>
							<td><input type="text" name="txtNombre" /></td>
						</tr>
						<tr>
							<td>Cédula:</td>
							<td><input type="text" name="txtCedula" maxlength="10" /></td>
						</tr>
						<tr>
							<td>Estado Civil:</td>
							<td><select name="cmbECivil">
									<option value="Soltero">Soltero</option>
						  			<option value="Casado">Casado</option>
									<option value="Divorciado">Divorciado</option>
									<option value="Viudo">Viudo</option>
							</select></td>
						</tr>
						<tr>
							<td>Lugar de residencia:</td>
							<td><input type="radio" name="rdResidencia" value="Sur" />Sur
								<input type="radio" name="rdResidencia" value="Norte" />Norte <input
								type="radio" name="rdResidencia" value="Centro" />Centro</td>
						</tr>
						<tr>
							<td>Foto:</td>
							<td><input type="file" name="fileFoto"
								accept=".jpg, .jpeg, .png" /></td>
						</tr>
						<tr>
							<td>Mes y año de nacimiento:</td>
							<td><input type="date" name="fecha" /></td>
						</tr>
						<tr>
							<td>Color favorito:</td>
							<td><input type="color" name="colorFavorito" /></td>
						</tr>
						<tr>
							<td><input type="submit" /></td>
							<td><input type="reset" /></td>
						</tr>
					</table>
				</form>
			</section>
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