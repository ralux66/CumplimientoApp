package com.avanceti.compliance.model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

/**
 *
 * @author rzepeda
 */
@Entity
@Table(name = "funcionarios", catalog = "busqueda", schema = "")
@NamedQueries({ @NamedQuery(name = "Funcionarios.findAll", query = "SELECT f FROM Funcionarios f") })
public class Funcionarios implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@Basic(optional = false)
	@NotNull
	private Long id;
	private Boolean enabled;
	private Boolean active;
	private Boolean marked;
	// @Size(max = 255)
	private String name;
	// @Size(max = 255)
	private String position;
	// @Pattern(regexp="^\\(?(\\d{3})\\)?[- ]?(\\d{3})[- ]?(\\d{4})$",
	// message="Invalid phone/fax format, should be as xxx-xxx-xxxx")//if the field
	// contains phone or fax number consider using this annotation to enforce field
	// validation
	// @Size(max = 255)
	private String phone;
	// @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?",
	// message="Invalid email")//if the field contains email address consider using
	// this annotation to enforce field validation
	// @Size(max = 255)
	private String email;
	// @Size(max = 500)
	private String address;
	// @Size(max = 500)
	private String functions;
	// @Size(max = 500)
	private String curriculum;
	@Column(name = "created_at")
	// @Temporal(TemporalType.TIMESTAMP)
	private String createdAt;
	@Column(name = "updated_at")
	// @Temporal(TemporalType.TIMESTAMP)
	private String updatedAt;
	private Long priority;
//    @JoinColumn(name = "institution_id", referencedColumnName = "id")
//    @ManyToOne(optional = false, fetch = FetchType.LAZY)
//    private Instituciones institutionId;
	@Column(name = "institution_id")
	private Long institutionId;
//    @JoinColumn(name = "institution_dependency_id", referencedColumnName = "id")
//    @ManyToOne(optional = false, fetch = FetchType.LAZY)
//    private Dependencias institutionDependencyId;
	@Column(name = "institution_dependency_id")
	private Long institutionDependencyId;
//    @JoinColumn(name = "committee_id", referencedColumnName = "id")
//    @ManyToOne(optional = false, fetch = FetchType.LAZY)
//    private Comites committeeId;
	@Column(name = "committee_id")
	private Long committeeId;

	@Transient
	private double score;

	public Funcionarios() {
	}

	public Funcionarios(@NotNull Long id, Boolean enabled, Boolean active, Boolean marked, @Size(max = 255) String name,
			@Size(max = 255) String position, @Size(max = 255) String phone, @Size(max = 255) String email,
			@Size(max = 500) String address, @Size(max = 500) String functions, @Size(max = 500) String curriculum,
			String createdAt, String updatedAt, Long priority, Long institutionId, Long institutionDependencyId,
			Long committeeId) {

		this.id = id;
		this.enabled = enabled;
		this.active = active;
		this.marked = marked;
		this.name = name;
		this.position = position;
		this.phone = phone;
		this.email = email;
		this.address = address;
		this.functions = functions;
		this.curriculum = curriculum;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.priority = priority;
		this.institutionId = institutionId;
		this.institutionDependencyId = institutionDependencyId;
		this.committeeId = committeeId;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getFunctions() {
		return functions;
	}

	public void setFunctions(String functions) {
		this.functions = functions;
	}

	public String getCurriculum() {
		return curriculum;
	}

	public void setCurriculum(String curriculum) {
		this.curriculum = curriculum;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public Boolean getActive() {
		return active;
	}

	public void setActive(Boolean active) {
		this.active = active;
	}

	public Boolean getMarked() {
		return marked;
	}

	public void setMarked(Boolean marked) {
		this.marked = marked;
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

	public Long getPriority() {
		return priority;
	}

	public void setPriority(Long priority) {
		this.priority = priority;
	}

	public Long getInstitutionId() {
		return institutionId;
	}

	public void setInstitutionId(Long institutionId) {
		this.institutionId = institutionId;
	}

	public Long getInstitutionDependencyId() {
		return institutionDependencyId;
	}

	public void setInstitutionDependencyId(Long institutionDependencyId) {
		this.institutionDependencyId = institutionDependencyId;
	}

	public Long getCommitteeId() {
		return committeeId;
	}

	public void setCommitteeId(Long committeeId) {
		this.committeeId = committeeId;
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
		if (!(object instanceof Funcionarios)) {
			return false;
		}
		Funcionarios other = (Funcionarios) object;
		if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "com.compliance.model.Funcionarios[ id=" + id + " ]";
	}

}
