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
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

@Entity
@Table(name = "usuarios", catalog = "busqueda", schema = "")
@XmlRootElement
public class User implements Serializable {
	 private static final long serialVersionUID = 1L;
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Basic(optional = false)
	    @Column(name = "idusr")
	    private Integer idusr;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 50)
	    @Column(name = "codusr")
	    private String codusr;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 100)
	    @Column(name = "nombre")
	    private String nombre;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 100)
	    @Column(name = "apellido")
	    private String apellido;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 1000)
	    @Column(name = "password")
	    private String password;
	    // @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 200)
	    @Column(name = "email")
	    private String email;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 100)
	    @Column(name = "sexo")
	    private String sexo;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 15)
	    @Column(name = "dui")
	    private String dui;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 20)
	    @Column(name = "nit")
	    private String nit;
	    @Size(max = 15)
	    @Column(name = "telefono")
	    private String telefono;
	    @Basic(optional = false)
	    @NotNull
	    @Column(name = "fecha_nac")
	    @Temporal(TemporalType.TIMESTAMP)
	    private Date fechaNac;
	    @Size(max = 15)
	    @Column(name = "estado")
	    private String estado;
	    @Basic(optional = false)
	    @NotNull
	    @Column(name = "solicita_email")
	    private short solicitaEmail;
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
	    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idusr", fetch = FetchType.LAZY)
	    private List<RolesUsuarios> rolesUsuariosList;
	    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idusr", fetch = FetchType.LAZY)
	    private List<CaseConsulted> casoconsultaList;
	    @JoinColumn(name = "idperfil", referencedColumnName = "idperfil")
	    @ManyToOne(optional = false, fetch = FetchType.LAZY)
	    private Profile idperfil;
	    @JoinColumn(name = "idcliente", referencedColumnName = "idcliente")
	    @ManyToOne(optional = false, fetch = FetchType.LAZY)
	    private Client idcliente;

	    public User() {
	    }

	    public User(Integer idusr) {
	        this.idusr = idusr;
	    }

	    public User(Integer idusr, String codusr, String nombre, String apellido, String password, String email, String sexo, String dui, String nit, Date fechaNac, short solicitaEmail, String creadopor, Date creadoel, String modificadopor, Date modificadoel) {
	        this.idusr = idusr;
	        this.codusr = codusr;
	        this.nombre = nombre;
	        this.apellido = apellido;
	        this.password = password;
	        this.email = email;
	        this.sexo = sexo;
	        this.dui = dui;
	        this.nit = nit;
	        this.fechaNac = fechaNac;
	        this.solicitaEmail = solicitaEmail;
	        this.creadopor = creadopor;
	        this.creadoel = creadoel;
	        this.modificadopor = modificadopor;
	        this.modificadoel = modificadoel;
	    }

	    public Integer getIdusr() {
	        return idusr;
	    }

	    public void setIdusr(Integer idusr) {
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

	    public Date getFechaNac() {
	        return fechaNac;
	    }

	    public void setFechaNac(Date fechaNac) {
	        this.fechaNac = fechaNac;
	    }

	    public String getEstado() {
	        return estado;
	    }

	    public void setEstado(String estado) {
	        this.estado = estado;
	    }

	    public short getSolicitaEmail() {
	        return solicitaEmail;
	    }

	    public void setSolicitaEmail(short solicitaEmail) {
	        this.solicitaEmail = solicitaEmail;
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
	    public List<RolesUsuarios> getRolesUsuariosList() {
	        return rolesUsuariosList;
	    }

	    public void setRolesUsuariosList(List<RolesUsuarios> rolesUsuariosList) {
	        this.rolesUsuariosList = rolesUsuariosList;
	    }

	    @XmlTransient
	    public List<CaseConsulted> getCasoconsultaList() {
	        return casoconsultaList;
	    }

	    public void setCasoconsultaList(List<CaseConsulted> casoconsultaList) {
	        this.casoconsultaList = casoconsultaList;
	    }

	    public Profile getIdperfil() {
	        return idperfil;
	    }

	    public void setIdperfil(Profile idperfil) {
	        this.idperfil = idperfil;
	    }

	    public Client getIdcliente() {
	        return idcliente;
	    }

	    public void setIdcliente(Client idcliente) {
	        this.idcliente = idcliente;
	    }

	    @Override
	    public int hashCode() {
	        int hash = 0;
	        hash += (idusr != null ? idusr.hashCode() : 0);
	        return hash;
	    }

	    @Override
	    public boolean equals(Object object) {
	        // TODO: Warning - this method won't work in the case the id fields are not set
	        if (!(object instanceof User)) {
	            return false;
	        }
	        User other = (User) object;
	        if ((this.idusr == null && other.idusr != null) || (this.idusr != null && !this.idusr.equals(other.idusr))) {
	            return false;
	        }
	        return true;
	    }

	    @Override
	    public String toString() {
	        return "com.compliance.model.Usuarios[ idusr=" + idusr + " ]";
	    }
	    

}
