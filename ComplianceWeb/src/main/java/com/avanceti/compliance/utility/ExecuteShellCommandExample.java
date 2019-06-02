package com.avanceti.compliance.utility;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.avanceti.compliance.model.Menciones;
import com.google.gson.Gson;

public class ExecuteShellCommandExample {

	public static void main(String[] args) {
		//System.out.println("Execute shell commands example");
		//System.out.println();
		String jsonValue = null;
		List<Menciones> listamenciones = new ArrayList<Menciones>();
		final Gson gson = new Gson();

		try {
			String cmd = "googler --json -n 5 -t m3 -N Funes Cartajena";
			//System.out.println("Executing command: " + cmd);
			Process p = Runtime.getRuntime().exec(cmd);
			int result = p.waitFor();

			//System.out.println("Process exit code: " + result);
			//System.out.println();
			//System.out.println("Result:");
			BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));

			String line = "";
			while ((line = reader.readLine()) != null) {
				//System.out.println(line);
				jsonValue +=line;
			}
			//System.out.println(jsonValue.replace("null", "").trim());
			Properties[] resultjson = gson.fromJson(jsonValue.replace("null", "").trim(), Properties[].class);
	        for (Properties returnobject : resultjson) {           
	        	listamenciones.add(new Menciones(returnobject.getProperty("abstract"),returnobject.getProperty("metadata"),returnobject.getProperty("url")));
	        }
	        
	        for (Menciones menciones : listamenciones) {
	        	System.out.println(menciones.getUrl());
	        	System.out.println(menciones.getAbstracts());
	        	System.out.println(menciones.getMetadata());
			}
		

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
