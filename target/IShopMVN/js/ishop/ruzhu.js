//sidebar
(function(){
	var $iBox = $('.ruzu-imgBox'),
        $iNum = $('.imgNum'),  //缓存优化
        indexImg = 1,          //初始下标
        totalImg = 5,          //图片总数量
        //imgSize = $(window).width(),         //图片尺寸 宽度
		imgSize = $('.ruzhu-slidding-box').width();
        moveTime = 1100,        //切换动画时间
        setTime = 2500,        //中间暂停时间
        clc = null;
        $iBox.css("width", (imgSize*totalImg)+"px");
        $('.ruzu-imgBox li').css("width", imgSize+"px");

    function moveImg(){
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
    }
    $iNum.hover(function(){
        $iBox.stop();                    //结束当前动画
        clearInterval(clc);              //暂停循环
        $iNum.removeClass('mark-color');
        $(this).addClass('mark-color');
        indexImg = $(this).index();
        $iBox.animate({
            left: -(indexImg*imgSize) + 'px'
        }, 500);
    },function(){
        clc = setInterval(moveImg, setTime);
    });

    //鼠标放上停止动画
    $iBox.hover(function(){
        $('.control').fadeIn(200);
        clearInterval(clc);              //暂停循环
    },function(){
        $('.control').hide();
        clc = setInterval(moveImg, setTime);
    });
    //显示左右
    $('.control').hover(function(){
        clearInterval(clc);
        $('.control').show();
//        return false;允许传播
    });
    //向右边前进
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
    //向左边前进
    $('.to-left').click(function(){
        indexImg--;
        if(indexImg != 0){
            $iBox.animate({
                left: -((indexImg - 1)*imgSize) + 'px'
            }, moveTime);
            $iNum.removeClass('mark-color')
                .eq((indexImg - 1))
                .addClass('mark-color');
        }
        else{
            indexImg = totalImg;
            $iNum.removeClass('mark-color')
                .eq(indexImg - 1)
                .addClass('mark-color');
            $iBox.animate({
                left: -((indexImg - 1)*imgSize) + 'px'
            }, moveTime);
        }
    });


    clc = setInterval(moveImg, setTime);
	
    $('.ruzhu-side-li > li').click(function() {
		$(this).siblings().removeClass("ruzhu-li-nav-hover");
		$(this).addClass("ruzhu-li-nav-hover");
		//$('.ruzhu-right-con').siblings().removeClass("active");
		var _id, num,idx;
        _id = $(this).attr('id');
        num = _id.substring(4, _id.length);

        $('.ruzhu-right-con').removeClass('active');    
		var box = "#rightBox" + num;
		$(box).addClass('active');
	});

	$(".ruzhu-add-img div").click(function(){
		$(this).parent().find('input').click();
	});
	
	$(".ruzhu-add-img input").change(function(){
		//alert( $(this).context.value );
	});
	
})();