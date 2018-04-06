$(function() {
		        $(".freeback-img2").on("change",":file",function(){
		            fileSelect_banner(this);
		        });
		    });   

      function fileSelect_banner(evt) {
		        if (window.File && window.FileReader && window.FileList && window.Blob) {		        	
		            currfile = evt;
		            var files = evt.files;//直接传入file对象，evt.target改成evt
		            //当前上传的图片
		            var pid = $(evt).data("pid");	//现在选择的商品的pid
		            var file;
		            file = files[0];
		            if (!file.type.match('image.*')) {
		                return;
		            }
		            reader = new FileReader();
		            reader.onload = (function (tFile) {
		                return function (evt) {
		                    dataURL = evt.target.result; 
		                    var imgcount = $("#frame_img_"+pid).find(".area-one").length;
		                    $(currfile).prev("img").eq(0).attr("src",dataURL);
		                    }
		            }(file));
		            reader.readAsDataURL(file);
		            sendFile = file;
		        } else {
		            alert('该浏览器不支持文件管理。');
		        }
		    }
      
      
      
      
      $(function(){
      	$('.right_nav ul li').click(function(){
      		$(this).addClass("right_nav_active").siblings().removeClass("right_nav_active");
      		var index = $(this).index();
      		$('.AS_bigContentbox').children().eq(index).show().siblings().hide();
      	})
      	$('.AS_one_radio input').click(function(){
      		var index = $(this).index();
      		$('.two_select').children().eq(index).show().siblings().hide();
      	})
        $('.AS_viewAll').click(function(){
      	    var uu = $('.AS_boxchild:gt(1)');
      	    var con = $('.AS_viewAll span').html();
      	    if(con=="查看全部"){
      	    	$('.AS_viewAll span').html("收起全部");
      	    	uu.stop().slideDown();
      	    	$('.AS_viewAll img').css({"-webkit-transform":"rotate(180deg)","transform":"rotate(180deg)"});
      	    }else{
      	    	$('.AS_viewAll span').html("查看全部");
      	    	uu.stop().slideUp();
      	    	$('.AS_viewAll img').css({"-webkit-transform":"rotate(180deg)","transform":"rotate(360deg)"});
      	    }
      	})
      })