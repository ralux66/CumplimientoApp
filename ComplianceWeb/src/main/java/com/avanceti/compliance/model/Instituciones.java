package com.avanceti.compliance.model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.Serializable;
import java.math.BigDecimal;

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
@Table(name = "instituciones",catalog = "busqueda", schema = "")
@NamedQueries({ @NamedQuery(name = "Instituciones.findAll", query = "SELECT i FROM Instituciones i") })
public class Instituciones implements Serializable {

	private static final long serialVersionUID = 1L;
	@Id
	@Basic(optional = false)
	@NotNull
	private Long id;
	@Size(max = 255)
	private String name;
	@Size(max = 255)
	private String acronym;
	@Size(max = 255)
	@Column(name = "avatar_file_name")
	private String avatarFileName;
	@Size(max = 255)
	@Column(name = "avatar_content_type")
	private String avatarContentType;
	@Column(name = "avatar_file_size")
	private Long avatarFileSize;
	@Column(name = "avatar_updated_at")
	// @Temporal(TemporalType.TIMESTAMP)
	private String avatarUpdatedAt;
	@Column(name = "created_at")
	// @Temporal(TemporalType.TIMESTAMP)
	private String createdAt;
	@Column(name = "updated_at")
	// @Temporal(TemporalType.TIMESTAMP)
	private String updatedAt;
	private Boolean enabled;
	@Column(name = "accepts_online_requests")
	private Boolean acceptsOnlineRequests;
	@Column(name = "administrative_document_type")
	private String administrativeDocumentType;
	// @Max(value=?) @Min(value=?)//if you know range of your decimal fields
	// consider using these annotations to enforce field validation
	@Column(name = "certification_amount")
	private String certificationAmount;
	@Column(name = "reproduction_amount")
	private String reproductionAmount;
	@Size(max = 255)
	@Column(name = "external_transparency_site_url")
	private String externalTransparencySiteUrl;
	@Size(max = 255)
	@Column(name = "facebook_url")
	private String facebookUrl;
	@Size(max = 255)
	@Column(name = "facebook_username")
	private String facebookUsername;
	@Size(max = 255)
	@Column(name = "officer_email")
	private String officerEmail;
	@Size(max = 255)
	@Column(name = "officer_name")
	private String officerName;
	@Size(max = 255)
	@Column(name = "twitter_url")
	private String twitterUrl;
	@Size(max = 255)
	@Column(name = "twitter_username")
	private String twitterUsername;
	@Size(max = 255)
	@Column(name = "website_url")
	private String websiteUrl;
	@Column(name = "officer_designation_date")
	// @Temporal(TemporalType.DATE)
	private String officerDesignationDate;
	@Size(max = 255)
	@Column(name = "administrative_document_file_name")
	private String administrativeDocumentFileName;
	@Size(max = 255)
	@Column(name = "administrative_document_content_type")
	private String administrativeDocumentContentType;
	@Column(name = "administrative_document_file_size")
	private Long administrativeDocumentFileSize;
	@Column(name = "administrative_document_updated_at")
	// @Temporal(TemporalType.TIMESTAMP)
	private String administrativeDocumentUpdatedAt;
	@Size(max = 255)
	@Column(name = "officer_designation_file_name")
	private String officerDesignationFileName;
	@Size(max = 255)
	@Column(name = "officer_designation_content_type")
	private String officerDesignationContentType;
	@Column(name = "officer_designation_file_size")
	private Long officerDesignationFileSize;
	@Column(name = "officer_designation_updated_at")
	// @Temporal(TemporalType.TIMESTAMP)
	private String officerDesignationUpdatedAt;
	private String score;
	@Size(max = 255)
	@Column(name = "rating_report_file_name")
	private String ratingReportFileName;
	@Size(max = 255)
	@Column(name = "rating_report_content_type")
	private String ratingReportContentType;
	@Column(name = "rating_report_file_size")
	private Long ratingReportFileSize;
	@Column(name = "rating_report_updated_at")
	// @Temporal(TemporalType.TIMESTAMP)
	private String ratingReportUpdatedAt;
	@Size(max = 255)
	@Column(name = "flickr_username")
	private String flickrUsername;
	@Size(max = 255)
	@Column(name = "flickr_url")
	private String flickrUrl;
	@Size(max = 255)
	@Column(name = "youtube_username")
	private String youtubeUsername;
	@Size(max = 255)
	@Column(name = "youtube_url")
	private String youtubeUrl;
	@Size(max = 255)
	private String slug;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "institutionId", fetch = FetchType.LAZY)
	private List<Comites> comitesList;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "institutionId", fetch = FetchType.LAZY)
	private List<Funcionarios> funcionariosList;
//	@JoinColumn(name = "standard_category_id", referencedColumnName = "id")
//	@ManyToOne(fetch = FetchType.LAZY)
//	private EstandarCategorias standardCategoryId;
	@NotNull
	@Column(name = "standard_category_id")
	private Long standardCategoryId;
//	@JoinColumn(name = "institution_type_id", referencedColumnName = "id")
//	@ManyToOne(fetch = FetchType.LAZY)
//	private TipoInstitucion institutionTypeId;
	@NotNull
	@Column(name = "institution_type_id")
	private Long institutionTypeId;
	@OneToMany(cascade = CascadeType.ALL, mappedBy = "institutionId", fetch = FetchType.LAZY)
	@Column(name = "institution_type_id")
	private List<Dependencias> dependenciasList;

	public Instituciones() {
	}
	

	public Instituciones(
			@NotNull Long id, 
			@Size(max = 255) String name, 
			@Size(max = 255) String acronym,
			@Size(max = 255) String avatarFileName, 
			@Size(max = 255) String avatarContentType, 
			Long avatarFileSize,
			String avatarUpdatedAt, 
			String createdAt, 
			String updatedAt, 
			Boolean enabled, 
			Boolean acceptsOnlineRequests,
			String administrativeDocumentType, 
			String certificationAmount, 
			String reproductionAmount,
			@Size(max = 255) String externalTransparencySiteUrl, 
			@Size(max = 255) String facebookUrl,
			@Size(max = 255) String facebookUsername, 
			@Size(max = 255) String officerEmail,
			@Size(max = 255) String officerName, 
			@Size(max = 255) String twitterUrl,
			@Size(max = 255) String twitterUsername, 
			@Size(max = 255) String websiteUrl, 
			String officerDesignationDate,
			@Size(max = 255) String administrativeDocumentFileName,
			@Size(max = 255) String administrativeDocumentContentType, 
			Long administrativeDocumentFileSize,
			String administrativeDocumentUpdatedAt, 
			@Size(max = 255) String officerDesignationFileName,
			@Size(max = 255) String officerDesignationContentType, 
			Long officerDesignationFileSize,
			String officerDesignationUpdatedAt, 
			String score, 
			@Size(max = 255) String ratingReportFileName,
			@Size(max = 255) String ratingReportContentType,
			Long ratingReportFileSize,
			String ratingReportUpdatedAt,			
			@Size(max = 255) String flickrUsername,
			@Size(max = 255) String flickrUrl,
			@Size(max = 255) String youtubeUsername,
			@Size(max = 255) String youtubeUrl,
			@Size(max = 255) String slug,
			Long standardCategoryId,
			Long institutionTypeId) {
		
		this.id = id;
		this.name = name;
		this.acronym = acronym;
		this.avatarFileName = avatarFileName;
		this.avatarContentType = avatarContentType;
		this.avatarFileSize = avatarFileSize;
		this.avatarUpdatedAt = avatarUpdatedAt;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.enabled = enabled;
		this.acceptsOnlineRequests = acceptsOnlineRequests;
		this.administrativeDocumentType = administrativeDocumentType;
		this.certificationAmount = certificationAmount;
		this.reproductionAmount = reproductionAmount;
		this.externalTransparencySiteUrl = externalTransparencySiteUrl;
		this.facebookUrl = facebookUrl;
		this.facebookUsername = facebookUsername;
		this.officerEmail = officerEmail;
		this.officerName = officerName;
		this.twitterUrl = twitterUrl;
		this.twitterUsername = twitterUsername;
		this.websiteUrl = websiteUrl;
		this.officerDesignationDate = officerDesignationDate;
		this.administrativeDocumentFileName = administrativeDocumentFileName;
		this.administrativeDocumentContentType = administrativeDocumentContentType;
		this.administrativeDocumentFileSize = administrativeDocumentFileSize;
		this.administrativeDocumentUpdatedAt = administrativeDocumentUpdatedAt;
		this.officerDesignationFileName = officerDesignationFileName;
		this.officerDesignationContentType = officerDesignationContentType;
		this.officerDesignationFileSize = officerDesignationFileSize;
		this.officerDesignationUpdatedAt = officerDesignationUpdatedAt;
		this.score = score;
		this.ratingReportFileName = ratingReportFileName;
		this.ratingReportContentType = ratingReportContentType;
		this.ratingReportFileSize = ratingReportFileSize;
		this.ratingReportUpdatedAt = ratingReportUpdatedAt;
		this.flickrUsername = flickrUsername;
		this.flickrUrl = flickrUrl;
		this.youtubeUsername = youtubeUsername;
		this.youtubeUrl = youtubeUrl;
		this.slug = slug;
		this.standardCategoryId = standardCategoryId;
		this.institutionTypeId = institutionTypeId;
	}






	public Long getAvatarFileSize() {
		return avatarFileSize;
	}

	public void setAvatarFileSize(Long avatarFileSize) {
		this.avatarFileSize = avatarFileSize;
	}

	public String getAdministrativeDocumentType() {
		return administrativeDocumentType;
	}

	public void setAdministrativeDocumentType(String administrativeDocumentType) {
		this.administrativeDocumentType = administrativeDocumentType;
	}

	public Long getAdministrativeDocumentFileSize() {
		return administrativeDocumentFileSize;
	}

	public void setAdministrativeDocumentFileSize(Long administrativeDocumentFileSize) {
		this.administrativeDocumentFileSize = administrativeDocumentFileSize;
	}

	public Long getOfficerDesignationFileSize() {
		return officerDesignationFileSize;
	}

	public void setOfficerDesignationFileSize(Long officerDesignationFileSize) {
		this.officerDesignationFileSize = officerDesignationFileSize;
	}

	public Long getRatingReportFileSize() {
		return ratingReportFileSize;
	}

	public void setRatingReportFileSize(Long ratingReportFileSize) {
		this.ratingReportFileSize = ratingReportFileSize;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAcronym() {
		return acronym;
	}

	public void setAcronym(String acronym) {
		this.acronym = acronym;
	}

	public String getAvatarFileName() {
		return avatarFileName;
	}

	public void setAvatarFileName(String avatarFileName) {
		this.avatarFileName = avatarFileName;
	}

	public String getAvatarContentType() {
		return avatarContentType;
	}

	public void setAvatarContentType(String avatarContentType) {
		this.avatarContentType = avatarContentType;
	}

	public Boolean getEnabled() {
		return enabled;
	}

	public void setEnabled(Boolean enabled) {
		this.enabled = enabled;
	}

	public Boolean getAcceptsOnlineRequests() {
		return acceptsOnlineRequests;
	}

	public void setAcceptsOnlineRequests(Boolean acceptsOnlineRequests) {
		this.acceptsOnlineRequests = acceptsOnlineRequests;
	}

	public String getCertificationAmount() {
		return certificationAmount;
	}

	public void setCertificationAmount(String certificationAmount) {
		this.certificationAmount = certificationAmount;
	}

	public String getReproductionAmount() {
		return reproductionAmount;
	}

	public void setReproductionAmount(String reproductionAmount) {
		this.reproductionAmount = reproductionAmount;
	}

	public String getExternalTransparencySiteUrl() {
		return externalTransparencySiteUrl;
	}

	public void setExternalTransparencySiteUrl(String externalTransparencySiteUrl) {
		this.externalTransparencySiteUrl = externalTransparencySiteUrl;
	}

	public String getFacebookUrl() {
		return facebookUrl;
	}

	public void setFacebookUrl(String facebookUrl) {
		this.facebookUrl = facebookUrl;
	}

	public String getFacebookUsername() {
		return facebookUsername;
	}

	public void setFacebookUsername(String facebookUsername) {
		this.facebookUsername = facebookUsername;
	}

	public String getOfficerEmail() {
		return officerEmail;
	}

	public void setOfficerEmail(String officerEmail) {
		this.officerEmail = officerEmail;
	}

	public String getOfficerName() {
		return officerName;
	}

	public void setOfficerName(String officerName) {
		this.officerName = officerName;
	}

	public String getTwitterUrl() {
		return twitterUrl;
	}

	public void setTwitterUrl(String twitterUrl) {
		this.twitterUrl = twitterUrl;
	}

	public String getTwitterUsername() {
		return twitterUsername;
	}

	public void setTwitterUsername(String twitterUsername) {
		this.twitterUsername = twitterUsername;
	}

	public String getWebsiteUrl() {
		return websiteUrl;
	}

	public void setWebsiteUrl(String websiteUrl) {
		this.websiteUrl = websiteUrl;
	}

	public String getAdministrativeDocumentFileName() {
		return administrativeDocumentFileName;
	}

	public void setAdministrativeDocumentFileName(String administrativeDocumentFileName) {
		this.administrativeDocumentFileName = administrativeDocumentFileName;
	}

	public String getAdministrativeDocumentContentType() {
		return administrativeDocumentContentType;
	}

	public void setAdministrativeDocumentContentType(String administrativeDocumentContentType) {
		this.administrativeDocumentContentType = administrativeDocumentContentType;
	}

	public String getOfficerDesignationFileName() {
		return officerDesignationFileName;
	}

	public void setOfficerDesignationFileName(String officerDesignationFileName) {
		this.officerDesignationFileName = officerDesignationFileName;
	}

	public String getOfficerDesignationContentType() {
		return officerDesignationContentType;
	}

	public void setOfficerDesignationContentType(String officerDesignationContentType) {
		this.officerDesignationContentType = officerDesignationContentType;
	}

	public String getScore() {
		return score;
	}

	public void setScore(String score) {
		this.score = score;
	}

	public String getRatingReportFileName() {
		return ratingReportFileName;
	}

	public void setRatingReportFileName(String ratingReportFileName) {
		this.ratingReportFileName = ratingReportFileName;
	}

	public String getRatingReportContentType() {
		return ratingReportContentType;
	}

	public void setRatingReportContentType(String ratingReportContentType) {
		this.ratingReportContentType = ratingReportContentType;
	}

	public String getFlickrUsername() {
		return flickrUsername;
	}

	public void setFlickrUsername(String flickrUsername) {
		this.flickrUsername = flickrUsername;
	}

	public String getFlickrUrl() {
		return flickrUrl;
	}

	public void setFlickrUrl(String flickrUrl) {
		this.flickrUrl = flickrUrl;
	}

	public String getYoutubeUsername() {
		return youtubeUsername;
	}

	public void setYoutubeUsername(String youtubeUsername) {
		this.youtubeUsername = youtubeUsername;
	}

	public String getYoutubeUrl() {
		return youtubeUrl;
	}

	public void setYoutubeUrl(String youtubeUrl) {
		this.youtubeUrl = youtubeUrl;
	}

	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}

	public List<Comites> getComitesList() {
		return comitesList;
	}

	public void setComitesList(List<Comites> comitesList) {
		this.comitesList = comitesList;
	}

	public List<Funcionarios> getFuncionariosList() {
		return funcionariosList;
	}

	public void setFuncionariosList(List<Funcionarios> funcionariosList) {
		this.funcionariosList = funcionariosList;
	}

	public Long getStandardCategoryId() {
		return standardCategoryId;
	}

	public void setStandardCategoryId(Long standardCategoryId) {
		this.standardCategoryId = standardCategoryId;
	}

	public Long getInstitutionTypeId() {
		return institutionTypeId;
	}

	public void setInstitutionTypeId(Long institutionTypeId) {
		this.institutionTypeId = institutionTypeId;
	}

	public List<Dependencias> getDependenciasList() {
		return dependenciasList;
	}

	public void setDependenciasList(List<Dependencias> dependenciasList) {
		this.dependenciasList = dependenciasList;
	}

	@Override
	public int hashCode() {
		int hash = 0;
		hash += (id != null ? id.hashCode() : 0);
		return hash;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getAvatarUpdatedAt() {
		return avatarUpdatedAt;
	}

	public void setAvatarUpdatedAt(String avatarUpdatedAt) {
		this.avatarUpdatedAt = avatarUpdatedAt;
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

	public String getOfficerDesignationDate() {
		return officerDesignationDate;
	}

	public void setOfficerDesignationDate(String officerDesignationDate) {
		this.officerDesignationDate = officerDesignationDate;
	}

	public String getAdministrativeDocumentUpdatedAt() {
		return administrativeDocumentUpdatedAt;
	}

	public void setAdministrativeDocumentUpdatedAt(String administrativeDocumentUpdatedAt) {
		this.administrativeDocumentUpdatedAt = administrativeDocumentUpdatedAt;
	}

	public String getOfficerDesignationUpdatedAt() {
		return officerDesignationUpdatedAt;
	}

	public void setOfficerDesignationUpdatedAt(String officerDesignationUpdatedAt) {
		this.officerDesignationUpdatedAt = officerDesignationUpdatedAt;
	}

	public String getRatingReportUpdatedAt() {
		return ratingReportUpdatedAt;
	}

	public void setRatingReportUpdatedAt(String ratingReportUpdatedAt) {
		this.ratingReportUpdatedAt = ratingReportUpdatedAt;
	}

	@Override
	public boolean equals(Object object) {
		// TODO: Warning - this method won't work in the case the id fields are not set
		if (!(object instanceof Instituciones)) {
			return false;
		}
		Instituciones other = (Instituciones) object;
		if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
			return false;
		}
		return true;
	}

	@Override
	public String toString() {
		return "com.compliance.model.Instituciones[ id=" + id + " ]";
	}

}
