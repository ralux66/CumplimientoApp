package com.avanceti.compliance.model;

import java.util.Date;

public class Menu {
	private int idmenu;
	private int codmenu;
	private String nombremenu;
	private String observacion;
	private String custom1;
	private String custom2;
	private String custom3;
	private String creadopor;
	private Date creadoel;
	private String modificadopor;
	private Date modificadoel;
	private int codperfil;
	
	public Menu() {
		
	}
	
	
	@Override
	public String toString() {
		return "Menu [idmenu=" + idmenu + ", codmenu=" + codmenu + ", nombremenu=" + nombremenu + ", observacion="
				+ observacion + ", custom1=" + custom1 + ", custom2=" + custom2 + ", custom3=" + custom3
				+ ", creadopor=" + creadopor + ", creadoel=" + creadoel + ", modificadopor=" + modificadopor
				+ ", modificadoel=" + modificadoel + ", codperfil=" + codperfil + "]";
	}



	public int getIdmenu() {
		return idmenu;
	}

	public void setIdmenu(int idmenu) {
		this.idmenu = idmenu;
	}

	public int getCodmenu() {
		return codmenu;
	}

	public void setCodmenu(int codmenu) {
		this.codmenu = codmenu;
	}

	public String getNombremenu() {
		return nombremenu;
	}

	public void setNombremenu(String nombremenu) {
		this.nombremenu = nombremenu;
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

	public int getCodperfil() {
		return codperfil;
	}

	public void setCodperfil(int codperfil) {
		this.codperfil = codperfil;
	}
}
