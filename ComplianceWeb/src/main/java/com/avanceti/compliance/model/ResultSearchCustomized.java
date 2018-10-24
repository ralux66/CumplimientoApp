package com.avanceti.compliance.model;

public class ResultSearchCustomized {
	
	private String name; 
	private String address;
	private String altername;
	private String city;
	private String country;
	private Integer keyentity;
	private String source;
	private String program;
	private String remarks;
	private double score;
	private String title;
	private String typeentity;
	
	public ResultSearchCustomized() {		
	}
	

	@Override
	public String toString() {
		return "ResultSearchCustomized [name=" + name + ", address=" + address + ", altername=" + altername + ", city="
				+ city + ", country=" + country + ", keyentity=" + keyentity + ", source=" + source + ", program="
				+ program + ", remarks=" + remarks + ", score=" + score + ", title=" + title + ", typeentity="
				+ typeentity + "]";
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getAltername() {
		return altername;
	}

	public void setAltername(String altername) {
		this.altername = altername;
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

	public Integer getKeyentity() {
		return keyentity;
	}

	public void setKeyentity(Integer integer) {
		this.keyentity = integer;
	}

	public String getSource() {
		return source;
	}

	public void setSource(String source) {
		this.source = source;
	}

	public String getProgram() {
		return program;
	}

	public void setProgram(String program) {
		this.program = program;
	}

	public String getRemarks() {
		return remarks;
	}

	public void setRemarks(String remarks) {
		this.remarks = remarks;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getTypeentity() {
		return typeentity;
	}

	public void setTypeentity(String typeentity) {
		this.typeentity = typeentity;
	}
	
	
	
}
