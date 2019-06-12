package com.avanceti.compliance.utility;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;

import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.validation.constraints.Size;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

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
					//intitucion.setId((Long) jsonObject.get("id"));
					Long id = (Long) jsonObject.get("id");					
					Boolean enabled = (Boolean) jsonObject.get("enabled");					
					Long priority= (Long) jsonObject.get("priority");
					String name =(String) jsonObject.get("name");
					Date createdAt = ((Date) jsonObject.get("createdAt"));
					Date updatedAt=((Date) jsonObject.get("updatedAt"));
					listaintitucion.add(new TipoInstitucion(id,enabled, priority, name,	createdAt, updatedAt));				}
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
}
