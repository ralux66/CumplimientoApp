package com.avanceti.compliance.model;


import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "roles", catalog = "busqueda", schema = "")
@XmlRootElement
public class Roles implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idrol")
    private Integer idrol;
    @Size(max = 100)
    @Column(name = "nombrerol")
    private String nombrerol;
    @Size(max = 150)
    @Column(name = "descripcion")
    private String descripcion;
    @Size(max = 45)
    @Column(name = "custom1")
    private String custom1;
    @Size(max = 45)
    @Column(name = "custom2")
    private String custom2;
    @Size(max = 45)
    @Column(name = "custom3")
    private String custom3;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "idrol", fetch = FetchType.LAZY)
    private List<RolesUsuarios> rolesUsuariosList;
    @JoinColumn(name = "idmodulo", referencedColumnName = "idmodulo")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Modulos idmodulo;

    public Roles() {
    }

    public Roles(Integer idrol) {
        this.idrol = idrol;
    }

    public Integer getIdrol() {
        return idrol;
    }

    public void setIdrol(Integer idrol) {
        this.idrol = idrol;
    }

    public String getNombrerol() {
        return nombrerol;
    }

    public void setNombrerol(String nombrerol) {
        this.nombrerol = nombrerol;
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
    public List<RolesUsuarios> getRolesUsuariosList() {
        return rolesUsuariosList;
    }

    public void setRolesUsuariosList(List<RolesUsuarios> rolesUsuariosList) {
        this.rolesUsuariosList = rolesUsuariosList;
    }

    public Modulos getIdmodulo() {
        return idmodulo;
    }

    public void setIdmodulo(Modulos idmodulo) {
        this.idmodulo = idmodulo;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idrol != null ? idrol.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Roles)) {
            return false;
        }
        Roles other = (Roles) object;
        if ((this.idrol == null && other.idrol != null) || (this.idrol != null && !this.idrol.equals(other.idrol))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.compliance.model.Roles[ idrol=" + idrol + " ]";
    }
    
}
