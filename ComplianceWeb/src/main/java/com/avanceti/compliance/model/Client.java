package com.avanceti.compliance.model;

import java.io.Serializable;
import java.util.Date;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
@Table(name = "clientes", catalog = "busqueda", schema = "")
@XmlRootElement
public class Client implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcliente")
    private Integer idcliente;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "nombrepropio1")
    private String nombrepropio1;
    @Size(max = 200)
    @Column(name = "nombrepropio2")
    private String nombrepropio2;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2000)
    @Column(name = "direccion1")
    private String direccion1;
    @Size(max = 2000)
    @Column(name = "direccion2")
    private String direccion2;
    @Size(max = 100)
    @Column(name = "ciudad")
    private String ciudad;
    @Size(max = 100)
    @Column(name = "departamento")
    private String departamento;
    @Size(max = 100)
    @Column(name = "municipio")
    private String municipio;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "telefono1")
    private String telefono1;
    @Size(max = 50)
    @Column(name = "telefono2")
    private String telefono2;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "telefonocontacto1")
    private String telefonocontacto1;
    @Size(max = 50)
    @Column(name = "telefonocontacto2")
    private String telefonocontacto2;
    @Size(max = 100)
    @Column(name = "numerodedependientes")
    private String numerodedependientes;
    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @Size(max = 200)
    @Column(name = "email")
    private String email;
    @Size(max = 100)
    @Column(name = "tipodeentidad")
    private String tipodeentidad;
    @Size(max = 100)
    @Column(name = "estado")
    private String estado;
    @Size(max = 100)
    @Column(name = "descripcion")
    private String descripcion;
    @Size(max = 100)
    @Column(name = "observacion")
    private String observacion;
    @Size(max = 100)
    @Column(name = "custom2")
    private String custom2;
    @Size(max = 100)
    @Column(name = "custom3")
    private String custom3;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "creadopor")
    private String creadopor;
    @Basic(optional = false)
    @NotNull
    @Column(name = "creadoel")
    @Temporal(TemporalType.TIMESTAMP)
    private Date creadoel;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "modificadopor")
    private String modificadopor;
    @Basic(optional = false)
    @NotNull
    @Column(name = "modificadoel")
    @Temporal(TemporalType.TIMESTAMP)
    private Date modificadoel;
   
    //@Fetch(value = FetchMode.SUBSELECT)
    //@OneToMany(cascade = CascadeType.ALL, mappedBy = "idcliente", fetch = FetchType.EAGER)
    @Transient
    private List<User> usuariosList;

    public Client() {
    }

    public Client(Integer idcliente) {
        this.idcliente = idcliente;
    }

    public Client(Integer idcliente, String nombrepropio1, String direccion1, String telefono1, String telefonocontacto1, String creadopor, Date creadoel, String modificadopor, Date modificadoel) {
        this.idcliente = idcliente;
        this.nombrepropio1 = nombrepropio1;
        this.direccion1 = direccion1;
        this.telefono1 = telefono1;
        this.telefonocontacto1 = telefonocontacto1;
        this.creadopor = creadopor;
        this.creadoel = creadoel;
        this.modificadopor = modificadopor;
        this.modificadoel = modificadoel;
    }

    public Integer getIdcliente() {
        return idcliente;
    }

    public void setIdcliente(Integer idcliente) {
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

    @XmlTransient
    public List<User> getUsuariosList() {
        return usuariosList;
    }

    public void setUsuariosList(List<User> usuariosList) {
        this.usuariosList = usuariosList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idcliente != null ? idcliente.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Client)) {
            return false;
        }
        Client other = (Client) object;
        if ((this.idcliente == null && other.idcliente != null) || (this.idcliente != null && !this.idcliente.equals(other.idcliente))) {
            return false;
        }
        return true;
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
				+ modificadoel + ", usuariosList=" + usuariosList + "]";
	}

	

	


	
}
