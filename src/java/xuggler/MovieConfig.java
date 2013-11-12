package xuggler;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

public class MovieConfig {

	private static ArrayList<Movie> movies;
	public static HashMap<String, String> config = cargarConfig();
	
	private static HashMap<String, String> cargarConfig() {

		BufferedReader br=null;
		
		try {
			br = new BufferedReader(new FileReader("config.txt"));
		} catch (FileNotFoundException e1) {
			e1.printStackTrace();
		}
	    
		HashMap<String, String> config = new HashMap<String, String>();
		movies = new ArrayList<Movie>();
		
		int cont=0;
		
		try {
	        String line = br.readLine();

	        while (line != null) {

	        	if (cont==0){
	        		//carga la configuracion basica
	        		String[] tupla = line.split("=");
	        		config.put(tupla[0], tupla[1]);
	        	} else {
	        		//carga las peliculas
	        		String[] peli = line.split(";");

	        		Movie m1 = new Movie();
	        		m1.name=peli[0];
	        		m1.altoHigh=Integer.parseInt(peli[1]);
	        		m1.anchoHigh=Integer.parseInt(peli[2]);
	        		m1.alto=Integer.parseInt(peli[3]);
	        		m1.ancho=Integer.parseInt(peli[4]);
	        		m1.colorFileHigh=peli[5];
	        		m1.directoryHigh=peli[6];	
	        		m1.colorFile=peli[7];
	        		m1.directory=peli[8];
	        		
	        		movies.add(m1);
	        		
	        	}
	        	
	            line = br.readLine();
	            cont++;
	        }

	    } catch (Exception e){
	    	e.printStackTrace();
	    } finally {
	        try {
				br.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
	    }		
		
		return config;
	}

	public static Movie getMovie(String name){
		
		for (Movie movie : movies) {
			if (movie.name.equals(name))
				return movie;
		}
		
		return null;
	}
	
}
