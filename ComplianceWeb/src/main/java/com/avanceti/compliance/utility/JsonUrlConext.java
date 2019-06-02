package com.avanceti.compliance.utility;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

public class JsonUrlConext {
	
	
	public void ImportPep() {
		JSONParser parser = new JSONParser();
	
	  try {         
          URL oracle = new URL("https://www.transparencia.gob.sv/api/v1/officials.json?end_at=2018-12-31&institution_id=9&page=1&per_page=100&start_at=2018-01-01"); // URL to Parse 
          
          URLConnection yc = oracle.openConnection();
          yc.addRequestProperty("User-Agent", "Mozilla/4.0");
          yc.setRequestProperty("Content-Type", "application/json");
          BufferedReader in = new BufferedReader(new InputStreamReader(yc.getInputStream(),"UTF-8"));
          String inputLine;
          while ((inputLine = in.readLine()) != null) {               
              JSONArray arrayJson = (JSONArray) parser.parse(inputLine);                
              // Loop through each item
              for (Object objectMap : arrayJson) {
                  JSONObject jsonObject = (JSONObject) objectMap;                    
                  String name = (String) jsonObject.get("name");
                  //String position = (String) jsonObject.get("position");
                  //String functions = (String) jsonObject.get("functions");                    
                  System.out.println("Name : " + name.trim().toUpperCase());
                  //System.out.println("osition : " + position.trim());
                  //System.out.println("functions : " + functions.trim());
                  }
          }
          in.close();
      } catch (FileNotFoundException e) {
          e.printStackTrace();
      } catch (IOException e) {
          e.printStackTrace();
      } catch (ParseException e) {
          e.printStackTrace();
      } 
	}  
}
