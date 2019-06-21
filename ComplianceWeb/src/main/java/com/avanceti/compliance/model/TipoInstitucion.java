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
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author rzepeda
 */
@Entity
@Table(name = "tipo_institucion", catalog = "busqueda", schema = "")
@NamedQueries({ @NamedQuery(name = "TipoInstitucion.findAll", query = "SELECT t FROM TipoInstitucion t") })
public class TipoInstitucion implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@Basic(optional = false)
	@NotNull
	private Long id;
	private Boolean enabled;
	private Long priority;
	@Size(max = 255)
	private String name;
	@Column(name = "created_at")
	//@Temporal(TemporalType.TIMESTAMP)
	private String createdAt;
	@Column(name = "updated_at")
	//@Temporal(TemporalType.TIMESTAMP)
	private String updatedAt;
	@OneToMany(mappedBy = "institutionTypeId", fetch = FetchType.LAZY)
	private List<Instituciones> institucionesList;

	public TipoInstitucion() {
	}

	

	public TipoInstitucion(@NotNull Long id, Boolean enabled, Long priority, @Size(max = 255) String name,
			String createdAt, String updatedAt) {
		super();
		this.id = id;
		this.enabled = enabled;
		this.priority = priority;
		this.name = name;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}



	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public Long getPriority() {
		return priority;
	}

	public void setPriority(Long priority) {
		this.priority = priority;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}		
	
	public String getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(String createdAt) {
		this.createdAt = createdAt;
	}

	public String getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(String updatedAt) {
		this.updatedAt = updatedAt;
	}



	public List<Instituciones> getInstitucionesList() {
		return institucionesList;
	}

	public void setInstitucionesList(List<Instituciones> institucionesList) {
		this.institucionesList = institucionesList;
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
		if (!(object instanceof TipoInstitucion)) {
			return false;
		}
		TipoInstitucion other = (TipoInstitucion) object;
		if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "com.compliance.model.TipoInstitucion[ id=" + id + " ]";
	}

}
