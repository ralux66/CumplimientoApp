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
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
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
@Table(name = "comites", catalog = "busqueda", schema = "")
@NamedQueries({ @NamedQuery(name = "Comites.findAll", query = "SELECT c FROM Comites c") })
public class Comites implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@Basic(optional = false)
	@NotNull
	private Long id;
	@Size(max = 255)
	private String name;
	@Column(name = "created_at")
	// @Temporal(TemporalType.TIMESTAMP)
	private String createdAt;
	@Column(name = "updated_at")
	// @Temporal(TemporalType.TIMESTAMP)
	private String updatedAt;
//    @JoinColumn(name = "institution_id", referencedColumnName = "id")
//    @ManyToOne(optional = false, fetch = FetchType.LAZY)
//    private Instituciones institutionId;
	@Column(name = "institution_id")
	private Long institutionId;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "committeeId", fetch = FetchType.LAZY)
	private List<Funcionarios> funcionariosList;

	public Comites() {
	}
	
	

	public Comites(@NotNull Long id,Long institutionId, @Size(max = 255) String name, String createdAt, String updatedAt) {		
		this.id = id;
		this.institutionId = institutionId;
		this.name = name;		
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;		
	}



	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
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

	public Long getInstitutionId() {
		return institutionId;
	}

	public void setInstitutionId(Long institutionId) {
		this.institutionId = institutionId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public List<Funcionarios> getFuncionariosList() {
		return funcionariosList;
	}

	public void setFuncionariosList(List<Funcionarios> funcionariosList) {
		this.funcionariosList = funcionariosList;
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
		if (!(object instanceof Comites)) {
			return false;
		}
		Comites other = (Comites) object;
		if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "com.compliance.model.Comites[ id=" + id + " ]";
	}

}
