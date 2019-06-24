package com.avanceti.compliance.utility;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.List;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import com.avanceti.compliance.model.Comites;
import com.avanceti.compliance.model.Dependencias;
import com.avanceti.compliance.model.EstandarCategorias;
import com.avanceti.compliance.model.Funcionarios;
import com.avanceti.compliance.model.Instituciones;
import com.avanceti.compliance.model.TipoInstitucion;

public class JsonUrlConext {

	public List<TipoInstitucion> ImportTipoInstituciones(String urlImport) {
		JSONParser parser = new JSONParser();
		List<TipoInstitucion> listaintitucion = new ArrayList<TipoInstitucion>();
		try {
			URL oracle = new URL(urlImport); // URL to Parse
			URLConnection yc = oracle.openConnection();
			yc.addRequestProperty("User-Agent", "Mozilla/4.0");
			yc.setRequestProperty("Content-Type", "application/json");
			BufferedReader in = new BufferedReader(new InputStreamReader(yc.getInputStream(), "UTF-8"));
			String inputLine;
			while ((inputLine = in.readLine()) != null) {
				JSONArray arrayJson = (JSONArray) parser.parse(inputLine);
				for (Object objectMap : arrayJson) {
					JSONObject jsonObject = (JSONObject) objectMap;
					listaintitucion.add(new TipoInstitucion(
							(Long) jsonObject.get("id"),
							(Boolean) jsonObject.get("enabled"), 
							(Long) jsonObject.get("priority"), 
							(String) jsonObject.get("name"),	
							(String) jsonObject.get("created_at"), 
							(String) jsonObject.get("updated_at")));	
					System.out.println("Generado");
					}
			}
			in.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listaintitucion;
	}

	public List<EstandarCategorias> ImportStandarCategories(String urlImport){
		JSONParser parser = new JSONParser();
		List<EstandarCategorias> listacategorias = new ArrayList<EstandarCategorias>();
		try {
			URL oracle = new URL(urlImport); // URL to Parse
			URLConnection yc = oracle.openConnection();
			yc.addRequestProperty("User-Agent", "Mozilla/4.0");
			yc.setRequestProperty("Content-Type", "application/json");
			BufferedReader in = new BufferedReader(new InputStreamReader(yc.getInputStream(), "UTF-8"));
			String inputLine;
			while ((inputLine = in.readLine()) != null) {
				JSONArray arrayJson = (JSONArray) parser.parse(inputLine);
				for (Object objectMap : arrayJson) {
					JSONObject jsonObject = (JSONObject) objectMap;
					listacategorias.add(new EstandarCategorias(
							(Long) jsonObject.get("id"),
							//(Boolean) jsonObject.get("enabled"), 
							//(Long) jsonObject.get("priority"), 
							(String) jsonObject.get("name"),	
							(String) jsonObject.get("created_at"), 
							(String) jsonObject.get("updated_at")));	
					System.out.println("Generado");
					}
			}
			in.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listacategorias;		
	}
	
	public List<Instituciones> ImportInsittuciones(String urlImport){
		JSONParser parser = new JSONParser();
		List<Instituciones> listainstituciones = new ArrayList<Instituciones>();
		try {
			URL oracle = new URL(urlImport); // URL to Parse
			URLConnection yc = oracle.openConnection();
			yc.addRequestProperty("User-Agent", "Mozilla/4.0");
			yc.setRequestProperty("Content-Type", "application/json");
			BufferedReader in = new BufferedReader(new InputStreamReader(yc.getInputStream(), "UTF-8"));
			String inputLine;
			while ((inputLine = in.readLine()) != null) {
				JSONArray arrayJson = (JSONArray) parser.parse(inputLine);
				for (Object objectMap : arrayJson) {
					JSONObject jsonObject = (JSONObject) objectMap;
					listainstituciones.add(new Instituciones(
							(Long) jsonObject.get("id"),
							(String) jsonObject.get("name"),
							(String) jsonObject.get("acronym"),
							(String) jsonObject.get("avatar_file_name"),
							(String) jsonObject.get("avatar_content_type"),
							(Long) jsonObject.get("avatar_file_size"),
							(String) jsonObject.get("avatar_updated_at"),
							(String) jsonObject.get("created_at"),
							(String) jsonObject.get("updated_at"),							
							(Boolean) jsonObject.get("enabled"),
							(Boolean) jsonObject.get("accepts_online_requests"),
							(String) jsonObject.get("administrative_document_type"),
							(String) jsonObject.get("certification_amount"),
							(String) jsonObject.get("reproduction_amount"),
							(String) jsonObject.get("external_transparency_site_url"),
							(String) jsonObject.get("facebook_url"),
							(String) jsonObject.get("facebook_username"),
							(String) jsonObject.get("officer_email"),
							(String) jsonObject.get("officer_name"),
							(String) jsonObject.get("twitter_url"),
							(String) jsonObject.get("twitter_username"),
							(String) jsonObject.get("website_url"),
							(String) jsonObject.get("officer_designation_date"),
							(String) jsonObject.get("administrative_document_file_name"),
							(String) jsonObject.get("administrative_document_content_type"),
							(Long) jsonObject.get("administrative_document_file_size"),
							(String) jsonObject.get("administrative_document_updated_at"),
							(String) jsonObject.get("officer_designation_file_name"),
							(String) jsonObject.get("officer_designation_content_type"),
							(Long) jsonObject.get("officer_designation_file_size"),
							(String) jsonObject.get("officer_designation_updated_at"),
							(String) jsonObject.get("score"),
							(String) jsonObject.get("rating_report_file_name"),
							(String) jsonObject.get("rating_report_content_type"),
							(Long) jsonObject.get("rating_report_file_size"),
							(String) jsonObject.get("rating_report_updated_at"),
							(String) jsonObject.get("flickr_username"),
							(String) jsonObject.get("flickr_url"),
							(String) jsonObject.get("youtube_username"),
							(String) jsonObject.get("youtube_url"),
							(String) jsonObject.get("slug"),
							(Long) jsonObject.get("institution_type_id"),
							(Long) jsonObject.get("standard_category_id")));	
					System.out.println("Generado");
					}
			}
			in.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listainstituciones;		
	}
	
	public List<Dependencias> ImportDependencias(String urlImport) {
		JSONParser parser = new JSONParser();
		List<Dependencias> listadependencias = new ArrayList<Dependencias>();
		try {
			URL oracle = new URL(urlImport); // URL to Parse
			URLConnection yc = oracle.openConnection();
			yc.addRequestProperty("User-Agent", "Mozilla/4.0");
			yc.setRequestProperty("Content-Type", "application/json");
			BufferedReader in = new BufferedReader(new InputStreamReader(yc.getInputStream(), "UTF-8"));
			String inputLine;
			while ((inputLine = in.readLine()) != null) {
				JSONArray arrayJson = (JSONArray) parser.parse(inputLine);
				for (Object objectMap : arrayJson) {
					JSONObject jsonObject = (JSONObject) objectMap;
					listadependencias.add(new Dependencias(							
							  (Long) jsonObject.get("id"),			                  
			                  (String) jsonObject.get("name"),
			                   (String) jsonObject.get("created_at"),
			                   (String) jsonObject.get("updated_at"),
			                   (Long) jsonObject.get("institution_id")
							));	
					System.out.println("Generado");
					}
			}
			in.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listadependencias;
	}
	
	public List<Comites> ImportComites(String urlImport) {
		JSONParser parser = new JSONParser();
		List<Comites> listadcomites = new ArrayList<Comites>();
		try {
			URL oracle = new URL(urlImport); // URL to Parse
			URLConnection yc = oracle.openConnection();
			yc.addRequestProperty("User-Agent", "Mozilla/4.0");
			yc.setRequestProperty("Content-Type", "application/json");
			BufferedReader in = new BufferedReader(new InputStreamReader(yc.getInputStream(), "UTF-8"));
			String inputLine;
			while ((inputLine = in.readLine()) != null) {
				JSONArray arrayJson = (JSONArray) parser.parse(inputLine);
				for (Object objectMap : arrayJson) {
					JSONObject jsonObject = (JSONObject) objectMap;
					listadcomites.add(new Comites(							
							  (Long) jsonObject.get("id"),			                  
			                  (Long) jsonObject.get("institution_id"),
			                   (String) jsonObject.get("name"),
			                   (String) jsonObject.get("created_at"),
			                   (String) jsonObject.get("updated_at")
							));	
					System.out.println("Generado");
					}
			}
			in.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listadcomites;
	}
	
	public List<Funcionarios> ImportFuncionarios(String urlImport) {
		JSONParser parser = new JSONParser();
		List<Funcionarios> listafuncionarios = new ArrayList<Funcionarios>();
		try {
			URL oracle = new URL(urlImport); // URL to Parse
			URLConnection yc = oracle.openConnection();
			yc.addRequestProperty("User-Agent", "Mozilla/4.0");
			yc.setRequestProperty("Content-Type", "application/json");
			BufferedReader in = new BufferedReader(new InputStreamReader(yc.getInputStream(), "UTF-8"));
			String inputLine;
			while ((inputLine = in.readLine()) != null) {
				JSONArray arrayJson = (JSONArray) parser.parse(inputLine);
				for (Object objectMap : arrayJson) {
					JSONObject jsonObject = (JSONObject) objectMap;
					listafuncionarios.add(new Funcionarios(							
							(Long) jsonObject.get("id"),
							(Boolean) jsonObject.get("enabled"),
							(Boolean) jsonObject.get("active"),
							(Boolean) jsonObject.get("marked"),
							(String) jsonObject.get("name"),
							(String) jsonObject.get("position"),
							(String) jsonObject.get("phone"),
							(String) jsonObject.get("email"),
							(String) jsonObject.get("address"),
							(String) jsonObject.get("functions"),
							(String) jsonObject.get("curriculum"),
							(String) jsonObject.get("created_at"),
							(String) jsonObject.get("updated_at"),
							(Long) jsonObject.get("priority"),
							(Long) jsonObject.get("institution_id"),
							(Long) jsonObject.get("institution_dependency_id"),
							(Long) jsonObject.get("committee_id")
							));	
					System.out.println("Generado");
					}
			}
			in.close();
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return listafuncionarios;
	}
}
