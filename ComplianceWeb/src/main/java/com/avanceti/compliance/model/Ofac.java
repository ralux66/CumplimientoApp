package com.avanceti.compliance.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Table;


@SuppressWarnings("serial")
@Entity
@Table(name="ofac")
public class Ofac implements Serializable {

	@javax.persistence.Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int Id;
	/*@javax.persistence.Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)*/
	private int id2;
	/*@javax.persistence.Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)*/
	private int id3;
	/*@javax.persistence.Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)*/
	private int id4;

	private String source;

	private String typeV;

	private String indEnt;

	private String sourceEntNum;

	private String from_file;

	private String program;

	private String programAlt;

	private String id5;

	private String dateUpdateString;

	private String id6X;

	private String dateListString;

	private String akaType;

	private String titleMain;

	private String entName;

	private String firstName;

	private String lastName;

	private String name;

	private String name_orig_script;

	private String vesName;

	private String address;

	private String city;

	private String zip;

	private String state;

	private String country;

	private String citizenship;

	private String citizenshipAlt;

	private String id6;

	private String dateBirthAlt;

	private String dateBirthString;

	private String extLinks;

	private String idInfo;

	private String idType;

	private String nationality;

	private String nationalityAlt;

	private String placeBirth;

	private String placeBirthAlt;

	private String remarks;

	private String vesType;

	private String entNameOrig;

	private String firstNameOrig;

	private String lastNameOrig;

	private String nameOrig;

	private String vesNameOrig;

	private String addressOrig;

	private String cityOrig;

	private String zipOrig;

	private String stateOrig;

	private String countryOrig;

	private String citizenshipAltOrig;

	private String citizenshipOrig;

	private String dateBirthAltOrig;

	private String dateBirthStringOrig;

	private String extLinksOrig;

	private String idInfoOrig;

	private String idTypeOrig;

	private String nationalityAltOrig;

	private String nationalityOrig;

	private String placeBirthAltOrig;

	private String placeBirthOrig;

	private String remarksOrig;

	private String vesTypeOrig;

	private String dateListStringOrig;

	private String dateUpdateStringOrig;

	private String countryCode;

	public Ofac() {
	}

	@Override
	public String toString() {
		return "Ofac [Id=" + Id + ", id2=" + id2 + ", id3=" + id3 + ", id4=" + id4 + ", source=" + source + ", typeV="
				+ typeV + ", indEnt=" + indEnt + ", sourceEntNum=" + sourceEntNum + ", from_file=" + from_file
				+ ", program=" + program + ", programAlt=" + programAlt + ", id5=" + id5 + ", dateUpdateString="
				+ dateUpdateString + ", id6X=" + id6X + ", dateListString=" + dateListString + ", akaType=" + akaType
				+ ", titleMain=" + titleMain + ", entName=" + entName + ", firstName=" + firstName + ", lastName="
				+ lastName + ", name=" + name + ", name_orig_script=" + name_orig_script + ", vesName=" + vesName
				+ ", address=" + address + ", city=" + city + ", zip=" + zip + ", state=" + state + ", country="
				+ country + ", citizenship=" + citizenship + ", citizenshipAlt=" + citizenshipAlt + ", id6=" + id6
				+ ", dateBirthAlt=" + dateBirthAlt + ", dateBirthString=" + dateBirthString + ", extLinks=" + extLinks
				+ ", idInfo=" + idInfo + ", idType=" + idType + ", nationality=" + nationality + ", nationalityAlt="
				+ nationalityAlt + ", placeBirth=" + placeBirth + ", placeBirthAlt=" + placeBirthAlt + ", remarks="
				+ remarks + ", vesType=" + vesType + ", entNameOrig=" + entNameOrig + ", firstNameOrig=" + firstNameOrig
				+ ", lastNameOrig=" + lastNameOrig + ", nameOrig=" + nameOrig + ", vesNameOrig=" + vesNameOrig
				+ ", addressOrig=" + addressOrig + ", cityOrig=" + cityOrig + ", zipOrig=" + zipOrig + ", stateOrig="
				+ stateOrig + ", countryOrig=" + countryOrig + ", citizenshipAltOrig=" + citizenshipAltOrig
				+ ", citizenshipOrig=" + citizenshipOrig + ", dateBirthAltOrig=" + dateBirthAltOrig
				+ ", dateBirthStringOrig=" + dateBirthStringOrig + ", extLinksOrig=" + extLinksOrig + ", idInfoOrig="
				+ idInfoOrig + ", idTypeOrig=" + idTypeOrig + ", nationalityAltOrig=" + nationalityAltOrig
				+ ", nationalityOrig=" + nationalityOrig + ", placeBirthAltOrig=" + placeBirthAltOrig
				+ ", placeBirthOrig=" + placeBirthOrig + ", remarksOrig=" + remarksOrig + ", vesTypeOrig=" + vesTypeOrig
				+ ", dateListStringOrig=" + dateListStringOrig + ", dateUpdateStringOrig=" + dateUpdateStringOrig
				+ ", countryCode=" + countryCode + "]";
	}

	public int getId() {
		return Id;
	}

	public void setId(int id) {
		Id = id;
	}

	public int getId2() {
		return id2;
	}

	public void setId2(int id2) {
		this.id2 = id2;
	}

	public int getId3() {
		return id3;
	}

	public void setId3(int id3) {
		this.id3 = id3;
	}

	public int getId4() {
		return id4;
	}

	public void setId4(int id4) {
		this.id4 = id4;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
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

	public String getSourceEntNum() {
		return sourceEntNum;
	}

	public void setSourceEntNum(String sourceEntNum) {
		this.sourceEntNum = sourceEntNum;
	}

	public String getFrom_file() {
		return from_file;
	}

	public void setFrom_file(String from_file) {
		this.from_file = from_file;
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

	public void setId6X(String id6x) {
		id6X = id6x;
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

	public String getName_orig_script() {
		return name_orig_script;
	}

	public void setName_orig_script(String name_orig_script) {
		this.name_orig_script = name_orig_script;
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

	
}