package com.avanceti.compliance.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author rzepeda
 */
@Entity
@Table(name = "modulos", catalog = "busqueda", schema = "")
@XmlRootElement
public class Modulos implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idmodulo")
    private Integer idmodulo;
    @Size(max = 100)
    @Column(name = "nombre")
    private String nombre;
    @Size(max = 150)
    @Column(name = "descripcion")
    private String descripcion;
    @Size(max = 100)
    @Column(name = "custom1")
    private String custom1;
    @Size(max = 100)
    @Column(name = "custom2")
    private String custom2;
    @Size(max = 100)
    @Column(name = "custom3")
    private String custom3;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idmodulo", fetch = FetchType.EAGER)
    private List<Menu> menusList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idmodulo", fetch = FetchType.LAZY)
    private List<ModulosPerfiles> modulosPerfilesList;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idmodulo", fetch = FetchType.LAZY)
    private List<Roles> rolesList;

    public Modulos() {
    }

    public Modulos(Integer idmodulo) {
        this.idmodulo = idmodulo;
    }

    public Integer getIdmodulo() {
        return idmodulo;
    }

    public void setIdmodulo(Integer idmodulo) {
        this.idmodulo = idmodulo;
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

    @XmlTransient
    public List<Menu> getMenusList() {
        return menusList;
    }

    public void setMenusList(List<Menu> menusList) {
        this.menusList = menusList;
    }

    @XmlTransient
    public List<ModulosPerfiles> getModulosPerfilesList() {
        return modulosPerfilesList;
    }

    public void setModulosPerfilesList(List<ModulosPerfiles> modulosPerfilesList) {
        this.modulosPerfilesList = modulosPerfilesList;
    }

    @XmlTransient
    public List<Roles> getRolesList() {
        return rolesList;
    }

    public void setRolesList(List<Roles> rolesList) {
        this.rolesList = rolesList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idmodulo != null ? idmodulo.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Modulos)) {
            return false;
        }
        Modulos other = (Modulos) object;
        if ((this.idmodulo == null && other.idmodulo != null) || (this.idmodulo != null && !this.idmodulo.equals(other.idmodulo))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.compliance.model.Modulos[ idmodulo=" + idmodulo + " ]";
    }
}
    