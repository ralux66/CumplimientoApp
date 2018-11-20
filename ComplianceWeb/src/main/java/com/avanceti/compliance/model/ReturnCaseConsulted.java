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
@Table(name = "retornocasoconsulta", catalog = "busqueda", schema = "")
@XmlRootElement
public class ReturnCaseConsulted implements Serializable {
	 private static final long serialVersionUID = 1L;
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Basic(optional = false)
	    @Column(name = "idrcc")
	    private Integer idrcc;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 200)
	    @Column(name = "registro")
	    private String registro;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 100)
	    @Column(name = "resultado")
	    private String resultado;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 1000)
	    @Column(name = "nombresdn")
	    private String nombresdn;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 2000)
	    @Column(name = "descripcion")
	    private String descripcion;
	    @Basic(optional = false)
	    @NotNull
	    @Column(name = "fechaconsulta")
	    @Temporal(TemporalType.TIMESTAMP)
	    private Date fechaconsulta;
	    @Size(max = 2000)
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
	    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idrcc", fetch = FetchType.EAGER)
	    private List<Tracking> trackingList;
	    @JoinColumn(name = "idcc", referencedColumnName = "idcc")
	    //@ManyToOne(optional = false, fetch = FetchType.EAGER)
	    @ManyToOne
	    private CaseConsulted idcc;

	    public ReturnCaseConsulted() {
	    }

	    public ReturnCaseConsulted(Integer idrcc) {
	        this.idrcc = idrcc;
	    }

	    public ReturnCaseConsulted(Integer idrcc, String registro, String resultado, String nombresdn, String descripcion, Date fechaconsulta, String creadopor, Date creadoel, String modificadopor, Date modificadoel) {
	        this.idrcc = idrcc;
	        this.registro = registro;
	        this.resultado = resultado;
	        this.nombresdn = nombresdn;
	        this.descripcion = descripcion;
	        this.fechaconsulta = fechaconsulta;
	        this.creadopor = creadopor;
	        this.creadoel = creadoel;
	        this.modificadopor = modificadopor;
	        this.modificadoel = modificadoel;
	    }

	    public Integer getIdrcc() {
	        return idrcc;
	    }

	    public void setIdrcc(Integer idrcc) {
	        this.idrcc = idrcc;
	    }

	    public String getRegistro() {
	        return registro;
	    }

	    public void setRegistro(String registro) {
	        this.registro = registro;
	    }

	    public String getResultado() {
	        return resultado;
	    }

	    public void setResultado(String resultado) {
	        this.resultado = resultado;
	    }

	    public String getNombresdn() {
	        return nombresdn;
	    }

	    public void setNombresdn(String nombresdn) {
	        this.nombresdn = nombresdn;
	    }

	    public String getDescripcion() {
	        return descripcion;
	    }

	    public void setDescripcion(String descripcion) {
	        this.descripcion = descripcion;
	    }

	    public Date getFechaconsulta() {
	        return fechaconsulta;
	    }

	    public void setFechaconsulta(Date fechaconsulta) {
	        this.fechaconsulta = fechaconsulta;
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
	    public List<Tracking> getTrackingList() {
	        return trackingList;
	    }

	    public void setTrackingList(List<Tracking> trackingList) {
	        this.trackingList = trackingList;
	    }

	    public CaseConsulted getIdcc() {
	        return idcc;
	    }

	    public void setIdcc(CaseConsulted idcc) {
	        this.idcc = idcc;
	    }

	    @Override
	    public int hashCode() {
	        int hash = 0;
	        hash += (idrcc != null ? idrcc.hashCode() : 0);
	        return hash;
	    }

	    @Override
	    public boolean equals(Object object) {
	        // TODO: Warning - this method won't work in the case the id fields are not set
	        if (!(object instanceof ReturnCaseConsulted)) {
	            return false;
	        }
	        ReturnCaseConsulted other = (ReturnCaseConsulted) object;
	        if ((this.idrcc == null && other.idrcc != null) || (this.idrcc != null && !this.idrcc.equals(other.idrcc))) {
	            return false;
	        }
	        return true;
	    }

	    @Override
	    public String toString() {
	        return "com.compliance.model.Retornocasoconsulta[ idrcc=" + idrcc + " ]";
	    }
	
}
