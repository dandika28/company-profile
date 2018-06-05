/**
 * 
 */
$(document).ready(function(){
	$('body').on('click', '.input-file', function(){
		console.log('ini yg click');
		var _spaceError,
        classFile,
        screenWidth	= screen.width,
        deviceWidth = $(window).width(),
        dataType    = $(this).attr('data-type');

	    if (screenWidth > 767 || deviceWidth > 767) {
	        _spaceError = 100;
	    } else {
	        _spaceError = 90;
	    }
	
	    if ($('.input-file-upload.file-mobile').attr('uploaded-mobile') == 1 ) {
	        $('.msg-maximum-upload.file-mobile').text($('.msg-maximum-upload.file-mobile').attr('data-msgerror')).show(0);
	        $("html, body").animate({ scrollTop: $('.msg-maximum-upload.file-mobile').offset().top - _spaceError }, 600);
	        return false;
	    }
	}).on('change', '.input-file-upload', function(evt){
		console.log('ini yg change');
		var _this		= $(this),
			screenWidth	= screen.width,
			dataType    = $(this).attr('data-type'),
			_spaceError;
		
		 if (screenWidth > 767 || deviceWidth > 767) {
             _spaceError = 100;
         } else {
             _spaceError = 90;
         }
		 
		 var isIE    = (navigator.appName=="Microsoft Internet Explorer"),
         __path  = _this.val(),
         __ext   = __path.substring(__path.lastIndexOf('.') + 1).toLowerCase();

      if(__ext == "gif" || __ext == "jpeg" || __ext == "jpg" ||  __ext == "png" ){ 
    	  console.log('ini yg format gambar');
    	  var files       	= evt.target.files,
          sizeupload  		= files[0].size;

	      // If not image
	      if (!files[0].type.match('image.*')) {
	    	  console.log('ini yg 1');
	          return false;
	      }
	      // If size > 10MB
	      if (sizeupload > 10000*1024) {
	    	  console.log('ini yg 2');
	          $('.msg-maximum-upload.file-mobile').text($('.msg-maximum-upload.file-mobile').attr('data-errsize')).show(0);
	          $("html, body").animate({ scrollTop: $('.msg-maximum-upload.file-mobile').offset().top - _spaceError }, 600);
	          return false;
	      }
	      var reader = new FileReader();
	      reader.onload = (function() {
	          return function(e) {
	              var _filename = files[0].name;
	              console.log('ini yg 3');
	          $('.listPreviewUpload.file-mobile').append('<div class="wrap-preview"><div class="box-image"><img title="'+_filename+'" src="'+e.target.result+'" class="thumb preview"/></div><div class="title">'+_filename+'</div><span class="cancel-file-upload" data-type="'+dataType+'"></span></div>').fadeIn(500);
	          
	          };
	      })(files);
	      reader.readAsDataURL(files[0]);
	
	      $('.warning-message').hide(0);
	      $('.is-error').removeClass('is-error');
	      _this.attr('uploaded-mobile', 1);
	      $('.input-file-area.file-mobile .input-file').css('z-index', -1);
      }
	});
});