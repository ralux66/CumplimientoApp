package com.avanceti.compliance.model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ralux88
 */
@Entity
@Table(name = "peps_ejecutivo", catalog = "busqueda", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "PepsEjecutivo.findAll", query = "SELECT p FROM PepsEjecutivo p")})
public class PepsEjecutivo implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "id")
    private Integer id;
    @Column(name = "id_institucion")
    private Integer idInstitucion;
    @Lob
    @Size(max = 65535)
    @Column(name = "institucion")
    private String institucion;
    @Lob
    @Size(max = 65535)
    @Column(name = "funcionario")
    private String funcionario;
    @Lob
    @Size(max = 65535)
    @Column(name = "grado_academico")
    private String gradoAcademico;
    @Lob
    @Size(max = 65535)
    @Column(name = "cargo")
    private String cargo;
    @Lob
    @Size(max = 65535)
    @Column(name = "numero_acuerdo")
    private String numeroAcuerdo;
    @Lob
    @Size(max = 65535)
    @Column(name = "fecha_nombramiento")
    private String fechaNombramiento;
    @Lob
    @Size(max = 65535)
    @Column(name = "fecha_finalizacion")
    private String fechaFinalizacion;

    public PepsEjecutivo() {
    }

    public PepsEjecutivo(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getIdInstitucion() {
        return idInstitucion;
    }

    public void setIdInstitucion(Integer idInstitucion) {
        this.idInstitucion = idInstitucion;
    }

    public String getInstitucion() {
        return institucion;
    }

    public void setInstitucion(String institucion) {
        this.institucion = institucion;
    }

    public String getFuncionario() {
        return funcionario;
    }

    public void setFuncionario(String funcionario) {
        this.funcionario = funcionario;
    }

    public String getGradoAcademico() {
        return gradoAcademico;
    }

    public void setGradoAcademico(String gradoAcademico) {
        this.gradoAcademico = gradoAcademico;
    }

    public String getCargo() {
        return cargo;
    }

    public void setCargo(String cargo) {
        this.cargo = cargo;
    }

    public String getNumeroAcuerdo() {
        return numeroAcuerdo;
    }

    public void setNumeroAcuerdo(String numeroAcuerdo) {
        this.numeroAcuerdo = numeroAcuerdo;
    }

    public String getFechaNombramiento() {
        return fechaNombramiento;
    }

    public void setFechaNombramiento(String fechaNombramiento) {
        this.fechaNombramiento = fechaNombramiento;
    }

    public String getFechaFinalizacion() {
        return fechaFinalizacion;
    }

    public void setFechaFinalizacion(String fechaFinalizacion) {
        this.fechaFinalizacion = fechaFinalizacion;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (id != null ? id.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof PepsEjecutivo)) {
            return false;
        }
        PepsEjecutivo other = (PepsEjecutivo) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.entity.busqueda.PepsEjecutivo[ id=" + id + " ]";
    }
    
}
