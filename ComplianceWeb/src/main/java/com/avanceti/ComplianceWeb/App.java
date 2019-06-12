package com.avanceti.ComplianceWeb;

import com.avanceti.compliance.utility.JsonUrlConext;

/**
 * @author rzepeda
 *
 */

public class App {
	public static void main(String[] args) {
		JsonUrlConext conext = new JsonUrlConext();
		conext.ImportTipoInstituciones("https://www.transparencia.gob.sv/api/v1/institution_types.json");
		//conext.ImportPep();
        
	}
}
