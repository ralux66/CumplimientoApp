package com.avanceti.compliance.model;

public class ResultSearch {
	 	private int keyEntity;
	    private String name;
	    private String program;
	    private String address;
	    private String altername;
	    private Double score;
	    private String listSource;
	    private String city;
	    private String country;    
	    private String remarks;
	    private String title;
	    private String typeEntity;
	    
		public ResultSearch() {			
		}

		@Override
		public String toString() {
			return "ResultSearch [keyEntity=" + keyEntity + ", name=" + name + ", program=" + program + ", address="
					+ address + ", altername=" + altername + ", score=" + score + ", listSource=" + listSource
					+ ", city=" + city + ", country=" + country + ", remarks=" + remarks + ", title=" + title
					+ ", typeEntity=" + typeEntity + "]";
		}

		public int getKeyEntity() {
			return keyEntity;
		}

		public void setKeyEntity(int keyEntity) {
			this.keyEntity = keyEntity;
		}

		public String getName() {
			return name;
		}

		public void setName(String name) {
			this.name = name;
		}

		public String getProgram() {
			return program;
		}

		public void setProgram(String program) {
			this.program = program;
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

		public Double getScore() {
			return score;
		}

		public void setScore(Double score) {
			this.score = score;
		}

		public String getListSource() {
			return listSource;
		}

		public void setListSource(String listSource) {
			this.listSource = listSource;
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

		public String getRemarks() {
			return remarks;
		}

		public void setRemarks(String remarks) {
			this.remarks = remarks;
		}

		public String getTitle() {
			return title;
		}

		public void setTitle(String title) {
			this.title = title;
		}

		public String getTypeEntity() {
			return typeEntity;
		}

		public void setTypeEntity(String typeEntity) {
			this.typeEntity = typeEntity;
		}
	    
}
