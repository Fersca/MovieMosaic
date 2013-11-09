package xuggler;

import java.util.ArrayList;

public class MovieConfig {

	private static ArrayList<Movie> movies = cargarMovies();

	private static ArrayList<Movie> cargarMovies() {

		ArrayList<Movie> movies = new ArrayList<Movie>();
		
		Movie m1 = new Movie();
		m1.name="Monster";
		m1.altoHigh=45;
		m1.anchoHigh=83;
		m1.alto=11;
		m1.ancho=21;
		m1.colorFileHigh="/home/fersca/pelis/monster2/mivi/monster.ser";
		m1.directoryHigh="/home/fersca/pelis/monster2/mivi/";	
		m1.colorFile="/home/fersca/pelis/monster2/mivi/low/monster.ser";
		m1.directory="/home/fersca/pelis/monster2/mivi/low/";
		
		movies.add(m1);
		
		return movies;
		
	}
	
	public static Movie getMovie(String name){
		
		for (Movie movie : movies) {
			if (movie.name.equals(name))
				return movie;
		}
		
		return null;
	}
	
}
