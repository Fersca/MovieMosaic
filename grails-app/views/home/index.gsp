<html>
<head>
	<meta name="layout" content="web">		
</head>
<body>

    <div class="container">
    
      <div class="jumbotron" align="center">
        <h1>Create your Movie Mosaic</h1>
        
        <p class="text-primary">Paste your photo URL and clic the movie you like....</p>
			
			<hr>
			<input class="form-control" id="photo" name="photo" type="url" required placeholder="URL of your photo here!" value="">
			
			<div class="bs-example" id="alerta" hidden="true">
		      <div class="alert alert-danger fade in">		 
		        <p>You should give me an URL to create the Movie Mosaic!</p>
		      </div>
		    </div>
			<div class="bs-example" id="invalido" hidden="true">
		      <div class="alert alert-warning fade in">		 
		        <p>The URL format is invalid!</p>
		      </div>
		    </div>
			
			<hr>
			
			<div class="row">
			  <div class="col-sm-5 col-md-2">
			    <a href="#" class="thumbnail" onclick="crearPeli('Monster');">
			      <img src="${resource(dir:'/images',file:'startrek.jpg')}" height="150" width="150" alt="Star Trek">
			    </a>
			    <div class="caption">
			      <h4><p class="text-success">Star Trek First Contact</p></h4>       
				</div>			    			      			    
			  </div>
			  <div class="col-sm-5 col-md-2">
			  	<a href="#" class="thumbnail" onclick="crearPeli('Monster');">
			      <img src="${resource(dir:'/images',file:'starwars.jpg')}" height="150" width="150" alt="Star Wars">
			    </a>
			    <div class="caption">
			      <h4><p class="text-success">Star Wars A New Hope</p></h4>       
				</div>			    			      			
			  </div>
			  <div class="col-sm-5 col-md-2">
			  	<a href="#" class="thumbnail" onclick="crearPeli('Monster');">
			      <img src="${resource(dir:'/images',file:'lotr.jpg')}" height="150" width="150" alt="The Lord of the rings">
			    </a>
			    <div class="caption">
			      <h4><p class="text-success">The Lord of the Rings The Fellowship of the Ring</p></h4>       
				</div>			    			      						    
			  </div>
			  <div class="col-sm-5 col-md-2">
			  	<a href="#" class="thumbnail" onclick="crearPeli('Monster');">
			      <img src="${resource(dir:'/images',file:'matrix.jpg')}" height="150" width="150" alt="The Matrix">
			    </a>
			    <div class="caption">
			      <h4><p class="text-success">The Matrix</p></h4>       
				</div>			    			      						    			    
			  </div>					  			  
			  <div class="col-sm-5 col-md-2">
			  	<a href="#" class="thumbnail" onclick="crearPeli('Monster');">
			      <img src="${resource(dir:'/images',file:'indiana.jpg')}" height="150" width="150" alt="Indiana Jones">
			    </a>
			    <div class="caption">
			      <h4><p class="text-success">Indiana Jones Raiders of the Lost Ark</p></h4>       
				</div>			    			      						    			    
			  </div>
			  <div class="col-sm-5 col-md-2">
			  	<a href="#" class="thumbnail" onclick="crearPeli('Monster');">
			      <img src="${resource(dir:'/images',file:'batman.jpg')}" height="150" width="150" alt="Batman">
			    </a>
			    <div class="caption">
			      <h4><p class="text-success">Batman Dark Knight</p></h4>       
				</div>			    			      						    			    
			  </div>
			  					  			  
			</div>	   		
	      
      </div>
    </div>
    
	<!-- Modal -->
	<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	    <div class="modal-dialog">
	        <div class="modal-content">
	        </div>
	        <!-- /.modal-content -->
	    </div>
	    <!-- /.modal-dialog -->
	</div>
	<!-- /.modal -->
    
	<script type="text/javascript">
			
	function crearPeli(peliId){

		document.getElementById('alerta').hidden=true;
		document.getElementById('invalido').hidden=true;
				
		var element = document.getElementById('photo');
		var foto = element.value;

		if (foto.length==0){
			document.getElementById('alerta').hidden=false;
			$(".alert").alert()
			return false;
		}
		
		if (!element.validity.valid){
			document.getElementById('invalido').hidden=false;
			$(".alert").alert()
			return false;			
		}

		var target = '/moviemosaic/home/creating';
		
	    // load the url and show modal on success
	    $("#myModal .modal-content").load(target, function() {
	         $("#myModal").modal("show"); 
	    });
	    				
	    var target = '/moviemosaic/home/progress?foto='+foto+'&peli='+peliId

	    // load the url and show modal on success
	    $("#myModal .modal-content").load(target, function() {
	         $("#myModal").modal("show"); 
	    });
					
		return false;
	}
	
	</script>
</body>
</html>