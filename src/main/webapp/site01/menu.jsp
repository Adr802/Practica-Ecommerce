<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session="true" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MENU</title>
</head>
<body>
	<%
		String usuario="";
		HttpSession sesion = request.getSession();
		if(sesion.getAttribute("usuario")== null)
		 {
			 %>
	<jsp:forward page="login.jsp">
		<jsp:param name="error" value="Debe registrarse en el sistema." />
	</jsp:forward>
	<%
			 }
		else
		{
		out.print((String)sesion.getAttribute("usuario"));
		usuario=(String)sesion.getAttribute("usuario");
		int perfil=(Integer)sesion.getAttribute("perfil");
	%>
	<h1>Sitio Privado de Productos</h1>
	<h4>
		Bienvenido
		<%
			out.print(usuario);
		%>
	</h4>
	<%
	Pagina pag=new Pagina();
	String menu=pag.mostrarMenu(perfil);
	out.print(menu);	
	}%>
</body>
</html>
