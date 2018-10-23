package com.avanceti.compliance.model;

import java.util.Date;

public class Client {
	private int idcliente;
	private String nombrepropio1;
	private String nombrepropio2;
	private String direccion1;
	private String direccion2;
	private String ciudad;
	private String departamento;
	private String municipio;
	private String telefono1;
	private String telefono2;
	private String telefonocontacto1;
	private String telefonocontacto2;
	private String numerodedependientes;
	private String email;
	private String tipodeentidad;
	private String estado;
	private String descripcion;
	private String observacion;
	private String custom2;
	private String custom3;
	private String creadopor;
	private Date creadoel;
	private String modificadopor;
	private Date modificadoel;
		
	public Client() {
		
	}
	
	@Override
	public String toString() {
		return "Client [idcliente=" + idcliente + ", nombrepropio1=" + nombrepropio1 + ", nombrepropio2="
				+ nombrepropio2 + ", direccion1=" + direccion1 + ", direccion2=" + direccion2 + ", ciudad=" + ciudad
				+ ", departamento=" + departamento + ", municipio=" + municipio + ", telefono1=" + telefono1
				+ ", telefono2=" + telefono2 + ", telefonocontacto1=" + telefonocontacto1 + ", telefonocontacto2="
				+ telefonocontacto2 + ", numerodedependientes=" + numerodedependientes + ", email=" + email
				+ ", tipodeentidad=" + tipodeentidad + ", estado=" + estado + ", descripcion=" + descripcion
				+ ", observacion=" + observacion + ", custom2=" + custom2 + ", custom3=" + custom3 + ", creadopor="
				+ creadopor + ", creadoel=" + creadoel + ", modificadopor=" + modificadopor + ", modificadoel="
				+ modificadoel + "]";
	}
	public int getIdcliente() {
		return idcliente;
	}
	public void setIdcliente(int idcliente) {
		this.idcliente = idcliente;
	}
	public String getNombrepropio1() {
		return nombrepropio1;
	}
	public void setNombrepropio1(String nombrepropio1) {
		this.nombrepropio1 = nombrepropio1;
	}
	public String getNombrepropio2() {
		return nombrepropio2;
	}
	public void setNombrepropio2(String nombrepropio2) {
		this.nombrepropio2 = nombrepropio2;
	}
	public String getDireccion1() {
		return direccion1;
	}
	public void setDireccion1(String direccion1) {
		this.direccion1 = direccion1;
	}
	public String getDireccion2() {
		return direccion2;
	}
	public void setDireccion2(String direccion2) {
		this.direccion2 = direccion2;
	}
	public String getCiudad() {
		return ciudad;
	}
	public void setCiudad(String ciudad) {
		this.ciudad = ciudad;
	}
	public String getDepartamento() {
		return departamento;
	}
	public void setDepartamento(String departamento) {
		this.departamento = departamento;
	}
	public String getMunicipio() {
		return municipio;
	}
	public void setMunicipio(String municipio) {
		this.municipio = municipio;
	}
	public String getTelefono1() {
		return telefono1;
	}
	public void setTelefono1(String telefono1) {
		this.telefono1 = telefono1;
	}
	public String getTelefono2() {
		return telefono2;
	}
	public void setTelefono2(String telefono2) {
		this.telefono2 = telefono2;
	}
	public String getTelefonocontacto1() {
		return telefonocontacto1;
	}
	public void setTelefonocontacto1(String telefonocontacto1) {
		this.telefonocontacto1 = telefonocontacto1;
	}
	public String getTelefonocontacto2() {
		return telefonocontacto2;
	}
	public void setTelefonocontacto2(String telefonocontacto2) {
		this.telefonocontacto2 = telefonocontacto2;
	}
	public String getNumerodedependientes() {
		return numerodedependientes;
	}
	public void setNumerodedependientes(String numerodedependientes) {
		this.numerodedependientes = numerodedependientes;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getTipodeentidad() {
		return tipodeentidad;
	}
	public void setTipodeentidad(String tipodeentidad) {
		this.tipodeentidad = tipodeentidad;
	}
	public String getEstado() {
		return estado;
	}
	public void setEstado(String estado) {
		this.estado = estado;
	}
	public String getDescripcion() {
		return descripcion;
	}
	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}
	public String getObservacion() {
		return observacion;
	}
	public void setObservacion(String observacion) {
		this.observacion = observacion;
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
