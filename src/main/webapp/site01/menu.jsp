<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true" import="com.productos.negocio.*"%>
<!DOCTYPE  html>
<html lang="es">
<head>
<meta charset="utf-8">
<title>Apex Racing Store</title>
<!--Enlace css-->
<link rel="stylesheet" href="css/styles.css">
<link rel="shortcut icon" href="img/fav.png" type="image/x-icon">

</head>

<body background="img/fondo.jpg" style="background-repeat: no-repeat;
        background-attachment: fixed;
        background-size: 100% 100%;
        background-attachment: fixed;">
	<main>
		<%
		String usuario = "";
		HttpSession sesion = request.getSession();
		if (sesion.getAttribute("usuario") == null) {
		%>
		<jsp:forward page="login.jsp">
			<jsp:param name="error" value="Debe registrarse en el sistema." />
		</jsp:forward>
		<%
		} else {
			usuario = (String) sesion.getAttribute("usuario");
			Integer perfilObjeto = (Integer) sesion.getAttribute("perfil");
			int perfil = perfilObjeto.intValue();
			Pagina pag = new Pagina();
			String menu = pag.mostrarMenu(perfil);
			out.print("<div id=\"hpagina\"><p class=\"puser\">Bienvenido "+usuario+"</h3>"+menu+"</div>");
		}
		%>
	</main>
</body>
</html>
