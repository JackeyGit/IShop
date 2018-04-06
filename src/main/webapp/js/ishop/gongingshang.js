
$(document).ready(function(){
	//积分详情页-评价-图片点击
var indexold=-1;
var countt=0;
	$('.img-item').click(function(){
		var index = $(this).parent().find('.img-item').index($(this));
		var smallsrc=$(this).attr("src");
		var bigsrc=$(this).attr("src");
		$(this).parent().find('.img-item').removeClass("main-border-full2").addClass("border-white2");
		$(this).parent().find(".img-arrow-down").removeClass("item-visible");
		$(this).parent().find('.img-item').get(index).className = "img-item main-border-full2";
		$(this).find(".img-arrow-down").addClass("item-visible");
		$preview = $(this).parent().parent().find('.preview-large-img');
		if(index==indexold){
			countt++;
		    if(countt%2==0){
		    	$(this).parents(".review-pbox").find(".preview-large-img-div").show();
		    	$(this).addClass("main-border-full2").removeClass("border-white2");
				$(this).find(".img-arrow-down").addClass("item-visible");
		    }else{
		    	$(this).parents(".review-pbox").find(".preview-large-img-div").hide();
		    	$(this).removeClass("main-border-full2").addClass("border-white2");
				$(this).find(".img-arrow-down").removeClass("item-visible");
		    }
		}else if(indexold==-1){
			$(this).parents(".review-pbox").find(".preview-large-img-div").show();
		}else{
		    $(this).parents(".review-pbox").find(".preview-large-img-div").show();
		    countt=0;
		}
		indexold=index;
		var src = $(this).children().first().attr("src");
		if ( src.indexOf(".png") != -1 )
			$preview.attr( "src", src.substring(0, src.indexOf(".png")) + "-large.png");
    });
	
	//加入购物车-"加入购物车"按钮点击
	$('.enter-cart-btn').click(function(){
		$('.enter-cart-dialog').show();
	});
	$('.enter-cart-close').click(function(){
		$('.enter-cart-dialog').hide();
	});
	
	//加入购物车-二维码框显示
	$('.hit-area').hover(function(){
		$('.down-up-div').css({ 'background': '#f2f2f2' });
		$('.dropshow-qr-code').show();
    }, function() {
    	$('.down-up-div').css({ 'background': '' });
		$('.dropshow-qr-code').hide();
    });
    $('.dropshow-qr-code').hover(function(){
		$('.down-up-div').css({ 'background': '#f2f2f2' });
		$(this).show();
    }, function() {
    	$('.down-up-div').css({ 'background': '' });
		$('.dropshow-qr-code').hide();
    });
	
	//个人中心-轮播操作
	var $iBox2 = $('.imgBoxOther'),
        indexImg2 = 1,          //初始下标
        totalImg2 = 8,          //图片总数量
        imgSize2 = 113,         //图片尺寸 宽度
		moveTime2 = 500,        //切换动画时间
		perCount2 = 3,
        clc2 = null;
		
	$('.pro-go-right').click(function(){
        if (indexImg2>1) {
			indexImg2--;
            $iBox2.animate({
                left: -((indexImg2 - 1)*imgSize2) + 'px'
            }, moveTime2);
        }
    });

    $('.pro-go-left').click(function(){
        if (indexImg2<=totalImg2-perCount2) {
            $iBox2.animate({
                left: -(indexImg2*imgSize2) + 'px'
            }, moveTime2);
            indexImg2++;
        }
    });
    
	//积分详情页-右侧“购物车”菜单点击操作
	$('.right-nav-busket').click(function(){
		var rel = $(this).attr('data-rel');
		if (rel==1) {
			$(this).attr('data-rel', '').removeClass('main-theme-bg');
			$('.enter-cart-success-box').fadeOut(200);
		} else {
			$(this).attr('data-rel', 1).addClass('main-theme-bg');
			$('.enter-cart-success-box').fadeIn(200);
		}
    });
    $('.btn-caret-2').click(function(){
		$('.enter-cart-success-box').hide();
    });

	var $iBox = $('.v-slide-content'),
        indexImg = 1,          //初始下标
        totalImg = 5,          //图片总数量
        imgSize = 176,         //图片尺寸 宽度
		moveTime = 500,        //切换动画时间
		perCount = 3;
	$('.btn-down').click(function(){
		if (indexImg>1) {
			indexImg--;
			$iBox.animate({
				top: -((indexImg - 1)*imgSize) + 'px'
			}, moveTime);
		}
    });
    $('.btn-up').click(function(){
		if (indexImg<=totalImg-perCount) {
			$iBox.animate({
				top: -(indexImg*imgSize) + 'px'
			}, moveTime);
			indexImg++;
		}
    });
	
	$(".cir-mask-left").click(function(){
		$tsImgs = $("#tsImgSCon > ul > li ");
		var len = $tsImgs.length ;
		var cur_index = -1;
		$("#tsImgSCon > ul > li ").each(function(index, element) {
			if ( index > 0 && index < len )
				if ( $(this).hasClass("tsSelectImg") )
					cur_index = index - 1;
		});
		//if ( cur_index > -1 && cur_index < len )
		//	showPic(cur_index);
		$tsImgs.get(cur_index).click();
	});

	$(".cir-mask-right").click(function(){
		$tsImgs = $("#tsImgSCon > ul > li ");
		var len = $tsImgs.length - 1;
		var cur_index = -1;
		$("#tsImgSCon > ul > li ").each(function(index, element) {
			if ( index < len )
				if ( $(this).hasClass("tsSelectImg") )
					cur_index = index + 1;
		});

		//if ( cur_index > -1 && cur_index < len )
		//	showPic(cur_index);
			$tsImgs.get(cur_index).click();
	});

});
