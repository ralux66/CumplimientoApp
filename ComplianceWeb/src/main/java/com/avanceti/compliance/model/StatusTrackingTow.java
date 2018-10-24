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
@Table(name = "statustracking_2", catalog = "busqueda", schema = "")
@XmlRootElement
public class StatusTrackingTow implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idstatus2")
    private Integer idstatus2;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "nombre")
    private String nombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 2000)
    @Column(name = "descripcion")
    private String descripcion;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "referencia")
    private String referencia;
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
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idstatus2", fetch = FetchType.LAZY)
    private List<Tracking> trackingList;

    public StatusTrackingTow() {
    }

    public StatusTrackingTow(Integer idstatus2) {
        this.idstatus2 = idstatus2;
    }

    public StatusTrackingTow(Integer idstatus2, String nombre, String descripcion, String referencia, String creadopor, Date creadoel, String modificadopor, Date modificadoel) {
        this.idstatus2 = idstatus2;
        this.nombre = nombre;
        this.descripcion = descripcion;
        this.referencia = referencia;
        this.creadopor = creadopor;
        this.creadoel = creadoel;
        this.modificadopor = modificadopor;
        this.modificadoel = modificadoel;
    }

    public Integer getIdstatus2() {
        return idstatus2;
    }

    public void setIdstatus2(Integer idstatus2) {
        this.idstatus2 = idstatus2;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getReferencia() {
        return referencia;
    }

    public void setReferencia(String referencia) {
        this.referencia = referencia;
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

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idstatus2 != null ? idstatus2.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof StatusTrackingTow)) {
            return false;
        }
        StatusTrackingTow other = (StatusTrackingTow) object;
        if ((this.idstatus2 == null && other.idstatus2 != null) || (this.idstatus2 != null && !this.idstatus2.equals(other.idstatus2))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.compliance.model.Statustracking2[ idstatus2=" + idstatus2 + " ]";
    }
    
}
