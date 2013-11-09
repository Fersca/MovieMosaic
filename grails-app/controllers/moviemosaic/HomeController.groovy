package moviemosaic

import xuggler.FindBestMach;

class HomeController {

    def index() { 
		
		
	}

	def creating() {
	
	
	}

	def progress(){
		
		println params.foto
		println params.peli
		
		String file = FindBestMach.generateMosaic(params.foto, params.peli, false)
		[foto: file, original:params.foto]
	}
}
