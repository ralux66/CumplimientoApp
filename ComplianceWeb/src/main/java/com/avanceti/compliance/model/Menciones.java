package com.avanceti.compliance.model;

public class Menciones {

	private String abstracts;
	private String metadata;
	private String url;
	
	public Menciones(String abstracts, String metadata, String url) {		
		this.abstracts = abstracts;
		this.metadata = metadata;
		this.url = url;
	}
	public String getAbstracts() {
		return abstracts;
	}
	public void setAbstracts(String abstracts) {
		this.abstracts = abstracts;
	}
	public String getMetadata() {
		return metadata;
	}
	public void setMetadata(String metadata) {
		this.metadata = metadata;
	}
	public String getUrl() {
		return url;
	}
	public void setUrl(String url) {
		this.url = url;
	}
}
