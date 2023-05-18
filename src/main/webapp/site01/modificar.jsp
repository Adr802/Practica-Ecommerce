<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Modificar</title>
</head>
<body>
	<%
	int cod = Integer.parseInt(request.getParameter("cod"));
	Producto mp = new Producto();
	mp.consulEditarProducto(cod);
%>
	<form action="editar.jsp" method="post">
		<table>
			<tr>
				<td>Codigo Producto:</td>
				<td><input type="text" name="editarcod" value="<%= cod%>"></td>
			</tr>

			<tr>
				<td>Categoria</td>
				<td><output>
						<%=mp.getIdcat()%>
					</output></td>
			</tr>
			<tr>
				<td>Descripcion</td>
				<td><input type="text" name="editardesc" value="<%=mp.getNombre()%>"/></td>

			</tr>
			<tr>
				<td>Precio</td>
				<td><input type="text" name="editarprec" value="<%= mp.getPrecio()%>" /></td>
			</tr>

			<tr>
			<td>Cantidad</td>
			<td><input type="text" name="editarcant" value="<%=mp.getCantidad()%>"/></td>
			</tr>
		</table>
		<br /> <br /> <input type="submit" name="Actualizar" />
	</form>

</body>
</html>