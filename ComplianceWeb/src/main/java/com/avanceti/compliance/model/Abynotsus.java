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
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author rzepeda
 */
@Entity
@Table(name = "abynotsus", catalog = "busqueda", schema = "")
@NamedQueries({
    @NamedQuery(name = "Abynotsus.findAll", query = "SELECT a FROM Abynotsus a")})
public class Abynotsus implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ID")
    private Integer id;
    @Lob
    @Size(max = 65535)
    @Column(name = "NOMBRE")
    private String nombre;
    @Lob
    @Size(max = 65535)
    @Column(name = "SANCION")
    private String sancion;
    @Lob
    @Size(max = 65535)
    @Column(name = "SANCIONADO_COMO")
    private String sancionadoComo;
    @Lob
    @Size(max = 65535)
    @Column(name = "FECHA_SANCION_NOTIF")
    private String fechaSancionNotif;

    @Transient
    private Double score;
    
    public Abynotsus() {
    }
    
    

    public Abynotsus(Integer id) {
        this.id = id;
    }

    
    
    public Double getScore() {
		return score;
	}



	public void setScore(Double score) {
		this.score = score;
	}



	public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSancion() {
        return sancion;
    }

    public void setSancion(String sancion) {
        this.sancion = sancion;
    }

    public String getSancionadoComo() {
        return sancionadoComo;
    }

    public void setSancionadoComo(String sancionadoComo) {
        this.sancionadoComo = sancionadoComo;
    }

    public String getFechaSancionNotif() {
        return fechaSancionNotif;
    }

    public void setFechaSancionNotif(String fechaSancionNotif) {
        this.fechaSancionNotif = fechaSancionNotif;
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
        if (!(object instanceof Abynotsus)) {
            return false;
        }
        Abynotsus other = (Abynotsus) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.compliance.model.Abynotsus[ id=" + id + " ]";
    }
    
}

