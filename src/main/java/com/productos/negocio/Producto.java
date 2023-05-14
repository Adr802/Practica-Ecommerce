package com.productos.negocio;

import com.productos.datos.*;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Producto {

	private int id;
	private int idcat;
	private String nombre;
	private int cantidad;
	private double precio;
	public Producto() {
		// TODO Auto-generated constructor stub
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
		String sentencia="SELECT descripcion_pr, precio_pr, dir_img FROM tb_producto WHERE id_cat="+cat;
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

}
