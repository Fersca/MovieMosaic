package xuggler;

import java.awt.image.BufferedImage;
import java.util.ArrayList;

/**
 * Detecta colores en imagenes
 * @author fscasserra
 */
public class ColorDetector {
	
	public ArrayList<Bloque> obtieneMatriz(BufferedImage image, int fotosAncho, int fotosAlto) throws Exception {
				
		int c;
		int red=0;
		int green=0;
		int blue=0;
		
		//Crea las matrices para trabajar
		ArrayList<Bloque> bloques = new ArrayList<Bloque>();
				
		try {
			
			//Calcula los anchos y altos de los bloques
			int ancho = image.getWidth();
			int alto = image.getHeight();
			int anchoBloque = ancho/fotosAncho;
			int altoBloque = alto/fotosAlto;
			
			//Llena la lista de bloques
			Bloque bloque;
			for (int row=0;row<=(fotosAlto-1);row++){
				for (int col=0;col<=(fotosAncho-1);col++){
					bloque = new Bloque(row, col);
					bloques.add(bloque);
				}
			}
			
			//Calcula el promedio de color de cada bloque
			for (Bloque blo : bloques) {
				//Resetea los colores
				red=0;
				green=0;
				blue=0;				
				//obtiene el color de cada pixel y acumula las cantidades
				for (int x=(anchoBloque*blo.col); x<((anchoBloque*blo.col)+anchoBloque);x++){
					for (int y=(altoBloque*blo.row); y<((altoBloque*blo.row)+altoBloque);y++){
						c = image.getRGB(x,y);
						red = red + ((c & 0x00ff0000) >> 16);
						green = green + ((c & 0x0000ff00) >> 8);
						blue = blue +(c & 0x000000ff);
					}
				}
				//guarda el promedio de colores
				int superficieBloque = anchoBloque*altoBloque;
				blo.red=red/superficieBloque;
				blo.green=green/superficieBloque;
				blo.blue=blue/superficieBloque;
								
			}
											
			return bloques;
		} catch (Exception e){
			throw e;
		}
			
		
	}
	
}