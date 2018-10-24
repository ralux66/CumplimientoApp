package com.avanceti.compliance.model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

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
@Table(name = "catalogo_listas", catalog = "busqueda", schema = "")
@XmlRootElement
public class CatalogoListas implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "idcatalogo_lista")
    private Integer idcatalogoLista;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 150)
    @Column(name = "nombresdn")
    private String nombresdn;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fechaincorpora")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaincorpora;
    @Basic(optional = false)
    @NotNull
    @Column(name = "fechaactualiza")
    @Temporal(TemporalType.TIMESTAMP)
    private Date fechaactualiza;
    @Size(max = 2000)
    @Column(name = "descripcion")
    private String descripcion;
    @Size(max = 2000)
    @Column(name = "observacion")
    private String observacion;
    @Size(max = 200)
    @Column(name = "proveedor")
    private String proveedor;
    @Size(max = 100)
    @Column(name = "costo")
    private String costo;
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
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idcatalogoLista", fetch = FetchType.LAZY)
    private List<CaseConsulted> casoconsultaList;

    public CatalogoListas() {
    }

    public CatalogoListas(Integer idcatalogoLista) {
        this.idcatalogoLista = idcatalogoLista;
    }

    public CatalogoListas(Integer idcatalogoLista, String nombresdn, Date fechaincorpora, Date fechaactualiza, String creadopor, Date creadoel, String modificadopor, Date modificadoel) {
        this.idcatalogoLista = idcatalogoLista;
        this.nombresdn = nombresdn;
        this.fechaincorpora = fechaincorpora;
        this.fechaactualiza = fechaactualiza;
        this.creadopor = creadopor;
        this.creadoel = creadoel;
        this.modificadopor = modificadopor;
        this.modificadoel = modificadoel;
    }

    public Integer getIdcatalogoLista() {
        return idcatalogoLista;
    }

    public void setIdcatalogoLista(Integer idcatalogoLista) {
        this.idcatalogoLista = idcatalogoLista;
    }

    public String getNombresdn() {
        return nombresdn;
    }

    public void setNombresdn(String nombresdn) {
        this.nombresdn = nombresdn;
    }

    public Date getFechaincorpora() {
        return fechaincorpora;
    }

    public void setFechaincorpora(Date fechaincorpora) {
        this.fechaincorpora = fechaincorpora;
    }

    public Date getFechaactualiza() {
        return fechaactualiza;
    }

    public void setFechaactualiza(Date fechaactualiza) {
        this.fechaactualiza = fechaactualiza;
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

    public String getProveedor() {
        return proveedor;
    }

    public void setProveedor(String proveedor) {
        this.proveedor = proveedor;
    }

    public String getCosto() {
        return costo;
    }

    public void setCosto(String costo) {
        this.costo = costo;
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
    public List<CaseConsulted> getCasoconsultaList() {
        return casoconsultaList;
    }

    public void setCasoconsultaList(List<CaseConsulted> casoconsultaList) {
        this.casoconsultaList = casoconsultaList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idcatalogoLista != null ? idcatalogoLista.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof CatalogoListas)) {
            return false;
        }
        CatalogoListas other = (CatalogoListas) object;
        if ((this.idcatalogoLista == null && other.idcatalogoLista != null) || (this.idcatalogoLista != null && !this.idcatalogoLista.equals(other.idcatalogoLista))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.compliance.model.CatalogoListas[ idcatalogoLista=" + idcatalogoLista + " ]";
    }
    
}
