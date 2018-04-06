// JavaScript Document


function fileSelect_banner(evt, bOne) {
	if (window.File && window.FileReader && window.FileList && window.Blob) {
		currfile = evt;
		var files = evt.files;//直接传入file对象，evt.target改成evt
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
				
				if ( bOne == '1' )
					$(currfile).parent().find(".thumb-img").attr("src",dataURL);
				else if ( bOne == '3' ) {
					$(currfile).parent().parent().find(".head-crop-img").attr("src",dataURL);
				} else if ( bOne == '4' ) {
					var pid = $(currfile).attr('pid');
					$(currfile).parent().find('.eval-img-btn').remove();
					var obj = "<div class='eval-img-photo'><img src='" + dataURL + "'>";
                    obj = obj + "<div class='eval-img-mask'><img src='../../../HTML5/img/zhuijia/icon-remove.png' onClick='removeObj(this)'></div></div>";
					obj = obj + "<input class='photofile' type='file' pid='"+pid+"' name='imgurl_"+pid+"[]' onChange='fileSelect_banner(this, 4)'/>";
					var num = $(".eval-img-grp").find('.eval-img-photo').length;
					if(num<4){
						obj = obj + "<div class='eval-img-btn' onclick='upload_img(this);'><img src='../../../HTML5/img/zhuijia/icon-add.png'></div>";
					}
					$(currfile).parent().append(obj);					
				} else if ( bOne == '5' ) {
					var obj = "<div class='eval-img-photo'><img src='" + dataURL + "'>";
                    obj = obj + "<div class='eval-img-mask'><img src='img/zhuijia/icon-remove.png' onClick='removeObj(this)'></div></div>";
					$('.eval-img-grp:last').append(obj);
				}
			}
		}(file));
		reader.readAsDataURL(file);
		sendFile = file;
	} else {
		alert('该浏览器不支持文件管理。');
	}
}

(function(){

    $('.to-right').click(function(){
        if(indexImg != totalImg){
            $iBox.animate({
                left: -(indexImg*imgSize) + 'px'
            }, moveTime);
            $iNum.removeClass('mark-color')
                .eq(indexImg)
                .addClass('mark-color');
            indexImg++;
        }
        else{
            indexImg = 1;
            $iNum.removeClass('mark-color')
                .eq(indexImg - 1)
                .addClass('mark-color');
            $iBox.animate({
                left: 0
            }, moveTime);
        }
    });

	
})();