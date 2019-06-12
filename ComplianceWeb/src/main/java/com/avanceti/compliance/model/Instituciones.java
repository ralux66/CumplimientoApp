package com.avanceti.compliance.model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.Serializable;
import java.math.BigDecimal;
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
@Table(catalog = "busqueda", schema = "")
@NamedQueries({
    @NamedQuery(name = "Instituciones.findAll", query = "SELECT i FROM Instituciones i")})
public class Instituciones implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    private Integer id;
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
    private Integer avatarFileSize;
    @Column(name = "avatar_updated_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date avatarUpdatedAt;
    @Column(name = "created_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date createdAt;
    @Column(name = "updated_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date updatedAt;
    private Short enabled;
    @Column(name = "accepts_online_requests")
    private Short acceptsOnlineRequests;
    @Column(name = "administrative_document_type")
    private Integer administrativeDocumentType;
    // @Max(value=?)  @Min(value=?)//if you know range of your decimal fields consider using these annotations to enforce field validation
    @Column(name = "certification_amount")
    private BigDecimal certificationAmount;
    @Column(name = "reproduction_amount")
    private BigDecimal reproductionAmount;
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
    @Temporal(TemporalType.DATE)
    private Date officerDesignationDate;
    @Size(max = 255)
    @Column(name = "administrative_document_file_name")
    private String administrativeDocumentFileName;
    @Size(max = 255)
    @Column(name = "administrative_document_content_type")
    private String administrativeDocumentContentType;
    @Column(name = "administrative_document_file_size")
    private Integer administrativeDocumentFileSize;
    @Column(name = "administrative_document_updated_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date administrativeDocumentUpdatedAt;
    @Size(max = 255)
    @Column(name = "officer_designation_file_name")
    private String officerDesignationFileName;
    @Size(max = 255)
    @Column(name = "officer_designation_content_type")
    private String officerDesignationContentType;
    @Column(name = "officer_designation_file_size")
    private Integer officerDesignationFileSize;
    @Column(name = "officer_designation_updated_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date officerDesignationUpdatedAt;
    private BigDecimal score;
    @Size(max = 255)
    @Column(name = "rating_report_file_name")
    private String ratingReportFileName;
    @Size(max = 255)
    @Column(name = "rating_report_content_type")
    private String ratingReportContentType;
    @Column(name = "rating_report_file_size")
    private Integer ratingReportFileSize;
    @Column(name = "rating_report_updated_at")
    @Temporal(TemporalType.TIMESTAMP)
    private Date ratingReportUpdatedAt;
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
    @JoinColumn(name = "standard_category_id", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY)
    private EstandarCategorias standardCategoryId;
    @JoinColumn(name = "institution_type_id", referencedColumnName = "id")
    @ManyToOne(fetch = FetchType.LAZY)
    private TipoInstitucion institutionTypeId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "institutionId", fetch = FetchType.LAZY)
    private List<Dependencias> dependenciasList;

    public Instituciones() {
    }

    public Instituciones(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
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

    public Integer getAvatarFileSize() {
        return avatarFileSize;
    }

    public void setAvatarFileSize(Integer avatarFileSize) {
        this.avatarFileSize = avatarFileSize;
    }

    public Date getAvatarUpdatedAt() {
        return avatarUpdatedAt;
    }

    public void setAvatarUpdatedAt(Date avatarUpdatedAt) {
        this.avatarUpdatedAt = avatarUpdatedAt;
    }

    public Date getCreatedAt() {
        return createdAt;
    }

    public void setCreatedAt(Date createdAt) {
        this.createdAt = createdAt;
    }

    public Date getUpdatedAt() {
        return updatedAt;
    }

    public void setUpdatedAt(Date updatedAt) {
        this.updatedAt = updatedAt;
    }

    public Short getEnabled() {
        return enabled;
    }

    public void setEnabled(Short enabled) {
        this.enabled = enabled;
    }

    public Short getAcceptsOnlineRequests() {
        return acceptsOnlineRequests;
    }

    public void setAcceptsOnlineRequests(Short acceptsOnlineRequests) {
        this.acceptsOnlineRequests = acceptsOnlineRequests;
    }

    public Integer getAdministrativeDocumentType() {
        return administrativeDocumentType;
    }

    public void setAdministrativeDocumentType(Integer administrativeDocumentType) {
        this.administrativeDocumentType = administrativeDocumentType;
    }

    public BigDecimal getCertificationAmount() {
        return certificationAmount;
    }

    public void setCertificationAmount(BigDecimal certificationAmount) {
        this.certificationAmount = certificationAmount;
    }

    public BigDecimal getReproductionAmount() {
        return reproductionAmount;
    }

    public void setReproductionAmount(BigDecimal reproductionAmount) {
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

    public Date getOfficerDesignationDate() {
        return officerDesignationDate;
    }

    public void setOfficerDesignationDate(Date officerDesignationDate) {
        this.officerDesignationDate = officerDesignationDate;
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

    public Integer getAdministrativeDocumentFileSize() {
        return administrativeDocumentFileSize;
    }

    public void setAdministrativeDocumentFileSize(Integer administrativeDocumentFileSize) {
        this.administrativeDocumentFileSize = administrativeDocumentFileSize;
    }

    public Date getAdministrativeDocumentUpdatedAt() {
        return administrativeDocumentUpdatedAt;
    }

    public void setAdministrativeDocumentUpdatedAt(Date administrativeDocumentUpdatedAt) {
        this.administrativeDocumentUpdatedAt = administrativeDocumentUpdatedAt;
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

    public Integer getOfficerDesignationFileSize() {
        return officerDesignationFileSize;
    }

    public void setOfficerDesignationFileSize(Integer officerDesignationFileSize) {
        this.officerDesignationFileSize = officerDesignationFileSize;
    }

    public Date getOfficerDesignationUpdatedAt() {
        return officerDesignationUpdatedAt;
    }

    public void setOfficerDesignationUpdatedAt(Date officerDesignationUpdatedAt) {
        this.officerDesignationUpdatedAt = officerDesignationUpdatedAt;
    }

    public BigDecimal getScore() {
        return score;
    }

    public void setScore(BigDecimal score) {
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

    public Integer getRatingReportFileSize() {
        return ratingReportFileSize;
    }

    public void setRatingReportFileSize(Integer ratingReportFileSize) {
        this.ratingReportFileSize = ratingReportFileSize;
    }

    public Date getRatingReportUpdatedAt() {
        return ratingReportUpdatedAt;
    }

    public void setRatingReportUpdatedAt(Date ratingReportUpdatedAt) {
        this.ratingReportUpdatedAt = ratingReportUpdatedAt;
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

    public EstandarCategorias getStandardCategoryId() {
        return standardCategoryId;
    }

    public void setStandardCategoryId(EstandarCategorias standardCategoryId) {
        this.standardCategoryId = standardCategoryId;
    }

    public TipoInstitucion getInstitutionTypeId() {
        return institutionTypeId;
    }

    public void setInstitutionTypeId(TipoInstitucion institutionTypeId) {
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
