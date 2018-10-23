package com.avanceti.compliance.model;

import java.util.Date;

public class CaseConsulted  {

	private int idcc;
	private int idcaso;
	private int nombres;
	private int apellidos;
	private int sexo;
	private Date fechanacimiento;
	private int dui;
	private int nit;
	private int custom1;
	private int custom2;
	private int custom3;
	private int creadopor;
	private Date creadoel;
	private int modificadopor;
	private Date modificadoel;
	private int idusr;
	private int idsdn;
	
	@Override
	public String toString() {
		return "CaseConsulted [idcc=" + idcc + ", idcaso=" + idcaso + ", nombres=" + nombres + ", apellidos="
				+ apellidos + ", sexo=" + sexo + ", fechanacimiento=" + fechanacimiento + ", dui=" + dui + ", nit="
				+ nit + ", custom1=" + custom1 + ", custom2=" + custom2 + ", custom3=" + custom3 + ", creadopor="
				+ creadopor + ", creadoel=" + creadoel + ", modificadopor=" + modificadopor + ", modificadoel="
				+ modificadoel + ", idusr=" + idusr + ", idsdn=" + idsdn + "]";
	}

	public int getIdcc() {
		return idcc;
	}

	public void setIdcc(int idcc) {
		this.idcc = idcc;
	}

	public int getIdcaso() {
		return idcaso;
	}

	public void setIdcaso(int idcaso) {
		this.idcaso = idcaso;
	}

	public int getNombres() {
		return nombres;
	}

	public void setNombres(int nombres) {
		this.nombres = nombres;
	}

	public int getApellidos() {
		return apellidos;
	}

	public void setApellidos(int apellidos) {
		this.apellidos = apellidos;
	}

	public int getSexo() {
		return sexo;
	}

	public void setSexo(int sexo) {
		this.sexo = sexo;
	}

	public Date getFechanacimiento() {
		return fechanacimiento;
	}

	public void setFechanacimiento(Date fechanacimiento) {
		this.fechanacimiento = fechanacimiento;
	}

	public int getDui() {
		return dui;
	}

	public void setDui(int dui) {
		this.dui = dui;
	}

	public int getNit() {
		return nit;
	}

	public void setNit(int nit) {
		this.nit = nit;
	}

	public int getCustom1() {
		return custom1;
	}

	public void setCustom1(int custom1) {
		this.custom1 = custom1;
	}

	public int getCustom2() {
		return custom2;
	}

	public void setCustom2(int custom2) {
		this.custom2 = custom2;
	}

	public int getCustom3() {
		return custom3;
	}

	public void setCustom3(int custom3) {
		this.custom3 = custom3;
	}

	public int getCreadopor() {
		return creadopor;
	}

	public void setCreadopor(int creadopor) {
		this.creadopor = creadopor;
	}
	
	public Date getCreadoel() {
		return creadoel;
	}

	public void setCreadoel(Date creadoel) {
		this.creadoel = creadoel;
	}

	public int getModificadopor() {
		return modificadopor;
	}

	public void setModificadopor(int modificadopor) {
		this.modificadopor = modificadopor;
	}

	public Date getModificadoel() {
		return modificadoel;
	}

	public void setModificadoel(Date modificadoel) {
		this.modificadoel = modificadoel;
	}

	public int getIdusr() {
		return idusr;
	}

	public void setIdusr(int idusr) {
		this.idusr = idusr;
	}

	public int getIdsdn() {
		return idsdn;
	}

	public void setIdsdn(int idsdn) {
		this.idsdn = idsdn;
	}
}