
$(document).ready(function(){
	//关注页面操作
	$('#check_code').click(function(){
		if ( $('#code').val() == "" )
		{
			$('#code').css({
					border: '2px solid #fd7c24',
					color: '#fd7c24',
				});
			var code_elem = document.getElementById("code");
			code_elem.setAttribute("placeholder", "验证码错误，请重新输入！");
		}
    });
	$('#code').keydown(function(){
		$(this).css({
				border: '1px solid #f0f0f0',
				color: 'black',
            });
    });

	//报错页面-轮播操作
	var $iBox = $('.imgBoxOther'),
        totalImg = 2,          //图片总数量
        imgSize = 900,         //图片尺寸 宽度
		moveTime = 500,        //切换动画时间
        clc = null;
		
	$('.pro-go-right').click(function(){
 		$iBox = $(this).parent().find('.pro-slide-main > .imgBoxOther');
		indexImg = $iBox.attr('data-index');

		if ( $iBox.parent( '.pro-slide-main2' ).length == 0 )
			imgSize = 900;
		else
		{
			imgSize = 640;
			if ( $iBox.find("li").length < 5 ) return;
		}

		if ( indexImg == null || indexImg == undefined || indexImg == '' )
			indexImg = 1;
		
		if (indexImg<1) indexImg = 1;
		
		if (indexImg>1) {
			indexImg--;
            $iBox.animate({
                left: -((indexImg - 1)*imgSize) + 'px'
            }, moveTime);
  			$iBox.attr('data-index', indexImg);
		}
    });
	
    $('.pro-go-left').click(function(){
		$iBox = $(this).parent().find('.pro-slide-main > .imgBoxOther');

		indexImg = $iBox.attr('data-index');

		if ( $iBox.parent( '.pro-slide-main2' ).length == 0 )
			imgSize = 900;
		else
		{
			imgSize = 640;
			if ( $iBox.find("li").length < 5 ) return;
		}

		if ( indexImg == null || indexImg == undefined || indexImg == '' )
			indexImg = 1;
		
		if (indexImg<1) indexImg = 1;
		
		if (indexImg<=totalImg/2) {
            $iBox.animate({
                left: -(indexImg*imgSize) + 'px'
            }, moveTime);
            indexImg++;
			$iBox.attr('data-index', indexImg);
        }
    });

	var selectedClass = "main-theme-color main-border-bottom3";
	
	$('.top-menu-bar a').click(function(){
		$('.top-menu-bar a').removeClass(selectedClass);
		$(this).addClass(selectedClass);
		
		index = $(".top-menu-bar a").index(this);
		$(".tab-content-guanzhu").removeClass("tab-show").addClass("tab-hidden");
		$(".tab-content-guanzhu").get(index).className = "tab-content-guanzhu tab-show";
    });

	$('.confirm-title a').click(function(){
		$aTags = $(this).parent().find("a");
		$aTags.removeClass( selectedClass );
		$(this).addClass( selectedClass );
		
		index = $aTags.index(this);
		$list_right = $(this).parent().parent().find('.confirm-list-custom  > .confirm-list-right2');
		$list_right.removeClass("tab-show").addClass("tab-hidden");
		$list_right.get(index).className = "confirm-list-right2 tab-show";
    });

	$('.confirm-title :checkbox').click(function(){
		if( $(this).context.checked )
			$(this).parent().parent().css({ 'background-color' : '#f8f8f8' });
		else
		{
			$(this).parent().parent().css({ 'background-color' : '#fff' });
			$(this).parent().parent().parent().parent().find('.order-ctl-bar > :checkbox').get(0).checked = false;
		}
    });

	$('.order-ctl-bar :checkbox').click(function(){
 		$checkboxs = $(this).parent().parent().children().find(".confirm-title > :checkbox");
		
		if( $(this).context.checked )
		{
			$(this).parent().parent().find("li").css({ 'background-color' : '#f8f8f8' });
			$checkboxs.each(function(index, element) { element.checked = true; });
		}
		else
		{
			$(this).parent().parent().find("li").css({ 'background' : 'none' });
			$checkboxs.each(function(index, element) { element.checked = false; });
		}
   });
   
   $('.detail-container .fav-btn').click(function(){
		var rel = $(this).data('rel');
		if (rel==1) {
			$(this).removeClass('fav-ok').data('rel', '');
		} else {
			$(this).addClass('fav-ok').data('rel', 1);
		}
    });
	
	$('.detail-container .btn-common').click(function(){
		$(this).parent().parent().parent().remove();
    });
	
	$('.guanzhu-del').click(function(){
		$(this).parent().parent().remove();
    });
	
	$('.remove-all-btn').click(function(){
		$('.select-list').each(function(index, element) {
            if ($(this).context.checked) {
				$(this).parent().parent().remove();
			}
        });
    });
	
});






