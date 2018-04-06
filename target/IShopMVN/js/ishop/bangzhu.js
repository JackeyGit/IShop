// JavaScript Document

(function() {
	//	帮助中心页面-左侧菜单操作
    $('.cell-title').click(function() {
		var pat = $(this).parent();
		var mark = pat.attr("data-rel");
		
		if (mark=="1") {
			$(this).next().slideUp(200);
			pat.attr("data-rel", '').removeClass("cell-open").find(".cell-body").hide();
		} else {
			$(this).next().slideDown(200);
			pat.attr("data-rel", 1).addClass("cell-open").siblings().removeClass("cell-open").attr("data-rel", "").find(".cell-body").hide();
		}
    });
    
	//	帮助中心页面-左侧菜单操作
	$('.cell-chd').click(function() {
		var pat = $(this).parent().parent();
		
		$(this).siblings().removeClass("cur-cell");
		pat.siblings().find(".cell-chd").removeClass("cur-cell");
		$(this).addClass("cur-cell");
    });
	
	//报错页面-轮播操作
	var $iBox = $('.imgBoxOther'),
        indexImg = 1,          //初始下标
        totalImg = 2,          //图片总数量
        imgSize = 800,         //图片尺寸 宽度
		moveTime = 500,        //切换动画时间
        clc = null;
		
	$('.err-go-left').click(function(){
        if (indexImg<=totalImg/2) {
            $iBox.animate({
                left: -(indexImg*imgSize) + 'px'
            }, moveTime);
            indexImg++;
        }
    });
    $('.err-go-right').click(function(){
        if (indexImg>1) {
			indexImg--;
            $iBox.animate({
                left: -((indexImg - 1)*imgSize) + 'px'
            }, moveTime);
        }
    });
	
    $('.check-all').click(function(){
		if( $(this).context.checked )
			$(this).parent().parent().css( { "background": " #f8f8f8" });
		else							$(this).parent().parent().css( { "background": " #fff" });
		checkSum();
    });
	
    $('.check-group').click(function(){
		alert($(this).parent().parent().next().html());
		//if( $(this).context.checked )
		//	$(this).parent().parent().css( { "background": " #f8f8f8" });
		//else							$(this).parent().parent().css( { "background": " #fff" });
		checkSum();
    });

    $('.detail-row :checkbox').click(function(){
		if( $(this).context.checked )	$(this).parent().parent().css( { "background": " #f8f8f8" });
		else							$(this).parent().parent().css( { "background": " #fff" });
		checkSum();
    });
	
	function checkSum() {
		$(".settle-up ").addClass("main-theme-bg");
		//$(".settle-up ").removeClass("main-theme-bg");
	}
	
	
	//评价-图片选择
	/* $('.eval-img-btn').click(function() {
		//var idx = parseInt($(this).data('rel'));

	
		var num = $(".eval-img-grp").find('.eval-img-photo').length;
		if (num>=5) {
			$('.modal-dialog-container').fadeIn(100); return;
		}
		
		$(this).parent().find('.photofile').click();
	}); */
	
	
	$(".eval-but").click(function() {
		$imgs = $(this).parent().find(".eval-but > img");
		var level = $(this).attr('level');
		$(this).parent().parent().find('.level').val(level);
		$imgs.each(function(index, element) {
			var src_name = $(this).attr("src");
			
			if( src_name.indexOf("_sel.png", 0) != -1 )
			{
				src_name = src_name.substring(0, src_name.indexOf("_sel.png", 0)) + ".png";
				$(this).attr('src', src_name);
			}
		});
		$img = $(this).find("img");
		var src_name = $img.attr("src");

		if( src_name.indexOf(".png", 0) != -1 )
		{
			src_name = src_name.substring(0, src_name.indexOf(".png", 0)) + "_sel.png";
			$img.attr('src', src_name);
		}
	});
	
	//好评, 中评, 差评
	var good = $('.eval-box1').data('eval');
	var mid  = $('.eval-box2').data('eval');
	var bad  = $('.eval-box3').data('eval');
	drawEvalBar('eval-cont-box', good, mid, bad);
	$('.eval-color:first').click();
})();


//评价-删除
function removeObj(obj) {
	var num = $(".eval-img-grp").find('.eval-img-photo').length;
	if(num==5){
		var addStr = "<div class='eval-img-btn' onclick='upload_img(this);'><img src='../../../HTML5/img/zhuijia/icon-add.png'></div>";
		$(obj).parent().parent().parent().append(addStr);
	}
	$(obj).parent().parent().prev('.photofile').remove();
	$(obj).parent().parent().remove();
	
	
		
	
}



