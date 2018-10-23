package com.avanceti.compliance.model;

import java.util.Date;

public class User {
	private int idusr;
	private String codusr;
	private String nombre;
	private String apellido;
	private String password;
	private String email;
	private String sexo;
	private String dui;
	private String nit;
	private String telefono;
	private Date fecha_nac;
	private String estado;
	private int solicita_email;
	private String observacion;
	private String custom1;
	private String custom2;
	private String custom3;
	private String creadopor;
	private Date creadoel;
	private String modificadopor;
	private Date modificadoel;
	private int idcliente;
	private int codperfil;
	
	
	
	public User() {
		
	}



	@Override
	public String toString() {
		return "User [idusr=" + idusr + ", codusr=" + codusr + ", nombre=" + nombre + ", apellido=" + apellido
				+ ", password=" + password + ", email=" + email + ", sexo=" + sexo + ", dui=" + dui + ", nit=" + nit
				+ ", telefono=" + telefono + ", fecha_nac=" + fecha_nac + ", estado=" + estado + ", solicita_email="
				+ solicita_email + ", observacion=" + observacion + ", custom1=" + custom1 + ", custom2=" + custom2
				+ ", custom3=" + custom3 + ", creadopor=" + creadopor + ", creadoel=" + creadoel + ", modificadopor="
				+ modificadopor + ", modificadoel=" + modificadoel + ", idcliente=" + idcliente + ", codperfil="
				+ codperfil + "]";
	}



	public int getIdusr() {
		return idusr;
	}



	public void setIdusr(int idusr) {
		this.idusr = idusr;
	}



	public String getCodusr() {
		return codusr;
	}



	public void setCodusr(String codusr) {
		this.codusr = codusr;
	}



	public String getNombre() {
		return nombre;
	}



	public void setNombre(String nombre) {
		this.nombre = nombre;
	}



	public String getApellido() {
		return apellido;
	}



	public void setApellido(String apellido) {
		this.apellido = apellido;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}



	public String getSexo() {
		return sexo;
	}



	public void setSexo(String sexo) {
		this.sexo = sexo;
	}



	public String getDui() {
		return dui;
	}



	public void setDui(String dui) {
		this.dui = dui;
	}



	public String getNit() {
		return nit;
	}



	public void setNit(String nit) {
		this.nit = nit;
	}



	public String getTelefono() {
		return telefono;
	}



	public void setTelefono(String telefono) {
		this.telefono = telefono;
	}



	public Date getFecha_nac() {
		return fecha_nac;
	}



	public void setFecha_nac(Date fecha_nac) {
		this.fecha_nac = fecha_nac;
	}



	public String getEstado() {
		return estado;
	}



	public void setEstado(String estado) {
		this.estado = estado;
	}



	public int getSolicita_email() {
		return solicita_email;
	}



	public void setSolicita_email(int solicita_email) {
		this.solicita_email = solicita_email;
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



	public int getIdcliente() {
		return idcliente;
	}



	public void setIdcliente(int idcliente) {
		this.idcliente = idcliente;
	}



	public int getCodperfil() {
		return codperfil;
	}



	public void setCodperfil(int codperfil) {
		this.codperfil = codperfil;
	}

}
