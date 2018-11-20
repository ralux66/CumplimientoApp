package com.avanceti.compliance.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;


@Entity
@Table(name = "roles_usuarios", catalog = "busqueda", schema = "")
@XmlRootElement

public class RolesUsuarios implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idrol_usuario")
    private Integer idrolUsuario;
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
    @JoinColumn(name = "idusr", referencedColumnName = "idusr")
    //@ManyToOne(optional = false, fetch = FetchType.EAGER)
    @ManyToOne
    private User idusr;
    @JoinColumn(name = "idrol", referencedColumnName = "idrol")
    //@ManyToOne(optional = false, fetch = FetchType.EAGER)
    @ManyToOne
    private Roles idrol;

    public RolesUsuarios() {
    }

    public RolesUsuarios(Integer idrolUsuario) {
        this.idrolUsuario = idrolUsuario;
    }

    public Integer getIdrolUsuario() {
        return idrolUsuario;
    }

    public void setIdrolUsuario(Integer idrolUsuario) {
        this.idrolUsuario = idrolUsuario;
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

    public User getIdusr() {
        return idusr;
    }

    public void setIdusr(User idusr) {
        this.idusr = idusr;
    }

    public Roles getIdrol() {
        return idrol;
    }

    public void setIdrol(Roles idrol) {
        this.idrol = idrol;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idrolUsuario != null ? idrolUsuario.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof RolesUsuarios)) {
            return false;
        }
        RolesUsuarios other = (RolesUsuarios) object;
        if ((this.idrolUsuario == null && other.idrolUsuario != null) || (this.idrolUsuario != null && !this.idrolUsuario.equals(other.idrolUsuario))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.compliance.model.RolesUsuarios[ idrolUsuario=" + idrolUsuario + " ]";
    }
    
}
