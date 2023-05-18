<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.productos.negocio.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>RespuestaProducto</title>
</head>
<body>
<div id="contenido" style="margin-top: 100px;">
			<!-- CAPTURAR DATOS DEL REQUEST -->
		<%
			String valorc=request.getParameter("cmbCategoria");
			String[][] items = {
			    {"1", "Circuitos"},
			    {"2", "Accesorios"},
			    {"3", "Merchandising"},
			    {"4", "Coches"}
			};
			String nombrec = "Nombre por defecto"; // Valor por defecto si no se encuentra una coincidencia
			for (int i = 0; i < items.length; i++) {
			    String[] item = items[i];
			    if (item[0].equals(valorc)) {
			        nombrec = item[1];
			        break;
			    }
			}
			String nombre = request.getParameter("txtNombre");
			String cantidad = request.getParameter("nCantidad");
			String precio = request.getParameter("nPrecio");
			String imagen;
			Producto p = new Producto();
			String result = p.ingresarProducto(p.verificarCategoria(nombrec), nombre, Integer.parseInt(cantidad), Double.parseDouble(precio));
			
		%>
		<jsp:forward page="nuevoProducto.jsp">
		<jsp:param name="result"
			value= "<%=result %>" />
	</jsp:forward>
		</div>
</body>
</html>