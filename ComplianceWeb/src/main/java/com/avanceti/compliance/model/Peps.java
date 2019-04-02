package com.avanceti.compliance.model;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.Transient;

import javax.validation.constraints.Size;


import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;


/**
 *
 * @author ralux88
 */
@Entity
@Table(name = "peps", catalog = "busqueda", schema = "")
@NamedQueries({
    @NamedQuery(name = "Peps.findAll", query = "SELECT p FROM Peps p")})
public class Peps implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "Idpeps")
    private Integer idpeps;
    @Column(name = "id_estructura")
    private Integer idEstructura;
    @Size(max = 50)
    @Column(name = "estructura_estado")
    private String estructuraEstado;
    @Size(max = 600)
    @Column(name = "institucion_dependencia")
    private String institucionDependencia;
    @Size(max = 200)
    @Column(name = "funcionario")
    private String funcionario;
    @Size(max = 100)
    @Column(name = "conocido_por")
    private String conocidoPor;
    @Size(max = 15)
    @Column(name = "dui")
    private String dui;
    @Size(max = 100)
    @Column(name = "grado_academico")
    private String gradoAcademico;
    @Size(max = 300)
    @Column(name = "cargo")
    private String cargo;
    @Size(max = 100)
    @Column(name = "numero_acuerdo")
    private String numeroAcuerdo;
    @Size(max = 30)
    @Column(name = "fecha_nombramiento")
    private String fechaNombramiento;
    @Size(max = 100)
    @Column(name = "fecha_finalizacion")
    private String fechaFinalizacion;
    @Size(max = 20)
    @Column(name = "siglas_partido")
    private String siglasPartido;
    @Size(max = 70)
    @Column(name = "departamento")
    private String departamento;
    @Size(max = 100)
    @Column(name = "municipio")
    private String municipio;
    @Size(max = 30)
    @Column(name = "estado")
    private String estado;
    @Size(max = 30)
    @Column(name = "fecha_ingreso_al_sistema")
    private String fechaIngresoAlSistema;

    @Transient
    private double score;
    
    public Peps() {
    }
    
    

    public double getScore() {
		return score;
	}



	public void setScore(double score) {
		this.score = score;
	}



	public Peps(Integer idpeps) {
        this.idpeps = idpeps;
    }

    public Integer getIdpeps() {
        return idpeps;
    }

    public void setIdpeps(Integer idpeps) {
        this.idpeps = idpeps;
    }

    public Integer getIdEstructura() {
        return idEstructura;
    }

    public void setIdEstructura(Integer idEstructura) {
        this.idEstructura = idEstructura;
    }

    public String getEstructuraEstado() {
        return estructuraEstado;
    }

    public void setEstructuraEstado(String estructuraEstado) {
        this.estructuraEstado = estructuraEstado;
    }

    public String getInstitucionDependencia() {
        return institucionDependencia;
    }

    public void setInstitucionDependencia(String institucionDependencia) {
        this.institucionDependencia = institucionDependencia;
    }

    public String getFuncionario() {
        return funcionario;
    }

    public void setFuncionario(String funcionario) {
        this.funcionario = funcionario;
    }

    public String getConocidoPor() {
        return conocidoPor;
    }

    public void setConocidoPor(String conocidoPor) {
        this.conocidoPor = conocidoPor;
    }

    public String getDui() {
        return dui;
    }

    public void setDui(String dui) {
        this.dui = dui;
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

    public String getSiglasPartido() {
        return siglasPartido;
    }

    public void setSiglasPartido(String siglasPartido) {
        this.siglasPartido = siglasPartido;
    }

    public String getDepartamento() {
        return departamento;
    }

    public void setDepartamento(String departamento) {
        this.departamento = departamento;
    }

    public String getMunicipio() {
        return municipio;
    }

    public void setMunicipio(String municipio) {
        this.municipio = municipio;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getFechaIngresoAlSistema() {
        return fechaIngresoAlSistema;
    }

    public void setFechaIngresoAlSistema(String fechaIngresoAlSistema) {
        this.fechaIngresoAlSistema = fechaIngresoAlSistema;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (idpeps != null ? idpeps.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Peps)) {
            return false;
        }
        Peps other = (Peps) object;
        if ((this.idpeps == null && other.idpeps != null) || (this.idpeps != null && !this.idpeps.equals(other.idpeps))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.entity.busqueda.Peps[ idpeps=" + idpeps + " ]";
    }
    
}