package com.avanceti.compliance.model;

import java.util.Date;

public class ReturnCaseConsulted {
	private int idrcc;
	private String registro;
	private String resultado;
	private String nombresdn;
	private String descripcion;
	private Date fechaconsulta;
	private String observacion;
	private String custom1;
	private String custom2;
	private String custom3;
	private String creadopor;
	private Date creadoel;
	private String modificadopor;
	private Date modificadoel;
	private int idcc;
	
	
	
	public ReturnCaseConsulted() {
	
	}



	@Override
	public String toString() {
		return "ReturnCaseConsulted [idrcc=" + idrcc + ", registro=" + registro + ", resultado=" + resultado
				+ ", nombresdn=" + nombresdn + ", descripcion=" + descripcion + ", fechaconsulta=" + fechaconsulta
				+ ", observacion=" + observacion + ", custom1=" + custom1 + ", custom2=" + custom2 + ", custom3="
				+ custom3 + ", creadopor=" + creadopor + ", creadoel=" + creadoel + ", modificadopor=" + modificadopor
				+ ", modificadoel=" + modificadoel + ", idcc=" + idcc + "]";
	}



	public int getIdrcc() {
		return idrcc;
	}



	public void setIdrcc(int idrcc) {
		this.idrcc = idrcc;
	}



	public String getRegistro() {
		return registro;
	}



	public void setRegistro(String registro) {
		this.registro = registro;
	}



	public String getResultado() {
		return resultado;
	}



	public void setResultado(String resultado) {
		this.resultado = resultado;
	}



	public String getNombresdn() {
		return nombresdn;
	}



	public void setNombresdn(String nombresdn) {
		this.nombresdn = nombresdn;
	}



	public String getDescripcion() {
		return descripcion;
	}



	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}



	public Date getFechaconsulta() {
		return fechaconsulta;
	}



	public void setFechaconsulta(Date fechaconsulta) {
		this.fechaconsulta = fechaconsulta;
	}



	public String getObservacion() {
		return observacion;
	}



	public void setObservacion(String observacion) {
		this.observacion = observacion;
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



	public int getIdcc() {
		return idcc;
	}



	public void setIdcc(int idcc) {
		this.idcc = idcc;
	}
	
}
