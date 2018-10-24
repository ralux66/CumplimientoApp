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

/**
 *
 * @author rzepeda
 */
@Entity
@Table(name = "modulos_perfiles", catalog = "busqueda", schema = "")
@XmlRootElement
public class ModulosPerfiles implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "idmodulo_perfil")
    private Integer idmoduloPerfil;
    @Size(max = 100)
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
    @JoinColumn(name = "idperfil", referencedColumnName = "idperfil")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Profile idperfil;
    @JoinColumn(name = "idmodulo", referencedColumnName = "idmodulo")
    @ManyToOne(optional = false, fetch = FetchType.LAZY)
    private Modulos idmodulo;

    public ModulosPerfiles() {
    }

    public ModulosPerfiles(Integer idmoduloPerfil) {
        this.idmoduloPerfil = idmoduloPerfil;
    }

    public Integer getIdmoduloPerfil() {
        return idmoduloPerfil;
    }

    public void setIdmoduloPerfil(Integer idmoduloPerfil) {
        this.idmoduloPerfil = idmoduloPerfil;
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

    public Profile getIdperfil() {
        return idperfil;
    }

    public void setIdperfil(Profile idperfil) {
        this.idperfil = idperfil;
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
        hash += (idmoduloPerfil != null ? idmoduloPerfil.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ModulosPerfiles)) {
            return false;
        }
        ModulosPerfiles other = (ModulosPerfiles) object;
        if ((this.idmoduloPerfil == null && other.idmoduloPerfil != null) || (this.idmoduloPerfil != null && !this.idmoduloPerfil.equals(other.idmoduloPerfil))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.compliance.model.ModulosPerfiles[ idmoduloPerfil=" + idmoduloPerfil + " ]";
    }
    
}