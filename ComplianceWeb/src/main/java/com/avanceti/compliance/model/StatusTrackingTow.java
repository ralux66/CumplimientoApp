package com.avanceti.compliance.model;

import java.util.Date;

public class StatusTrackingTow {
	private int idstatus2;
	private String nombre;
	private String descripcion;
	private String referencia;
	private String custom1;
	private String custom2;
	private String custom3;
	private String creadopor;
	private Date creadoel;
	private String modificadopor;
	private Date modificadoel;
	
	
	
	public StatusTrackingTow() {
		super();
	}



	@Override
	public String toString() {
		return "StatusTrackingTow [idstatus2=" + idstatus2 + ", nombre=" + nombre + ", descripcion=" + descripcion
				+ ", referencia=" + referencia + ", custom1=" + custom1 + ", custom2=" + custom2 + ", custom3="
				+ custom3 + ", creadopor=" + creadopor + ", creadoel=" + creadoel + ", modificadopor=" + modificadopor
				+ ", modificadoel=" + modificadoel + "]";
	}



	public int getIdstatus2() {
		return idstatus2;
	}



	public void setIdstatus2(int idstatus2) {
		this.idstatus2 = idstatus2;
	}



	public String getNombre() {
		return nombre;
	}



	public void setNombre(String nombre) {
		this.nombre = nombre;
	}



	public String getDescripcion() {
		return descripcion;
	}



	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}



	public String getReferencia() {
		return referencia;
	}



	public void setReferencia(String referencia) {
		this.referencia = referencia;
	}



	public String getCustom1() {
		return custom1;
	}



	public void setCustom1(String custom1) {
		this.custom1 = custom1;
	}



	public String getCustom2() {
		return custom2;
	}



	public void setCustom2(String custom2) {
		this.custom2 = custom2;
	}



	public String getCustom3() {
		return custom3;
	}



	public void setCustom3(String custom3) {
		this.custom3 = custom3;
	}



	public String getCreadopor() {
		return creadopor;
	}



	public void setCreadopor(String creadopor) {
		this.creadopor = creadopor;
	}



	public Date getCreadoel() {
		return creadoel;
	}



	public void setCreadoel(Date creadoel) {
		this.creadoel = creadoel;
	}



	public String getModificadopor() {
		return modificadopor;
	}



	public void setModificadopor(String modificadopor) {
		this.modificadopor = modificadopor;
	}



	public Date getModificadoel() {
		return modificadoel;
	}



	public void setModificadoel(Date modificadoel) {
		this.modificadoel = modificadoel;
	}

}
