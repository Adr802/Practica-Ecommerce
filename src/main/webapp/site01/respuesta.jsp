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
					href="login.jsp">Registar</a>
			</nav>
		</header>
		<div id="contenido" style="margin-top: 100px;">
			<!-- CAPTURAR DATOS DEL REQUEST -->
			<p style="background-color: darkgrey; color: rgb(0, 0, 0);">
				<%
				out.print("Su nombre es " + request.getParameter("txtNombre") + "</br>");

				String cedula = request.getParameter("txtCedula");
				String estadoCivil = request.getParameter("cmbECivil");
				String residencia = request.getParameter("rdResidencia");
				String foto = request.getParameter("fileFoto");
				String color = request.getParameter("colorFavorito");

				String prov = cedula.substring(0, 2);
				String np = "";

				if (prov.equals("01"))
					np = "Azuay";
				else if (prov.equals("02"))
					np = "Bolivar";
				else if (prov.equals("03"))
					np = "Cañar";
				else if (prov.equals("04"))
					np = "Carchi";
				else if (prov.equals("05"))
					np = "Cotopaxi";
				else if (prov.equals("06"))
					np = "Chimborazo";
				else if (prov.equals("07"))
					np = "El Oro";
				else if (prov.equals("08"))
					np = "Esmeraldas";
				else if (prov.equals("09"))
					np = "Guayas";
				else if (prov.equals("10"))
					np = "Imbabura";
				else if (prov.equals("11"))
					np = "Loja";
				else if (prov.equals("12"))
					np = "Los Rios";
				else if (prov.equals("13"))
					np = "Manabi";
				else if (prov.equals("14"))
					np = "Morona Santiago";
				else if (prov.equals("15"))
					np = "Napo";
				else if (prov.equals("16"))
					np = "Pastaza";
				else if (prov.equals("17"))
					np = "Pichincha";
				else if (prov.equals("18"))
					np = "Tungurahua";
				else if (prov.equals("19"))
					np = "Zamora Chinchipe";
				else if (prov.equals("20"))
					np = "Galapagos";
				else if (prov.equals("21"))
					np = "Sucumbios";
				else if (prov.equals("22"))
					np = "Orellana";
				else if (prov.equals("23"))
					np = "Santo Domingo de los  Tsachilas";
				else if (prov.equals("24"))
					np = "Santa Elena";
				%>
				<%=cedula%></br>
				<%
				out.print("Su provincia es " + np);
				%>
				</br> Su estado civil es
				<%=estadoCivil%>
				</br> <u><%=foto%></u>
				<%
				out.print("Su fecha de naciemiento ");
				%><strong> <%
				out.print(request.getParameter("fecha"));
				%>
				</strong> </br> <strong><font color=<%=color%>>Este es tu color
						favorito</font></strong>
			<p style="background-color: darkgrey;" style="color: rgb(0, 0, 0);"
				id="resultado"></p>
			</p>
			<script>
				function calcularEdad() {
					var fechaNacimiento = new Date();
					fechaNacimiento
							.setFullYear(
									parseInt(
			<%=request.getParameter("fecha").substring(0, 4)%>
				),
									parseInt(
			<%=request.getParameter("fecha").substring(5, 7)%>
				),
									parseInt(
			<%=request.getParameter("fecha").substring(8, 10)%>
				));
					const hoy = new Date();
					String
					edad = hoy.getFullYear() - fechaNacimiento.getFullYear();
					console.log("f: " + fechaNacimiento.getMonth());
					if (hoy.getMonth() < fechaNacimiento.getMonth()) {
						edad--;
					}
					document.getElementById("resultado").textContent = "Tienes "
							+ edad + " años";
				}
				calcularEdad();
			</script>
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