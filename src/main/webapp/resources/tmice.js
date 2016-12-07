     tinymce.init({
	        selector: '#description',
	        plugins: ["image"],
	        file_browser_callback: function(field_name, url, image, win) {
	            if(type=='image') $('#my_form input').click();
	        }
	    });
   