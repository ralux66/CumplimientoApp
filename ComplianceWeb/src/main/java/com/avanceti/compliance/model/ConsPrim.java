package com.avanceti.compliance.model;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

/**
 *
 * @author rzepeda
 */
@Entity
@Table(name = "cons_prim", catalog = "busqueda", schema = "")
@XmlRootElement
public class ConsPrim implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "ent_num")
    private Integer entNum;
    @Size(max = 350)
    @Column(name = "SDN_Name")
    private String sDNName;
    @Size(max = 12)
    @Column(name = "SDN_Type")
    private String sDNType;
    @Size(max = 50)
    @Column(name = "Program")
    private String program;
    @Size(max = 200)
    @Column(name = "Title")
    private String title;
    @Size(max = 8)
    @Column(name = "Call_Sign")
    private String callSign;
    @Size(max = 25)
    @Column(name = "Vess_type")
    private String vesstype;
    @Size(max = 14)
    @Column(name = "Tonnage")
    private String tonnage;
    @Size(max = 8)
    @Column(name = "GRT")
    private String grt;
    @Size(max = 40)
    @Column(name = "Vess_flag")
    private String vessflag;
    @Size(max = 150)
    @Column(name = "Vess_owner")
    private String vessowner;
    @Size(max = 1000)
    @Column(name = "Remarks")
    private String remarks;
    @Fetch(value = FetchMode.SUBSELECT)
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "entNum", fetch = FetchType.EAGER)
    private List<ConsAlt> consAltList;
    @Fetch(value = FetchMode.SUBSELECT)
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "entnum", fetch = FetchType.EAGER)
    private List<ConsAdd> consAddList;
    @Transient
    private Double score;
    
    public ConsPrim() {
    }
    

	public Double getScore() {
		return score;
	}

	public void setScore(Double score) {
		this.score = score;
	}

	public String getsDNName() {
		return sDNName;
	}

	public void setsDNName(String sDNName) {
		this.sDNName = sDNName;
	}

	public String getsDNType() {
		return sDNType;
	}

	public void setsDNType(String sDNType) {
		this.sDNType = sDNType;
	}

	public ConsPrim(Integer entNum) {
        this.entNum = entNum;
    }

    public Integer getEntNum() {
        return entNum;
    }

    public void setEntNum(Integer entNum) {
        this.entNum = entNum;
    }
    
    public String getSDNType() {
        return sDNType;
    }

    public void setSDNType(String sDNType) {
        this.sDNType = sDNType;
    }

    public String getProgram() {
        return program;
    }

    public void setProgram(String program) {
        this.program = program;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getCallSign() {
        return callSign;
    }

    public void setCallSign(String callSign) {
        this.callSign = callSign;
    }

    public String getVesstype() {
        return vesstype;
    }

    public void setVesstype(String vesstype) {
        this.vesstype = vesstype;
    }

    public String getTonnage() {
        return tonnage;
    }

    public void setTonnage(String tonnage) {
        this.tonnage = tonnage;
    }

    public String getGrt() {
        return grt;
    }

    public void setGrt(String grt) {
        this.grt = grt;
    }

    public String getVessflag() {
        return vessflag;
    }

    public void setVessflag(String vessflag) {
        this.vessflag = vessflag;
    }

    public String getVessowner() {
        return vessowner;
    }

    public void setVessowner(String vessowner) {
        this.vessowner = vessowner;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    @XmlTransient
    public List<ConsAlt> getConsAltList() {
        return consAltList;
    }

    public void setConsAltList(List<ConsAlt> consAltList) {
        this.consAltList = consAltList;
    }

 

    public List<ConsAdd> getConsAddList() {
		return consAddList;
	}


	public void setConsAddList(List<ConsAdd> consAddList) {
		this.consAddList = consAddList;
	}


	@Override
    public int hashCode() {
        int hash = 0;
        hash += (entNum != null ? entNum.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ConsPrim)) {
            return false;
        }
        ConsPrim other = (ConsPrim) object;
        if ((this.entNum == null && other.entNum != null) || (this.entNum != null && !this.entNum.equals(other.entNum))) {
            return false;
        }
        return true;
    }


	@Override
	public String toString() {
		return "ConsPrim [entNum=" + entNum + ", sDNName=" + sDNName + ", sDNType=" + sDNType + ", program=" + program
				+ ", title=" + title + ", callSign=" + callSign + ", vesstype=" + vesstype + ", tonnage=" + tonnage
				+ ", grt=" + grt + ", vessflag=" + vessflag + ", vessowner=" + vessowner + ", remarks=" + remarks
				+ ", consAltList=" + consAltList + ", consAddList=" + consAddList + ", score=" + score + "]";
	}

	

    
}
