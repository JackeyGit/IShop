
$(document).ready(function(){
	//旗舰店页面操作
	$('.btn-close').click(function(){
		$('.mark-detail').css({
				'display': 'none',
				'position': 'absolute', 
				'width':'360px',
				'height':'265px',
				'background':'#fff', 
				'padding':'0',
				'z-index':'9', 
				'border': '1px solid #25d5a5',
				'margin-top':'56px',
				'margin-left':'-1px'
           });
    });
	$('.main-mark-left2').mouseover(function(){
		$('.mark-detail').css({
				'display': 'block',
           });
    });
	$('.img7-1').click(function(){
		var src_name = $(this).attr("src");
		
		src_name = src_name.substring(0, src_name.indexOf(".png", 0)) + "-selected.png";
		$(this).attr({ 
          'src': src_name
        });
    });
	
	var flag = [1,1,1,1];
	
    $('.more-but2').click(function(){
		var id = $(this).attr("id");
		var i = parseInt(id.charAt(4)) - 1;
		if ( i > 0 )return;
		var more_menu = '#more-menu' + id.charAt(4);

        if (flag[i]) {
            $(this).css({
                background: 'url(img/Home/5/icon-up.png) no-repeat 90% center'
            }).attr('value', '收起');
            $(more_menu).css({ height: '75px' });
            flag[i] = 0;
        } else {
            $(more_menu).css({ height: '' });
            $(this).css({ background: '' }).attr('value', '更多');
            flag[i] = 1;
        }
    });

    $('.drop-up').click(function(){
		$('.border-special').css({ height: '60px', display:'none' });
		flag[3] = 0;
    });

    $('.drop-down').click(function(){
		$('.border-special').css({ height: '', display:'block' });
		flag[3] = 1;
    });
	
	$('.drop-other-two').click(function(){
		var rel = $(this).attr('data-rel');
		if (rel==1) {
			$('.border-special').css({ height: '', display:'block' });
			$(this).text('更多选项').attr('data-rel', '');
		} else {
			$('.border-special').css({ height: '60px', display:'none' });
			$(this).removeClass('drop-down').text('显示筛选').attr('data-rel', 1);
		}
    });
	
	$('.pro-thumb-box').click(function(){
		$(this).addClass('selected').siblings().removeClass('selected');
		var src = $(this).find('img').attr('src');
		$(this).parent().parent().find('img.photo6-img').attr('src', src);
    });
	
	$('.cont-menu-right > span').click(function(){
		$(this).siblings().removeClass('selected').data('rel', '');
		var rel = $(this).data('rel');
		if (rel==1) {
			$(this).removeClass('selected').data('rel', '');
		} else {
			$(this).addClass('selected').data('rel', 1);
		}
    });
	
	$('.nav-box14').hover( function(){
		$('.arrow14').addClass("arrow14-hover");
	},function(){
		$('.arrow14').removeClass("arrow14-hover");
	});


    $(window).scroll( function() {               //滚动时触发
        var top = $(document).scrollTop(),       //获取滚动条到顶部的垂直高度
            height = $(window).height();         //获得可视浏览器的高度

        if(top > 1000){
            $("#nav-left-floor2").css({
				top: top - (220 + height/2)
			});
        } else {
			$("#nav-left-floor2").css({ top: 461 });
		}
    });

	$(".qr-show-btn").click( function() {
		$(".qr-ele-box").show();
	});

	$('.qr-del-btn').click(function(){
		$(this).parent().hide();
    });
	
	$('.notice-del-btn').click(function(){
		$(this).parent().parent().remove();
    });
	
	$(".only-btn1").click( function(){
		$(this).val('已收藏');
		$(this).css({
			"background-color" : "#fd7c24",
			"color" : "#fff"
			});
	});
	
	
	//列表页
	$('.menu-cell-box li').click(function() {
		$(this).siblings().removeClass('selected').data('rel', '');
		var rel = $(this).data('rel');
		if (rel==1) {
			$(this).removeClass('selected').data('rel', '');
		} else {
			$(this).addClass('selected').data('rel', 1);
		}
    });
});
