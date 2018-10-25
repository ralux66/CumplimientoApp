package com.avanceti.compliance.model;


import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name = "menus", catalog = "busqueda", schema = "")
@XmlRootElement
public class Menu implements Serializable {
	 private static final long serialVersionUID = 1L;
	    @Id
	    @GeneratedValue(strategy = GenerationType.IDENTITY)
	    @Basic(optional = false)
	    @Column(name = "idmenu")
	    private Integer idmenu;
	    @Basic(optional = false)
	    @NotNull
	    @Column(name = "codmenu")
	    private short codmenu;
	    @Basic(optional = false)
	    @NotNull
	    @Size(min = 1, max = 15)
	    @Column(name = "nombremenu")
	    private String nombremenu;
	    @Size(max = 200)
	    @Column(name = "observacion")
	    private String observacion;
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
	    @JoinColumn(name = "idmodulo", referencedColumnName = "idmodulo")
	    @ManyToOne(optional = false, fetch = FetchType.LAZY)
	    private Modulos idmodulo;

	    public Menu() {
	    }

	    public Menu(Integer idmenu) {
	        this.idmenu = idmenu;
	    }

	    public Menu(Integer idmenu, short codmenu, String nombremenu, String creadopor, Date creadoel, String modificadopor, Date modificadoel) {
	        this.idmenu = idmenu;
	        this.codmenu = codmenu;
	        this.nombremenu = nombremenu;
	        this.creadopor = creadopor;
	        this.creadoel = creadoel;
	        this.modificadopor = modificadopor;
	        this.modificadoel = modificadoel;
	    }

	    public Integer getIdmenu() {
	        return idmenu;
	    }

	    public void setIdmenu(Integer idmenu) {
	        this.idmenu = idmenu;
	    }

	    public short getCodmenu() {
	        return codmenu;
	    }

	    public void setCodmenu(short codmenu) {
	        this.codmenu = codmenu;
	    }

	    public String getNombremenu() {
	        return nombremenu;
	    }

	    public void setNombremenu(String nombremenu) {
	        this.nombremenu = nombremenu;
	    }

	    public String getObservacion() {
	        return observacion;
	    }

	    public void setObservacion(String observacion) {
	        this.observacion = observacion;
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

	    public Modulos getIdmodulo() {
	        return idmodulo;
	    }

	    public void setIdmodulo(Modulos idmodulo) {
	        this.idmodulo = idmodulo;
	    }

	    @Override
	    public int hashCode() {
	        int hash = 0;
	        hash += (idmenu != null ? idmenu.hashCode() : 0);
	        return hash;
	    }

	    @Override
	    public boolean equals(Object object) {
	        // TODO: Warning - this method won't work in the case the id fields are not set
	        if (!(object instanceof Menu)) {
	            return false;
	        }
	        Menu other = (Menu) object;
	        if ((this.idmenu == null && other.idmenu != null) || (this.idmenu != null && !this.idmenu.equals(other.idmenu))) {
	            return false;
	        }
	        return true;
	    }

	    @Override
	    public String toString() {
	        return "com.compliance.model.Menus[ idmenu=" + idmenu + " ]";
	    }
}
