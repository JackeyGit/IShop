	var remainTimes = 10000;

	$(document).ready(function () {
		setInterval ("showRemainTime()", 1000);
	});
	
	function showRemainTime(){
		if(remainTimes<0) remainTimes =0 ;
		remainTimes--;
		var remainTime = getRemainTime(remainTimes);
		$("#day").text(remainTime.day>=10 ? remainTime.day:"0"+remainTime.day );
		$("#hour").text(remainTime.hour>=10? remainTime.hour:"0"+remainTime.hour);
		$("#minute").text(remainTime.minute>=10?remainTime.minute:"0"+remainTime.minute );
		$("#second").text(remainTime.second>=10?remainTime.second:"0"+remainTime.second);
	}

	function getRemainTime(nTime){
		var ret = new Object();
		if(isNaN(nTime)) return null;
		ret.second = nTime % 60;
		nTime = (nTime-ret.second)/60;
		ret.minute = nTime % 60;
		nTime = (nTime-ret.minute) / 60;
		ret.hour = nTime % 24;
		ret.day = (nTime-ret.hour) / 24;
		return ret;
	}


(function(){

	
	//积分详情页面
	$('.favorite-right-nav').click(function() {
		$(this).siblings().removeClass("main-theme-color");
		$(this).siblings().removeClass("main-border-bottom2");
		$(this).addClass("main-theme-color");
		$(this).addClass("main-border-bottom2");
		//$('.ruzhu-right-con').siblings().removeClass("active");
		var _id, num,idx;
        _id = $(this).attr('id');
        num = _id.substring(3, _id.length);
        $('.favorite-right-item').removeClass('item-visible');    
		var box = "#nav-content" + num;
		$(box).addClass('item-visible');
	});
	
	$('.item-btn').click(function() {
		var rel = $(this).attr('data-rel');
		if (rel==1) {
			$(this).removeClass("item-active").attr('data-rel', '');
		} else {
			$(this).addClass("item-active").attr('data-rel', 1);
		}
		$(this).siblings().removeClass("item-active").attr('data-rel', '');
	});
	
	//好评, 中评, 差评
	drawEvalBar('eval-cont-box', 800, 150, 200);
	$('.eval-color:first').click();
})();


/* 积分购买 */
(function(){
	$('.address-cont li').click(function() {
		//$(this).addClass('addr-sel').siblings().removeClass("addr-sel");
	});
	$('.btn-default').click(function() {
		$(this).parent().parent().addClass('addr-defalut addr-sel').siblings().removeClass('addr-defalut addr-sel');
	});
	
	
	var flag = false;
	$('.time-setting-btn').click(function() {
		flag = !flag;
		if(flag){
			$('.hidden-info').css({
				display: 'block'
			});
			$('.time-setting-btn > .icon-but > i').removeClass('fa-chevron-down').addClass('fa-chevron-up');
		}
		else{
			$('.hidden-info').css({
				display: 'none'
			});
			$('.time-setting-btn > .icon-but > i').removeClass('fa-chevron-up').addClass('fa-chevron-down');
		}
	});
	
	$('.hidden-info li > img').click(function() {
		var pat = $(this).parent();
		pat.siblings().find('img').attr('src', 'img/jifengoumai/icon-check-nor.png');
		$(this).attr('src', 'img/jifengoumai/icon-check-sel.png');
	});
	
	$('.more-addr-but').click(function() {
		var rel = $(this).attr('data-rel');
		if (rel==1) {
			$('.address-cont').css('height', '117px');
			$(this).attr('data-rel', '');
			$(this).css('background', 'url(img/jifengoumai/icon-double-down.png) no-repeat 100% center');
		} else {
			$('.address-cont').css('height', '240px');
			$(this).attr('data-rel', 1);
			$(this).css('background', 'url(img/jifengoumai/icon-double-up.png) no-repeat 100% center');
		}
	});
	
	$('.pay-option ul li').click(function() {
		$(this).siblings().removeClass('selected').attr('data-rel', '');
		
		var rel = $(this).attr('data-rel');
		if (rel==1) {
			$(this).removeClass('selected').attr('data-rel', '');
		} else {
			$(this).addClass('selected').attr('data-rel', 1);
		}
	});
	
	$('.radio-btn-div input').click(function() {

		if ( $(this).attr("class") == "view-all" )
		{
			$(".review-content").show();
			$(".review-content > .vertical-space").show();
			$(".review-content > .vertical-space").last().hide();
		}
		else if ( $(this).attr("class") == "view-good" )
		{
			$(".review-content").hide();
			$(".rate-good").show();
			$(".rate-good > .vertical-space").show();
			$(".rate-good > .vertical-space").last().hide();
		}
		else if ( $(this).attr("class") == "view-common" )
		{
			$(".review-content").hide();
			$(".rate-common").show();
			$(".rate-common > .vertical-space").show();
			$(".rate-common > .vertical-space").last().hide();
		}
		else if ( $(this).attr("class") == "view-bad" )
		{
			$(".review-content").hide();
			$(".rate-bad").show();
			$(".rate-bad > .vertical-space").show();
			$(".rate-bad > .vertical-space").last().hide();
		}
	});

	
})();








