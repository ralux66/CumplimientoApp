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
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

@Entity
@Table(name = "perfiles", catalog = "busqueda", schema = "")
@XmlRootElement
public class Profile implements Serializable {
	  private static final long serialVersionUID = 1L;
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Basic(optional = false)
	    @Column(name = "idperfil")
	    private Integer idperfil;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 200)
	    @Column(name = "descripcion")
	    private String descripcion;
	    @Size(max = 15)
	    @Column(name = "estado")
	    private String estado;
	    @Size(max = 200)
	    @Column(name = "observacion")
	    private String observacion;
	    @Size(max = 100)
	    @Column(name = "custom1")
	    private String custom1;
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
	    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idperfil", fetch = FetchType.LAZY)
	    private List<ModulosPerfiles> modulosPerfilesList;
	    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idperfil", fetch = FetchType.LAZY)
	    private List<User> usuariosList;

	    public Profile() {
	    }

	    public Profile(Integer idperfil) {
	        this.idperfil = idperfil;
	    }

	    public Profile(Integer idperfil, String descripcion, String creadopor, Date creadoel, String modificadopor, Date modificadoel) {
	        this.idperfil = idperfil;
	        this.descripcion = descripcion;
	        this.creadopor = creadopor;
	        this.creadoel = creadoel;
	        this.modificadopor = modificadopor;
	        this.modificadoel = modificadoel;
	    }

	    public Integer getIdperfil() {
	        return idperfil;
	    }

	    public void setIdperfil(Integer idperfil) {
	        this.idperfil = idperfil;
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

	    @XmlTransient
	    public List<ModulosPerfiles> getModulosPerfilesList() {
	        return modulosPerfilesList;
	    }

	    public void setModulosPerfilesList(List<ModulosPerfiles> modulosPerfilesList) {
	        this.modulosPerfilesList = modulosPerfilesList;
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
	        hash += (idperfil != null ? idperfil.hashCode() : 0);
	        return hash;
	    }

	    @Override
	    public boolean equals(Object object) {
	        // TODO: Warning - this method won't work in the case the id fields are not set
	        if (!(object instanceof Profile)) {
	            return false;
	        }
	        Profile other = (Profile) object;
	        if ((this.idperfil == null && other.idperfil != null) || (this.idperfil != null && !this.idperfil.equals(other.idperfil))) {
	            return false;
	        }
	        return true;
	    }

	    @Override
	    public String toString() {
	        return "com.compliance.model.Perfiles[ idperfil=" + idperfil + " ]";
	    }
	
}
