package com.avanceti.compliance.model;

import java.util.Date;

public class Tracking {
	private int idtracking;
	private String resultado;
	private String descripcion;
	private Date fechaasignacion;
	private Date fecharesolucion;
	private String observacion;
	private String custom1;
	private String custom2;
	private String custom3;
	private String creadopor;
	private Date creadoel;
	private String modificadopor;
	private Date modificadoel;
	private int idrcc;
	private int idstatus;
	private int idstatus2;
	
	
	
	public Tracking() {
		super();
	}



	@Override
	public String toString() {
		return "Tracking [idtracking=" + idtracking + ", resultado=" + resultado + ", descripcion=" + descripcion
				+ ", fechaasignacion=" + fechaasignacion + ", fecharesolucion=" + fecharesolucion + ", observacion="
				+ observacion + ", custom1=" + custom1 + ", custom2=" + custom2 + ", custom3=" + custom3
				+ ", creadopor=" + creadopor + ", creadoel=" + creadoel + ", modificadopor=" + modificadopor
				+ ", modificadoel=" + modificadoel + ", idrcc=" + idrcc + ", idstatus=" + idstatus + ", idstatus2="
				+ idstatus2 + "]";
	}



	public int getIdtracking() {
		return idtracking;
	}



	public void setIdtracking(int idtracking) {
		this.idtracking = idtracking;
	}



	public String getResultado() {
		return resultado;
	}



	public void setResultado(String resultado) {
		this.resultado = resultado;
	}



	public String getDescripcion() {
		return descripcion;
	}



	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}



	public Date getFechaasignacion() {
		return fechaasignacion;
	}



	public void setFechaasignacion(Date fechaasignacion) {
		this.fechaasignacion = fechaasignacion;
	}



	public Date getFecharesolucion() {
		return fecharesolucion;
	}



	public void setFecharesolucion(Date fecharesolucion) {
		this.fecharesolucion = fecharesolucion;
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



	public int getIdrcc() {
		return idrcc;
	}



	public void setIdrcc(int idrcc) {
		this.idrcc = idrcc;
	}



	public int getIdstatus() {
		return idstatus;
	}



	public void setIdstatus(int idstatus) {
		this.idstatus = idstatus;
	}



	public int getIdstatus2() {
		return idstatus2;
	}



	public void setIdstatus2(int idstatus2) {
		this.idstatus2 = idstatus2;
	}
	
}
