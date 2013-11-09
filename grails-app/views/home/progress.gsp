            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                 <h4 class="modal-title">Your Movie Mosaic!</h4>

            </div>
            <div class="modal-body">
	            <div class="te" align="center">
	
				<img alt="foto" src="${original}" width="250" height="250">
				<img alt="foto" src="${resource(dir:'/images/mosaics',file:foto)}" width="250" height="250">
	
				</div>
			</div>
            <div class="modal-footer">                
                <button type="button" class="btn btn-primary" onclick="saveImageAs('${resource(dir:'/images/mosaics',file:foto)}');">Download (Low Res) 1mpx Mosaic</button>
                <button type="button" class="btn btn-primary" onclick="buy('');">Buy (Super High Res) 30mpx Mosaic</button>
                <br><br>
                <a href="${resource(dir:'/images',file:'examples.zip')}">Download Super High Resolution Example (18MB Zip)</a>
                <br>
                
            </div>
            
            <script>
 
			 function saveImageAs (imgOrURL) {
			    if (typeof imgOrURL == 'object')
			      imgOrURL = imgOrURL.src;
			    window.win = open (imgOrURL);
			    setTimeout('win.document.execCommand("SaveAs")', 500);
			  }

			 function buy (imgOrURL) {
				alert('Buy Not Available Yet!');
			  }
				 
			</script>
