package com.avanceti.compliance.model;
import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author ralux88
 */
@Entity
@Table(name = "mostwanted", catalog = "busqueda", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Mostwanted.findAll", query = "SELECT m FROM Mostwanted m")})
public class Mostwanted implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "id")
    private Integer id;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "NombreCompleto")
    private String nombreCompleto;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "PrimerNombre")
    private String primerNombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "SegundoNombre")
    private String segundoNombre;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "PrimerApellido")
    private String primerApellido;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "SegundoApellido")
    private String segundoApellido;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "ApellidoCasada")
    private String apellidoCasada;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Alias")
    private String alias;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 45)
    @Column(name = "Delito")
    private String delito;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 300)
    @Column(name = "Residencia")
    private String residencia;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 100)
    @Column(name = "Estado")
    private String estado;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 300)
    @Column(name = "MasInformacion")
    private String masInformacion;
    @Size(max = 100)
    @Column(name = "custom1")
    private String custom1;
    @Size(max = 100)
    @Column(name = "custom2")
    private String custom2;
    @Size(max = 100)
    @Column(name = "custom3")
    private String custom3;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "creadopor")
    private String creadopor;
    @Basic(optional = false)
    @NotNull
    @Column(name = "creadoel")
    @Temporal(TemporalType.TIMESTAMP)
    private Date creadoel;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 50)
    @Column(name = "modificadopor")
    private String modificadopor;
    @Basic(optional = false)
    @NotNull
    @Column(name = "modificadoel")
    @Temporal(TemporalType.TIMESTAMP)
    private Date modificadoel;
    
    @Transient
    private Double score;
    
    

    public Mostwanted() {
    }

    public Mostwanted(Integer id) {
        this.id = id;
    }

    public Mostwanted(Integer id, String nombreCompleto, String primerNombre, String segundoNombre, String primerApellido, String segundoApellido, String apellidoCasada, String alias, String delito, String residencia, String estado, String masInformacion, String creadopor, Date creadoel, String modificadopor, Date modificadoel) {
        this.id = id;
        this.nombreCompleto = nombreCompleto;
        this.primerNombre = primerNombre;
        this.segundoNombre = segundoNombre;
        this.primerApellido = primerApellido;
        this.segundoApellido = segundoApellido;
        this.apellidoCasada = apellidoCasada;
        this.alias = alias;
        this.delito = delito;
        this.residencia = residencia;
        this.estado = estado;
        this.masInformacion = masInformacion;
        this.creadopor = creadopor;
        this.creadoel = creadoel;
        this.modificadopor = modificadopor;
        this.modificadoel = modificadoel;
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
    
    public String getNombreCompleto() {
		return nombreCompleto;
	}

	public void setNombreCompleto(String nombreCompleto) {
		this.nombreCompleto = nombreCompleto;
	}

	public String getPrimerNombre() {
        return primerNombre;
    }

    public void setPrimerNombre(String primerNombre) {
        this.primerNombre = primerNombre;
    }

    public String getSegundoNombre() {
        return segundoNombre;
    }

    public void setSegundoNombre(String segundoNombre) {
        this.segundoNombre = segundoNombre;
    }

    public String getPrimerApellido() {
        return primerApellido;
    }

    public void setPrimerApellido(String primerApellido) {
        this.primerApellido = primerApellido;
    }

    public String getSegundoApellido() {
        return segundoApellido;
    }

    public void setSegundoApellido(String segundoApellido) {
        this.segundoApellido = segundoApellido;
    }

    public String getApellidoCasada() {
        return apellidoCasada;
    }

    public void setApellidoCasada(String apellidoCasada) {
        this.apellidoCasada = apellidoCasada;
    }

    public String getAlias() {
        return alias;
    }

    public void setAlias(String alias) {
        this.alias = alias;
    }

    public String getDelito() {
        return delito;
    }

    public void setDelito(String delito) {
        this.delito = delito;
    }

    public String getResidencia() {
        return residencia;
    }

    public void setResidencia(String residencia) {
        this.residencia = residencia;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getMasInformacion() {
        return masInformacion;
    }

    public void setMasInformacion(String masInformacion) {
        this.masInformacion = masInformacion;
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

    public String getCreadopor() {
        return creadopor;
    }

    public void setCreadopor(String creadopor) {
        this.creadopor = creadopor;
    }

    public Date getCreadoel() {
        return creadoel;
    }

    public void setCreadoel(Date creadoel) {
        this.creadoel = creadoel;
    }

    public String getModificadopor() {
        return modificadopor;
    }

    public void setModificadopor(String modificadopor) {
        this.modificadopor = modificadopor;
    }

    public Date getModificadoel() {
        return modificadoel;
    }

    public void setModificadoel(Date modificadoel) {
        this.modificadoel = modificadoel;
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
        if (!(object instanceof Mostwanted)) {
            return false;
        }
        Mostwanted other = (Mostwanted) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

	@Override
	public String toString() {
		return "Mostwanted [id=" + id + ", nombreCompleto=" + nombreCompleto + ", primerNombre=" + primerNombre
				+ ", segundoNombre=" + segundoNombre + ", primerApellido=" + primerApellido + ", segundoApellido="
				+ segundoApellido + ", apellidoCasada=" + apellidoCasada + ", alias=" + alias + ", delito=" + delito
				+ ", residencia=" + residencia + ", estado=" + estado + ", masInformacion=" + masInformacion
				+ ", custom1=" + custom1 + ", custom2=" + custom2 + ", custom3=" + custom3 + ", creadopor=" + creadopor
				+ ", creadoel=" + creadoel + ", modificadopor=" + modificadopor + ", modificadoel=" + modificadoel
				+ "]";
	}

   
    
}
