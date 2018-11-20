package com.avanceti.compliance.model;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name = "tracking", catalog = "busqueda", schema = "")
@XmlRootElement
public class Tracking implements Serializable {
	 private static final long serialVersionUID = 1L;
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Basic(optional = false)
	    @Column(name = "idtracking")
	    private Integer idtracking;
	    @Size(max = 100)
	    @Column(name = "resultado")
	    private String resultado;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 2000)
	    @Column(name = "descripcion")
	    private String descripcion;
	    @Column(name = "fechaasignacion")
	    @Temporal(TemporalType.TIMESTAMP)
	    private Date fechaasignacion;
	    @Column(name = "fecharesolucion")
	    @Temporal(TemporalType.TIMESTAMP)
	    private Date fecharesolucion;
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
	    @JoinColumn(name = "idstatus2", referencedColumnName = "idstatus2")
	    //@ManyToOne(optional = false, fetch = FetchType.EAGER)
	    @ManyToOne
	    private StatusTrackingTow idstatus2;
	    @JoinColumn(name = "idstatus", referencedColumnName = "idstatus")
	    //@ManyToOne(optional = false, fetch = FetchType.EAGER)
	    @ManyToOne
	    private StatusTrackingOne idstatus;
	    @JoinColumn(name = "idrcc", referencedColumnName = "idrcc")
	    //@ManyToOne(optional = false, fetch = FetchType.EAGER)
	    @ManyToOne
	    private ReturnCaseConsulted idrcc;

	    public Tracking() {
	    }

	    public Tracking(Integer idtracking) {
	        this.idtracking = idtracking;
	    }

	    public Tracking(Integer idtracking, String descripcion, String creadopor, Date creadoel, String modificadopor, Date modificadoel) {
	        this.idtracking = idtracking;
	        this.descripcion = descripcion;
	        this.creadopor = creadopor;
	        this.creadoel = creadoel;
	        this.modificadopor = modificadopor;
	        this.modificadoel = modificadoel;
	    }

	    public Integer getIdtracking() {
	        return idtracking;
	    }

	    public void setIdtracking(Integer idtracking) {
	        this.idtracking = idtracking;
	    }

	    public String getResultado() {
	        return resultado;
	    }

	    public void setResultado(String resultado) {
	        this.resultado = resultado;
	    }

	    public String getDescripcion() {
	        return descripcion;
	    }

	    public void setDescripcion(String descripcion) {
	        this.descripcion = descripcion;
	    }

	    public Date getFechaasignacion() {
	        return fechaasignacion;
	    }

	    public void setFechaasignacion(Date fechaasignacion) {
	        this.fechaasignacion = fechaasignacion;
	    }

	    public Date getFecharesolucion() {
	        return fecharesolucion;
	    }

	    public void setFecharesolucion(Date fecharesolucion) {
	        this.fecharesolucion = fecharesolucion;
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

	    public StatusTrackingTow getIdstatus2() {
	        return idstatus2;
	    }

	    public void setIdstatus2(StatusTrackingTow idstatus2) {
	        this.idstatus2 = idstatus2;
	    }

	    public StatusTrackingOne getIdstatus() {
	        return idstatus;
	    }

	    public void setIdstatus(StatusTrackingOne idstatus) {
	        this.idstatus = idstatus;
	    }

	    public ReturnCaseConsulted getIdrcc() {
	        return idrcc;
	    }

	    public void setIdrcc(ReturnCaseConsulted idrcc) {
	        this.idrcc = idrcc;
	    }

	    @Override
	    public int hashCode() {
	        int hash = 0;
	        hash += (idtracking != null ? idtracking.hashCode() : 0);
	        return hash;
	    }

	    @Override
	    public boolean equals(Object object) {
	        // TODO: Warning - this method won't work in the case the id fields are not set
	        if (!(object instanceof Tracking)) {
	            return false;
	        }
	        Tracking other = (Tracking) object;
	        if ((this.idtracking == null && other.idtracking != null) || (this.idtracking != null && !this.idtracking.equals(other.idtracking))) {
	            return false;
	        }
	        return true;
	    }

	    @Override
	    public String toString() {
	        return "com.compliance.model.Tracking[ idtracking=" + idtracking + " ]";
	    }
	
}
