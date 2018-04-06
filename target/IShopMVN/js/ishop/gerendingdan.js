// JavaScript Document

(function() {
	//个人中心-订单页面-轮播操作
	var $iBox = $('.imgBoxOther'),
        indexImg = 1,          //初始下标
        totalImg = 8,          //图片总数量
        imgSize = 148,         //图片尺寸 宽度
		moveTime = 500,        //切换动画时间
		perCount = 6,
        clc = null;
		
	$('.pro-go-right').click(function(){
        if (indexImg>1) {
			indexImg--;
            $iBox.animate({
                left: -((indexImg - 1)*imgSize*perCount) + 'px'
            }, moveTime);
        }
    });

    $('.pro-go-left').click(function(){
        if (indexImg<=totalImg/perCount) {
            $iBox.animate({
                left: -(indexImg*imgSize*perCount) + 'px'
            }, moveTime);
            indexImg++;
        }
    });
    
	
})();