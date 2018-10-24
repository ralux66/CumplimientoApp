package com.avanceti.compliance.model;

import java.io.Serializable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Lob;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name = "ofac", catalog = "busqueda", schema = "")
@XmlRootElement
public class Ofac implements Serializable {

	private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "Id")
    private Integer id;
    @Lob
    @Size(max = 65535)
    @Column(name = "source")
    private String source;
    @Column(name = "id2")
    private Integer id2;
    @Lob
    @Size(max = 65535)
    @Column(name = "typeV")
    private String typeV;
    @Lob
    @Size(max = 65535)
    @Column(name = "indEnt")
    private String indEnt;
    @Column(name = "id3")
    private Integer id3;
    @Column(name = "id4")
    private Integer id4;
    @Lob
    @Size(max = 65535)
    @Column(name = "sourceEntNum")
    private String sourceEntNum;
    @Lob
    @Size(max = 65535)
    @Column(name = "from_file")
    private String fromFile;
    @Lob
    @Size(max = 65535)
    @Column(name = "program")
    private String program;
    @Lob
    @Size(max = 65535)
    @Column(name = "programAlt")
    private String programAlt;
    @Lob
    @Size(max = 65535)
    @Column(name = "id5")
    private String id5;
    @Lob
    @Size(max = 65535)
    @Column(name = "dateUpdateString")
    private String dateUpdateString;
    @Lob
    @Size(max = 65535)
    @Column(name = "id6X")
    private String id6X;
    @Lob
    @Size(max = 65535)
    @Column(name = "dateListString")
    private String dateListString;
    @Lob
    @Size(max = 65535)
    @Column(name = "akaType")
    private String akaType;
    @Lob
    @Size(max = 65535)
    @Column(name = "titleMain")
    private String titleMain;
    @Lob
    @Size(max = 65535)
    @Column(name = "entName")
    private String entName;
    @Lob
    @Size(max = 65535)
    @Column(name = "firstName")
    private String firstName;
    @Lob
    @Size(max = 65535)
    @Column(name = "lastName")
    private String lastName;
    @Lob
    @Size(max = 65535)
    @Column(name = "name")
    private String name;
    @Lob
    @Size(max = 65535)
    @Column(name = "name_orig_script")
    private String nameOrigScript;
    @Lob
    @Size(max = 65535)
    @Column(name = "vesName")
    private String vesName;
    @Lob
    @Size(max = 65535)
    @Column(name = "address")
    private String address;
    @Lob
    @Size(max = 65535)
    @Column(name = "city")
    private String city;
    @Lob
    @Size(max = 65535)
    @Column(name = "zip")
    private String zip;
    @Lob
    @Size(max = 65535)
    @Column(name = "state")
    private String state;
    @Lob
    @Size(max = 65535)
    @Column(name = "country")
    private String country;
    @Lob
    @Size(max = 65535)
    @Column(name = "citizenship")
    private String citizenship;
    @Lob
    @Size(max = 65535)
    @Column(name = "citizenshipAlt")
    private String citizenshipAlt;
    @Lob
    @Size(max = 65535)
    @Column(name = "id6")
    private String id6;
    @Lob
    @Size(max = 65535)
    @Column(name = "dateBirthAlt")
    private String dateBirthAlt;
    @Lob
    @Size(max = 65535)
    @Column(name = "dateBirthString")
    private String dateBirthString;
    @Lob
    @Size(max = 65535)
    @Column(name = "extLinks")
    private String extLinks;
    @Lob
    @Size(max = 65535)
    @Column(name = "idInfo")
    private String idInfo;
    @Lob
    @Size(max = 65535)
    @Column(name = "idType")
    private String idType;
    @Lob
    @Size(max = 65535)
    @Column(name = "nationality")
    private String nationality;
    @Lob
    @Size(max = 65535)
    @Column(name = "nationalityAlt")
    private String nationalityAlt;
    @Lob
    @Size(max = 65535)
    @Column(name = "placeBirth")
    private String placeBirth;
    @Lob
    @Size(max = 65535)
    @Column(name = "placeBirthAlt")
    private String placeBirthAlt;
    @Lob
    @Size(max = 65535)
    @Column(name = "remarks")
    private String remarks;
    @Lob
    @Size(max = 65535)
    @Column(name = "vesType")
    private String vesType;
    @Lob
    @Size(max = 65535)
    @Column(name = "entNameOrig")
    private String entNameOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "firstNameOrig")
    private String firstNameOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "lastNameOrig")
    private String lastNameOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "nameOrig")
    private String nameOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "vesNameOrig")
    private String vesNameOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "addressOrig")
    private String addressOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "cityOrig")
    private String cityOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "zipOrig")
    private String zipOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "stateOrig")
    private String stateOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "countryOrig")
    private String countryOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "citizenshipAltOrig")
    private String citizenshipAltOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "citizenshipOrig")
    private String citizenshipOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "dateBirthAltOrig")
    private String dateBirthAltOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "dateBirthStringOrig")
    private String dateBirthStringOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "extLinksOrig")
    private String extLinksOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "idInfoOrig")
    private String idInfoOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "idTypeOrig")
    private String idTypeOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "nationalityAltOrig")
    private String nationalityAltOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "nationalityOrig")
    private String nationalityOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "placeBirthAltOrig")
    private String placeBirthAltOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "placeBirthOrig")
    private String placeBirthOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "remarksOrig")
    private String remarksOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "vesTypeOrig")
    private String vesTypeOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "dateListStringOrig")
    private String dateListStringOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "dateUpdateStringOrig")
    private String dateUpdateStringOrig;
    @Lob
    @Size(max = 65535)
    @Column(name = "countryCode")
    private String countryCode;

    public Ofac() {
    }

    public Ofac(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSource() {
        return source;
    }

    public void setSource(String source) {
        this.source = source;
    }

    public Integer getId2() {
        return id2;
    }

    public void setId2(Integer id2) {
        this.id2 = id2;
    }

    public String getTypeV() {
        return typeV;
    }

    public void setTypeV(String typeV) {
        this.typeV = typeV;
    }

    public String getIndEnt() {
        return indEnt;
    }

    public void setIndEnt(String indEnt) {
        this.indEnt = indEnt;
    }

    public Integer getId3() {
        return id3;
    }

    public void setId3(Integer id3) {
        this.id3 = id3;
    }

    public Integer getId4() {
        return id4;
    }

    public void setId4(Integer id4) {
        this.id4 = id4;
    }

    public String getSourceEntNum() {
        return sourceEntNum;
    }

    public void setSourceEntNum(String sourceEntNum) {
        this.sourceEntNum = sourceEntNum;
    }

    public String getFromFile() {
        return fromFile;
    }

    public void setFromFile(String fromFile) {
        this.fromFile = fromFile;
    }

    public String getProgram() {
        return program;
    }

    public void setProgram(String program) {
        this.program = program;
    }

    public String getProgramAlt() {
        return programAlt;
    }

    public void setProgramAlt(String programAlt) {
        this.programAlt = programAlt;
    }

    public String getId5() {
        return id5;
    }

    public void setId5(String id5) {
        this.id5 = id5;
    }

    public String getDateUpdateString() {
        return dateUpdateString;
    }

    public void setDateUpdateString(String dateUpdateString) {
        this.dateUpdateString = dateUpdateString;
    }

    public String getId6X() {
        return id6X;
    }

    public void setId6X(String id6X) {
        this.id6X = id6X;
    }

    public String getDateListString() {
        return dateListString;
    }

    public void setDateListString(String dateListString) {
        this.dateListString = dateListString;
    }

    public String getAkaType() {
        return akaType;
    }

    public void setAkaType(String akaType) {
        this.akaType = akaType;
    }

    public String getTitleMain() {
        return titleMain;
    }

    public void setTitleMain(String titleMain) {
        this.titleMain = titleMain;
    }

    public String getEntName() {
        return entName;
    }

    public void setEntName(String entName) {
        this.entName = entName;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNameOrigScript() {
        return nameOrigScript;
    }

    public void setNameOrigScript(String nameOrigScript) {
        this.nameOrigScript = nameOrigScript;
    }

    public String getVesName() {
        return vesName;
    }

    public void setVesName(String vesName) {
        this.vesName = vesName;
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

    public String getZip() {
        return zip;
    }

    public void setZip(String zip) {
        this.zip = zip;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCountry() {
        return country;
    }

    public void setCountry(String country) {
        this.country = country;
    }

    public String getCitizenship() {
        return citizenship;
    }

    public void setCitizenship(String citizenship) {
        this.citizenship = citizenship;
    }

    public String getCitizenshipAlt() {
        return citizenshipAlt;
    }

    public void setCitizenshipAlt(String citizenshipAlt) {
        this.citizenshipAlt = citizenshipAlt;
    }

    public String getId6() {
        return id6;
    }

    public void setId6(String id6) {
        this.id6 = id6;
    }

    public String getDateBirthAlt() {
        return dateBirthAlt;
    }

    public void setDateBirthAlt(String dateBirthAlt) {
        this.dateBirthAlt = dateBirthAlt;
    }

    public String getDateBirthString() {
        return dateBirthString;
    }

    public void setDateBirthString(String dateBirthString) {
        this.dateBirthString = dateBirthString;
    }

    public String getExtLinks() {
        return extLinks;
    }

    public void setExtLinks(String extLinks) {
        this.extLinks = extLinks;
    }

    public String getIdInfo() {
        return idInfo;
    }

    public void setIdInfo(String idInfo) {
        this.idInfo = idInfo;
    }

    public String getIdType() {
        return idType;
    }

    public void setIdType(String idType) {
        this.idType = idType;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public String getNationalityAlt() {
        return nationalityAlt;
    }

    public void setNationalityAlt(String nationalityAlt) {
        this.nationalityAlt = nationalityAlt;
    }

    public String getPlaceBirth() {
        return placeBirth;
    }

    public void setPlaceBirth(String placeBirth) {
        this.placeBirth = placeBirth;
    }

    public String getPlaceBirthAlt() {
        return placeBirthAlt;
    }

    public void setPlaceBirthAlt(String placeBirthAlt) {
        this.placeBirthAlt = placeBirthAlt;
    }

    public String getRemarks() {
        return remarks;
    }

    public void setRemarks(String remarks) {
        this.remarks = remarks;
    }

    public String getVesType() {
        return vesType;
    }

    public void setVesType(String vesType) {
        this.vesType = vesType;
    }

    public String getEntNameOrig() {
        return entNameOrig;
    }

    public void setEntNameOrig(String entNameOrig) {
        this.entNameOrig = entNameOrig;
    }

    public String getFirstNameOrig() {
        return firstNameOrig;
    }

    public void setFirstNameOrig(String firstNameOrig) {
        this.firstNameOrig = firstNameOrig;
    }

    public String getLastNameOrig() {
        return lastNameOrig;
    }

    public void setLastNameOrig(String lastNameOrig) {
        this.lastNameOrig = lastNameOrig;
    }

    public String getNameOrig() {
        return nameOrig;
    }

    public void setNameOrig(String nameOrig) {
        this.nameOrig = nameOrig;
    }

    public String getVesNameOrig() {
        return vesNameOrig;
    }

    public void setVesNameOrig(String vesNameOrig) {
        this.vesNameOrig = vesNameOrig;
    }

    public String getAddressOrig() {
        return addressOrig;
    }

    public void setAddressOrig(String addressOrig) {
        this.addressOrig = addressOrig;
    }

    public String getCityOrig() {
        return cityOrig;
    }

    public void setCityOrig(String cityOrig) {
        this.cityOrig = cityOrig;
    }

    public String getZipOrig() {
        return zipOrig;
    }

    public void setZipOrig(String zipOrig) {
        this.zipOrig = zipOrig;
    }

    public String getStateOrig() {
        return stateOrig;
    }

    public void setStateOrig(String stateOrig) {
        this.stateOrig = stateOrig;
    }

    public String getCountryOrig() {
        return countryOrig;
    }

    public void setCountryOrig(String countryOrig) {
        this.countryOrig = countryOrig;
    }

    public String getCitizenshipAltOrig() {
        return citizenshipAltOrig;
    }

    public void setCitizenshipAltOrig(String citizenshipAltOrig) {
        this.citizenshipAltOrig = citizenshipAltOrig;
    }

    public String getCitizenshipOrig() {
        return citizenshipOrig;
    }

    public void setCitizenshipOrig(String citizenshipOrig) {
        this.citizenshipOrig = citizenshipOrig;
    }

    public String getDateBirthAltOrig() {
        return dateBirthAltOrig;
    }

    public void setDateBirthAltOrig(String dateBirthAltOrig) {
        this.dateBirthAltOrig = dateBirthAltOrig;
    }

    public String getDateBirthStringOrig() {
        return dateBirthStringOrig;
    }

    public void setDateBirthStringOrig(String dateBirthStringOrig) {
        this.dateBirthStringOrig = dateBirthStringOrig;
    }

    public String getExtLinksOrig() {
        return extLinksOrig;
    }

    public void setExtLinksOrig(String extLinksOrig) {
        this.extLinksOrig = extLinksOrig;
    }

    public String getIdInfoOrig() {
        return idInfoOrig;
    }

    public void setIdInfoOrig(String idInfoOrig) {
        this.idInfoOrig = idInfoOrig;
    }

    public String getIdTypeOrig() {
        return idTypeOrig;
    }

    public void setIdTypeOrig(String idTypeOrig) {
        this.idTypeOrig = idTypeOrig;
    }

    public String getNationalityAltOrig() {
        return nationalityAltOrig;
    }

    public void setNationalityAltOrig(String nationalityAltOrig) {
        this.nationalityAltOrig = nationalityAltOrig;
    }

    public String getNationalityOrig() {
        return nationalityOrig;
    }

    public void setNationalityOrig(String nationalityOrig) {
        this.nationalityOrig = nationalityOrig;
    }

    public String getPlaceBirthAltOrig() {
        return placeBirthAltOrig;
    }

    public void setPlaceBirthAltOrig(String placeBirthAltOrig) {
        this.placeBirthAltOrig = placeBirthAltOrig;
    }

    public String getPlaceBirthOrig() {
        return placeBirthOrig;
    }

    public void setPlaceBirthOrig(String placeBirthOrig) {
        this.placeBirthOrig = placeBirthOrig;
    }

    public String getRemarksOrig() {
        return remarksOrig;
    }

    public void setRemarksOrig(String remarksOrig) {
        this.remarksOrig = remarksOrig;
    }

    public String getVesTypeOrig() {
        return vesTypeOrig;
    }

    public void setVesTypeOrig(String vesTypeOrig) {
        this.vesTypeOrig = vesTypeOrig;
    }

    public String getDateListStringOrig() {
        return dateListStringOrig;
    }

    public void setDateListStringOrig(String dateListStringOrig) {
        this.dateListStringOrig = dateListStringOrig;
    }

    public String getDateUpdateStringOrig() {
        return dateUpdateStringOrig;
    }

    public void setDateUpdateStringOrig(String dateUpdateStringOrig) {
        this.dateUpdateStringOrig = dateUpdateStringOrig;
    }

    public String getCountryCode() {
        return countryCode;
    }

    public void setCountryCode(String countryCode) {
        this.countryCode = countryCode;
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
        if (!(object instanceof Ofac)) {
            return false;
        }
        Ofac other = (Ofac) object;
        if ((this.id == null && other.id != null) || (this.id != null && !this.id.equals(other.id))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.compliance.model.Ofac[ id=" + id + " ]";
    }

	
}