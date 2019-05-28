package com.avanceti.compliance.utility;

import java.io.BufferedReader;
import java.io.InputStreamReader;

public class ExecuteShellCommand {

	public static String processShellCommand(String nameToSearch) {
		//final Gson gson = new Gson();
		try {
			String cmd = "googler --json -n 5 -t m3 -x "+nameToSearch.trim();
			System.out.println("Executing command: " + cmd);
			Process p = Runtime.getRuntime().exec(cmd);
			int result = p.waitFor();

			System.out.println("Process exit code: " + result);
			//System.out.println();
			System.out.println("Result:");
			BufferedReader reader = new BufferedReader(new InputStreamReader(p.getInputStream()));
			String line = "";
			while ((line = reader.readLine()) != null) {
				System.out.println(line);
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
}
