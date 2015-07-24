package com.test.domain;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name="producto")//Este nombre debe ser igual a la base de datos
public class Producto {

	@Id
	@GeneratedValue
	@Column(name="id")
	private int id;
	private String nombre;
	private int stock;
	private boolean activo;
	private Set<ProductoProveedor> productosProveedores = new HashSet<ProductoProveedor>(0);
	
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	public boolean isActivo() {
		return activo;
	}
	public void setActivo(boolean activo) {
		this.activo = activo;
	}
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "pk.producto", cascade=CascadeType.ALL)
	public Set<ProductoProveedor> getProductosProveedores() {
		return productosProveedores;
	}
	public void setProductosProveedores(Set<ProductoProveedor> productosProveedores) {
		this.productosProveedores = productosProveedores;
	}

	  
	
}
