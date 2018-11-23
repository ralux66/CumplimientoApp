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
@Table(name = "cons_add", catalog = "busqueda", schema = "")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "ConsAdd.findAll", query = "SELECT c FROM ConsAdd c")})
public class ConsAdd implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "Add_num")
    private Integer addnum;
    @Size(max = 750)
    @Column(name = "Address")
    private String address;
    @Size(max = 116)
    @Column(name = "City")
    private String city;
    @Size(max = 250)
    @Column(name = "Country")
    private String country;
    @Size(max = 200)
    @Column(name = "Add_remarks")
    private String addremarks;
    @JoinColumn(name = "Ent_num", referencedColumnName = "ent_num")
    @ManyToOne(optional = false, fetch = FetchType.EAGER)
    private ConsPrim entnum;

    public ConsAdd() {
    }

    public ConsAdd(Integer addnum) {
        this.addnum = addnum;
    }

    public Integer getAddnum() {
        return addnum;
    }

    public void setAddnum(Integer addnum) {
        this.addnum = addnum;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getAddremarks() {
        return addremarks;
    }

    public void setAddremarks(String addremarks) {
        this.addremarks = addremarks;
    }

    public ConsPrim getEntnum() {
        return entnum;
    }

    public void setEntnum(ConsPrim entnum) {
        this.entnum = entnum;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (addnum != null ? addnum.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof ConsAdd)) {
            return false;
        }
        ConsAdd other = (ConsAdd) object;
        if ((this.addnum == null && other.addnum != null) || (this.addnum != null && !this.addnum.equals(other.addnum))) {
            return false;
        }
        return true;
    }

	@Override
	public String toString() {
		return "ConsAdd [addnum=" + addnum + ", address=" + address + ", city=" + city + ", country=" + country
				+ ", addremarks=" + addremarks + ", entnum=" + entnum + "]";
	}
}
