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
import javax.xml.bind.annotation.XmlTransient;

@Entity
@Table(name = "casoconsulta", catalog = "busqueda", schema = "")
public class CaseConsulted  implements Serializable  {

	 private static final long serialVersionUID = 1L;
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Basic(optional = false)
	    @Column(name = "idcc")
	    private Integer idcc;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 100)
	    @Column(name = "idcaso")
	    private String idcaso;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 200)
	    @Column(name = "nombres")
	    private String nombres;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 200)
	    @Column(name = "apellidos")
	    private String apellidos;
	    @Size(max = 2)
	    @Column(name = "sexo")
	    private String sexo;
	    @Column(name = "fechanacimiento")
	    @Temporal(TemporalType.TIMESTAMP)
	    private Date fechanacimiento;
	    @Size(max = 15)
	    @Column(name = "dui")
	    private String dui;
	    @Size(max = 20)
	    @Column(name = "nit")
	    private String nit;
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
	    @JoinColumn(name = "idusr", referencedColumnName = "idusr")
	    //@ManyToOne(optional = false, fetch = FetchType.EAGER)
	    @ManyToOne
	    private User idusr;
	    @JoinColumn(name = "idcatalogo_lista", referencedColumnName = "idcatalogo_lista")
	    //@ManyToOne(optional = false, fetch = FetchType.EAGER)
	    @ManyToOne
	    private CatalogoListas idcatalogoLista;
	    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idcc", fetch = FetchType.EAGER)
	    private List<ReturnCaseConsulted> retornocasoconsultaList;

	    public CaseConsulted() {
	    }

	    public CaseConsulted(Integer idcc) {
	        this.idcc = idcc;
	    }

	    public CaseConsulted(Integer idcc, String idcaso, String nombres, String apellidos, String creadopor, Date creadoel, String modificadopor, Date modificadoel) {
	        this.idcc = idcc;
	        this.idcaso = idcaso;
	        this.nombres = nombres;
	        this.apellidos = apellidos;
	        this.creadopor = creadopor;
	        this.creadoel = creadoel;
	        this.modificadopor = modificadopor;
	        this.modificadoel = modificadoel;
	    }

	    public Integer getIdcc() {
	        return idcc;
	    }

	    public void setIdcc(Integer idcc) {
	        this.idcc = idcc;
	    }

	    public String getIdcaso() {
	        return idcaso;
	    }

	    public void setIdcaso(String idcaso) {
	        this.idcaso = idcaso;
	    }

	    public String getNombres() {
	        return nombres;
	    }

	    public void setNombres(String nombres) {
	        this.nombres = nombres;
	    }

	    public String getApellidos() {
	        return apellidos;
	    }

	    public void setApellidos(String apellidos) {
	        this.apellidos = apellidos;
	    }

	    public String getSexo() {
	        return sexo;
	    }

	    public void setSexo(String sexo) {
	        this.sexo = sexo;
	    }

	    public Date getFechanacimiento() {
	        return fechanacimiento;
	    }

	    public void setFechanacimiento(Date fechanacimiento) {
	        this.fechanacimiento = fechanacimiento;
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

	    public User getIdusr() {
	        return idusr;
	    }

	    public void setIdusr(User idusr) {
	        this.idusr = idusr;
	    }

	    public CatalogoListas getIdcatalogoLista() {
	        return idcatalogoLista;
	    }

	    public void setIdcatalogoLista(CatalogoListas idcatalogoLista) {
	        this.idcatalogoLista = idcatalogoLista;
	    }

	    @XmlTransient
	    public List<ReturnCaseConsulted> getRetornocasoconsultaList() {
	        return retornocasoconsultaList;
	    }

	    public void setRetornocasoconsultaList(List<ReturnCaseConsulted> retornocasoconsultaList) {
	        this.retornocasoconsultaList = retornocasoconsultaList;
	    }

	    @Override
	    public int hashCode() {
	        int hash = 0;
	        hash += (idcc != null ? idcc.hashCode() : 0);
	        return hash;
	    }

	    @Override
	    public boolean equals(Object object) {
	        // TODO: Warning - this method won't work in the case the id fields are not set
	        if (!(object instanceof CaseConsulted)) {
	            return false;
	        }
	        CaseConsulted other = (CaseConsulted) object;
	        if ((this.idcc == null && other.idcc != null) || (this.idcc != null && !this.idcc.equals(other.idcc))) {
	            return false;
	        }
	        return true;
	    }

	    @Override
	    public String toString() {
	        return "com.compliance.model.Casoconsulta[ idcc=" + idcc + " ]";
	    }
}