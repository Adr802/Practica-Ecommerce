package com.productos.negocio;

import com.productos.datos.*;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Producto {

	private int id;
	private int idcat;
	private String nombre;
	private int cantidad;
	private double precio;
	public Producto() {
		
	}
	public Producto(int cod, String nom, double pre, int cant) {
		// TODO Auto-generated constructor stub
		this.setCantidad(cant);
		this.setId(cod);
		this.setNombre(nom);
		this.setPrecio(pre);
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdcat() {
		return idcat;
	}
	public void setIdcat(int idcat) {
		this.idcat = idcat;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getCantidad() {
		return cantidad;
	}
	public void setCantidad(int cantidad) {
		this.cantidad = cantidad;
	}
	public double getPrecio() {
		return precio;
	}
	public void setPrecio(double precio) {
		this.precio = precio;
	}

	public String consultarTodo()
	{
		String sql="SELECT * FROM tb_producto ORDER BY id_pr";
		Conexion con=new Conexion();

		ResultSet rs=null;
		rs=con.Consulta(sql);

		String resul = "<div class=\"present_product\">";
		try {
			while(rs.next())
			{

				resul+="<div class=\"tarjeta_pro\"> <img src=\""
						+ rs.getString(6)+".jpg\"> <br><h3>"
						+ rs.getString(3) + "</h3>"
						+ "<p>$" + rs.getDouble(4)
						+ "</p></div>";


			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		resul+="</div>";
		return resul;
	}
	public String buscarProductoCategoria(int cat)
	{
		String sentencia="SELECT nombre_pr, precio_pr, dir_img FROM tb_producto WHERE id_cat="+cat;
		Conexion con=new Conexion();
		ResultSet rs=null;
		rs=con.Consulta(sentencia);

		String resul = "<div class=\"present_product\">";
		try {
			while(rs.next())
			{

				resul+="<div class=\"tarjeta_pro\"> <img src=\""
						+ rs.getString(3)+".jpg\"> <br><h3>"
						+ rs.getString(1) + "</h3>"
						+ "<p>$" + rs.getDouble(2)
						+ "</p></div>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		resul+="</div>";
		return resul;
	}
	
	public String consultarTabla()
	{
		String sql="SELECT * FROM tb_producto ORDER BY id_pr";
		Conexion con=new Conexion();
		String tabla="<table border=2><th>ID</th><th>Producto</th><th>Precio</th><th>Cantidad</th>";
		ResultSet rs=null;
		rs=con.Consulta(sql);
		try {
			while(rs.next())
			{
				tabla+="<tr><td>"+rs.getInt(1)+"</td>"
						+ "<td>"+rs.getString(3)+"</td>"
						+ "<td>"+rs.getDouble(4)+"</td>"
						+ "<td>"+rs.getInt(5)+"</td>"
						+ "<td> <a href= modificar.jsp?cod=" + rs.getInt(1) +"><pre style=\"text-align: center\">Modificar</pre></a></td>"
						+ "<td> <a href= eliminar.jsp?cod=" + rs.getInt(1) + " \"><pre style=\"text-align: center\">Eliminar</pre></a></td>"
						+ "</td></tr>";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		tabla+="</table>";
		return tabla;
	}
	
	

	public String ingresarProducto(int cat,String nombre, int cantidad, double precio)
	{
		String result="";
		Conexion con=new Conexion();
		PreparedStatement pr=null;
		String sql="INSERT INTO tb_producto (id_cat,"
				+ "nombre_pr,cantidad_pr,precio_pr,dir_img) "
				+ "VALUES(?,?,?,?,?)";
		try{
			pr=con.getConexion().prepareStatement(sql);
			pr.setInt(1,cat);
			pr.setString(2, nombre);
			pr.setInt(3, cantidad);
			pr.setDouble(4, precio);
			//File fichero=new File(directorio);
			//FileInputStream streamEntrada=new FileInputStream(fichero);
			//pr.setBinaryStream(6, streamEntrada,(int)fichero.length());
			pr.setString(5, "img/sindefinir");
			if(pr.executeUpdate()==1)
			{
				result="Inserción correcta";
			}
			else
			{
				result="Error en inserción";
			}
		}
		catch(Exception ex)
		{
			result=ex.getMessage();
		}
		finally
		{
			try
			{
				pr.close();
				con.getConexion().close();
			}
			catch(Exception ex)
			{
				System.out.print(ex.getMessage());
			}
		}
		return result;
	}
	
	public int verificarCategoria(String nom) {
		String sentencia="SELECT * FROM tb_categoria WHERE descripcion_cat='"+nom+"'";
		Conexion con=new Conexion();
		ResultSet rs=null;
		rs=con.Consulta(sentencia);
		int categoria=0;
		try {
			while(rs.next())
			{
				if(rs.getString(2).equals(nom)) {
					categoria=rs.getInt(1);
				}

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			System.out.print(e.getMessage());
		}
		return categoria;
	}
	
	public void consulEditarProducto(int cod) {
		Conexion obj = new Conexion();
		ResultSet rs = null;
		String sql = "SELECT * FROM tb_producto where id_pr = " + cod;
		
		try {
			rs=obj.Consulta(sql);
			while(rs.next()) {
				setId(cod);
				setIdcat(rs.getInt(2));
				setNombre(rs.getString(3));
				setCantidad(rs.getInt(4));
				setPrecio(rs.getFloat(5));
			}
		}catch (Exception e) {
			// TODO: handle exception
		}
	}
	
	public boolean updateProducto(Producto mp) {
		boolean agregado = true;
		Conexion obj = new Conexion();
		String sql="UPDATE tb_producto SET nombre_pr='" + mp.getNombre() + "', precio_pr='" + mp.getPrecio() + "',"
				    + "cantidad_pr = '" + mp.getCantidad() + "' WHERE id_pr=\'" + mp.getId() + "\'";
		try {
			obj.Ejecutar(sql);
			agregado = true;
		}catch (Exception e) {
			// TODO: handle exception
			agregado=false;
		}
		return agregado;
	}
	
	public boolean eliminarProducto(int cod) {
		boolean f = false;
		Conexion obj = new Conexion();
		String sql="DELETE FROM tb_producto WHERE id_pr='" + cod + "';";
		try {
			obj.Ejecutar(sql);
			f = true;
		}catch (Exception e) {
			// TODO: handle exception
			f=false;
		}
		return f;
	}
	
}
