package com.test.domain;

// default package
// Generated 30-jul-2015 14:50:51 by Hibernate Tools 3.4.0.CR1

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="compra")
public class Compra {
	@Id
	@GeneratedValue
	private Integer id;
	private int idProveedor;
	private Date fecha;
	private float monto;

	public Compra() {
	}

	public Compra(int idProveedor, Date fecha, float monto) {
		this.idProveedor = idProveedor;
		this.fecha = fecha;
		this.monto = monto;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public int getIdProveedor() {
		return this.idProveedor;
	}

	public void setIdProveedor(int idProveedor) {
		this.idProveedor = idProveedor;
	}

	public Date getFecha() {
		return this.fecha;
	}

	public void setFecha(Date fecha) {
		this.fecha = fecha;
	}

	public float getMonto() {
		return this.monto;
	}

	public void setMonto(float monto) {
		this.monto = monto;
	}

}
