package com.avanceti.compliance.model;

import java.util.Date;

public class Profile {
	private int codperfil;
	private String descripcion;
	private String estado;
	private String observacion;
	private String custom1;
	private String custom2;
	private String custom3;
	private String creadopor;
	private Date creadoel;
	private String modificadopor;
	private Date modificadoel;
	
	
	public Profile()  {		
	}
	
	@Override
	public String toString() {
		return "Profile [codperfil=" + codperfil + ", descripcion=" + descripcion + ", estado=" + estado
				+ ", observacion=" + observacion + ", custom1=" + custom1 + ", custom2=" + custom2 + ", custom3="
				+ custom3 + ", creadopor=" + creadopor + ", creadoel=" + creadoel + ", modificadopor=" + modificadopor
				+ ", modificadoel=" + modificadoel + "]";
	}

	public int getCodperfil() {
		return codperfil;
	}

	public void setCodperfil(int codperfil) {
		this.codperfil = codperfil;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public String getEstado() {
		return estado;
	}

	public void setEstado(String estado) {
		this.estado = estado;
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
	
}
