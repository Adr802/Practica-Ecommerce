<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Nuevo Producto</title>
</head>
<body>

	<form method="post" action="respuestaProducto.jsp">
		<div class="ingreso-form">
			Categoria
			<%
				Categoria C = new Categoria();
				out.println(C.mostrarCategoria());
			%>
		</div>
		<div class="ingreso-form">
			Nombre: <input type="text" name="txtNombre" required="required">
		</div>
		<div class="ingreso-form">
			Cantidad <input type="number" name="nCantidad"  min="5"  required="required">
		</div>
		<div class="ingreso-form">
			Precio <input type="number" name="nPrecio" step="0.01" min="1" required="required">
		</div>

		<div class="ingreso-form">
			<input type="submit" value="Ingresar">
		</div>
	</form>
	<%
	String result = request.getParameter("result");
		if (result != null && !result.isEmpty()) {
		%>
			<%=result%>
		<%
		}
	%>
</body>
</html>