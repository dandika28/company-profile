/**
 * 
 */
$(document).ready(function(){
	$('body').on('click', '.input-file', function(){
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
	}).on('click', '.input-file.order', function(){
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
	
	    if ($('.input-file-upload.order.file-mobile').attr('uploaded-mobile') == 1 ) {
	        $('.msg-maximum-upload.order.file-mobile').text($('.msg-maximum-upload.order.file-mobile').attr('data-msgerror')).show(0);
	        $("html, body").animate({ scrollTop: $('.msg-maximum-upload.order.file-mobile').offset().top - _spaceError }, 600);
	        return false;
	    }
	}).on('change', '.input-file-upload', function(evt){
		var _this		= $(this),
			screenWidth	= screen.width,
			dataType    = $(this).attr('data-type'),
			dataNumber	= $(this).attr('data-number'),
			_spaceError;
		console.log("kesini ga")
			$(this).hide();
		 if (screenWidth > 767 || deviceWidth > 767) {
             _spaceError = 100;
         } else {
             _spaceError = 90;
         }
		 
		 var isIE    = (navigator.appName=="Microsoft Internet Explorer"),
         __path  = _this.val(),
         __ext   = __path.substring(__path.lastIndexOf('.') + 1).toLowerCase();

      if(__ext == "gif" || __ext == "jpeg" || __ext == "jpg" ||  __ext == "png" ){ 
    	  var files       	= evt.target.files,
          sizeupload  		= files[0].size;

	      // If not image
	      if (!files[0].type.match('image.*')) {
	    	  console.log('ini yg 1');
	          return false;
	      }
	      // If size > 10MB
	      if (sizeupload > 10000*1024) {
	          $('.msg-maximum-upload.file-mobile').text($('.msg-maximum-upload.file-mobile').attr('data-errsize')).show(0);
	          $("html, body").animate({ scrollTop: $('.msg-maximum-upload.file-mobile').offset().top - _spaceError }, 600);
	          return false;
	      }
	      var reader = new FileReader();
	      reader.onload = (function() {
	          return function(e) {
	              var _filename = files[0].name;
	          $('.listPreviewUpload.file-mobile.number-'+dataNumber).append('<div class="wrap-preview"><div class="box-image"><img title="'+_filename+'" src="'+e.target.result+'" class="thumb preview"/></div><div class="title">'+_filename+'</div><span class="cancel-file-upload" data-type="'+dataType+'" data-number="'+dataNumber+'"></span></div>').fadeIn(500);
	          
	          };
	      })(files);
	      reader.readAsDataURL(files[0]);
	
	      $('.warning-message').hide(0);
	      $('.is-error').removeClass('is-error');
	      _this.attr('uploaded-mobile', 1);
	      $('.input-file-area.file-mobile .input-file').css('z-index', -1);
      }
	}).on('change', '.input-file-upload.order', function(evt){
		var _this		= $(this),
		screenWidth	= screen.width,
		dataType    = $(this).attr('data-type'),
		dataNumber	= $(this).attr('data-number'),
		_spaceError;
	console.log("kesini ga")
		$(this).hide();
	 if (screenWidth > 767 || deviceWidth > 767) {
         _spaceError = 100;
     } else {
         _spaceError = 90;
     }
	 
	 var isIE    = (navigator.appName=="Microsoft Internet Explorer"),
     __path  = _this.val(),
     __ext   = __path.substring(__path.lastIndexOf('.') + 1).toLowerCase();

  if(__ext == "gif" || __ext == "jpeg" || __ext == "jpg" ||  __ext == "png" ){ 
	  var files       	= evt.target.files,
      sizeupload  		= files[0].size;

      // If not image
      if (!files[0].type.match('image.*')) {
    	  console.log('ini yg 1');
          return false;
      }
      // If size > 10MB
      if (sizeupload > 10000*1024) {
          $('.msg-maximum-upload.order.file-mobile').text($('.msg-maximum-upload.order.file-mobile').attr('data-errsize')).show(0);
          $("html, body").animate({ scrollTop: $('.msg-maximum-upload.order.file-mobile').offset().top - _spaceError }, 600);
          return false;
      }
      var reader = new FileReader();
      reader.onload = (function() {
          return function(e) {
              var _filename = files[0].name;
          $('.listPreviewUpload.order.file-mobile').append('<div class="wrap-preview"><div class="box-image"><img title="'+_filename+'" src="'+e.target.result+'" class="thumb preview"/></div><div class="title">'+_filename+'</div><span class="cancel-file-upload order" data-type="'+dataType+'"></span></div>').fadeIn(500);
          
          };
      })(files);
      reader.readAsDataURL(files[0]);

      $('.warning-message').hide(0);
      $('.is-error').removeClass('is-error');
      _this.attr('uploaded-mobile', 1);
      $('.input-file-area.file-mobile .input-file').css('z-index', -1);
  }
}).on('click', '.cancel-file-upload', function() {
		var   _this         = $(this),
              isIE          = (navigator.appName=="Microsoft Internet Explorer"),
              dataType      = $(this).attr('data-type'),
              dataNumber	= $(this).attr('data-number');
		console.log("number = " + dataNumber)
		
		
		$('.input-file-upload.file-mobile.number-'+dataNumber).show();
        $('.listPreviewUpload.file-mobile.number-'+dataNumber).find('.wrap-preview').remove();
        $('.input-file-area.file-mobile .input-file').css('z-index', 2);
        $('.listPreviewUpload.file-mobile.number-'+dataNumber).find('.input-file-upload.file-mobile').attr("uploaded-mobile", "");
        $('.listPreviewUpload.file-mobile.number-'+dataNumber).find('.input-file-upload.file-mobile').val("");
        if(isIE) {
            $(".input-file-upload.file-mobile").replaceWith($(".input-file-upload.file-mobile").clone(true));
        }
        $('.listPreviewUpload.file-mobile.number-'+dataNumber).hide();
        //$('.msg-maximum-upload.file-mobile').hide();
    }).on('click', '.cancel-file-upload.order', function(){
    	var   _this         = $(this),
        isIE          = (navigator.appName=="Microsoft Internet Explorer"),
        dataType      = $(this).attr('data-type'),
        dataNumber	= $(this).attr('data-number');

      $('.input-file-upload.file-mobile').show();
	  $('.listPreviewUpload.file-mobile').find('.wrap-preview').remove();
	  $('.input-file-area.file-mobile .input-file').css('z-index', 2);
	  $('.listPreviewUpload.file-mobile').find('.input-file-upload.file-mobile').attr("uploaded-mobile", "");
	  $('.listPreviewUpload.file-mobile').find('.input-file-upload.file-mobile').val("");
	  if(isIE) {
	      $(".input-file-upload.file-mobile").replaceWith($(".input-file-upload.file-mobile").clone(true));
	  }
	  $('.listPreviewUpload.file-mobile').hide();
    }).on('click', '.add-product', function(){
    	$( "<div class='col-md-4'><input class='input-file-upload file-mobile' name='file accept='image/*' type='file' path='files' multiple='multiple' style='margin-left:-10px;'/><div class='row'></div><div class='listPreviewUpload file-mobile' data-type='mobile'></div></div>" ).insertBefore( ".add-product" );
    });
});