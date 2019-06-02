package com.avanceti.compliance.utility;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

import com.avanceti.compliance.model.Menciones;
import com.google.gson.Gson;

public class ExecuteShellCommand {

	public static List<Menciones> processShellCommand(String nameToSearch) {
		final Gson gson = new Gson();
		List<Menciones> listamenciones =  new ArrayList<Menciones>();	
		String jsonValue = null;
		
		try {
			String cmd = "googler --json -c sv -n 8 -t m5 -N --exact "+nameToSearch.trim()+" corrupción";
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
			Properties[] resultjson = gson.fromJson(jsonValue.replace("null", "").trim(), Properties[].class);
	        for (Properties returnobject : resultjson) {           
	        	listamenciones.add(new Menciones(returnobject.getProperty("abstract"),returnobject.getProperty("metadata"),returnobject.getProperty("url")));
	        }	        
		} catch (Exception e) {
			e.printStackTrace();
		}
		return listamenciones;
	}
}
