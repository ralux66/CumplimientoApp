package com.avanceti.compliance.model;

import java.io.Serializable;
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
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author rzepeda
 */
@Entity
@Table(name = "cons_alt", catalog = "busqueda", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ConsAlt.findAll", query = "SELECT c FROM ConsAlt c")})
public class ConsAlt implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "alt_num")
    private Integer altNum;
    @Size(max = 8)
    @Column(name = "alt_type")
    private String altType;
    @Size(max = 350)
    @Column(name = "alt_name")
    private String altName;
    @Size(max = 200)
    @Column(name = "alt_remarks")
    private String altRemarks;
    @JoinColumn(name = "ent_num", referencedColumnName = "ent_num")
    @ManyToOne(optional = false, fetch = FetchType.EAGER)
    private ConsPrim entNum;

    public ConsAlt() {
    }

    public ConsAlt(Integer altNum) {
        this.altNum = altNum;
    }

    public Integer getAltNum() {
        return altNum;
    }

    public void setAltNum(Integer altNum) {
        this.altNum = altNum;
    }

    public String getAltType() {
        return altType;
    }

    public void setAltType(String altType) {
        this.altType = altType;
    }

    public String getAltName() {
        return altName;
    }

    public void setAltName(String altName) {
        this.altName = altName;
    }

    public String getAltRemarks() {
        return altRemarks;
    }

    public void setAltRemarks(String altRemarks) {
        this.altRemarks = altRemarks;
    }

    public ConsPrim getEntNum() {
        return entNum;
    }

    public void setEntNum(ConsPrim entNum) {
        this.entNum = entNum;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (altNum != null ? altNum.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ConsAlt)) {
            return false;
        }
        ConsAlt other = (ConsAlt) object;
        if ((this.altNum == null && other.altNum != null) || (this.altNum != null && !this.altNum.equals(other.altNum))) {
            return false;
        }
        return true;
    }

	@Override
	public String toString() {
		return "ConsAlt [altNum=" + altNum + ", altType=" + altType + ", altName=" + altName + ", altRemarks="
				+ altRemarks + ", entNum=" + entNum + "]";
	}

   
    
}
