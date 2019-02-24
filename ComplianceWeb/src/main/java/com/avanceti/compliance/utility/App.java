package com.avanceti.compliance.utility;


import com.avanceti.compliance.utility.JaroWinklerDistance;
import com.avanceti.compliance.utility.Soundex;



/**
 * @author rzepeda
 *
 */

public class App {
	public static void main(String[] args) {
		String name1 = "RT";
        String name2 = "VERTOLETY ROSSII AO";
        
         
        System.out.println(Soundex.getGode(name1));
        System.out.println(Soundex.getGode(name2));
        
        
       System.out.println(JaroWinklerDistance.apply(name1, name2));
        
	}
}
