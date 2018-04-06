// JavaScript Document

(function() {
	//个人中心-轮播操作
	var $iBox = $('.imgBoxOther'),
        indexImg = 1,          //初始下标
        totalImg = 8,          //图片总数量
        imgSize = 153,         //图片尺寸 宽度
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
	
	//个人中心-订单中心-全部订单-“账户管理”菜单操作
	$('.top-tab-menu').hover(function(){
        $(this).find('span').removeClass('run-down').addClass('run-up');
        $('.top-tab-cont').slideDown(100);
    }, function(){
        $(this).find('span').removeClass('run-up').addClass('run-down');
        $('.top-tab-cont').hide();
    });
	$('.top-tab-cont').hover(function(){
        $('.top-tab-menu').addClass('tab-hover').find('span').removeClass('run-down').addClass('run-up');
        $(this).show();
    }, function(){
        $('.top-tab-menu').removeClass('tab-hover').find('span').removeClass('run-up').addClass('run-down');
        setTimeout(function(){
            $('.top-tab-menu').find('span').removeClass('run-down');
        }, 500);
        $(this).slideUp(100);
    });
	
	//个人中心-我的资产-我的购物币-转赠页面-“查看转赠规则”按钮点击
	$('.ask-right').click(function(){
        $('.cost-help-box').slideDown(100);
    });
	$('.const-help-bottom').click(function(){
        $('.cost-help-box').slideUp(100);
    });
	
	//个人中心-我的资产-我的购物币-转赠页面-“确定”按钮点击
	$('.gift-ok1').click(function(){
		var temp = $('.gift-id-err').attr('data-rel');
		if (temp==1) $('.gift-id-err').hide().attr('data-rel', '');
		else $('.gift-id-err').show().attr('data-rel', 1);
    });
	
	//个人中心-我的资产-我的购物币-转赠页面-提示框显示
	$('.btn-main-gift').click(function(){
        $('.gift-msg-box').show();
    });
	$('.btn-msg-ok').click(function(){
        $('.gift-msg-box').hide();
    });
	
	//个人中心-我的资产-我的会员卡-会员卡余额充值页面-“选择充值卡”点击
	$('.select-card').click(function(){
        $('.select-info-box').slideDown(100);
    });
	$('.select-card').hover(function(){}, function(){
        $('.select-info-box').hide();
    });
	$('.select-info-box').hover(function(){
		$(this).show();
	}, function(){
        $(this).slideUp(30);
    });
	
	//个人中心-我的商城-销售总金额页面-“时间类型”点击
	$('.my-select-box').click(function(){
        $('.my-select-info').slideDown(100);
    });
	$('.my-select-box').hover(function(){}, function(){
        $('.my-select-info').hide();
    });
	$('.my-select-info').hover(function(){
		$(this).show();
	}, function(){
        $(this).slideUp(30);
    });
	
	//个人中心-我的资产-我的会员卡-会员卡余额充值页面-“选择充值方式”选择
	$('.sel-method').click(function(){
		var rel = $(this).val();
		if (rel==0) {
			$('.select-cost').show(); $('.input-cost').hide();
		} else {
			$('.select-cost').hide(); $('.input-cost').show();
		}
    });
	
	//个人中心-我的资产-支付密码管理-设置新的密码
	$('.main-title-bar .pass-type').click(function() {
		$(this).addClass('main-theme-color').siblings().removeClass('main-theme-color');
	});
	
	function initDates(){
		var curDate = new Date();
		var dateStr = curDate.getFullYear() + "-" + curDate.getMonth() + "-" + curDate.getDate();
		$("#startDate").val( dateStr );
		$("#endDate").val( dateStr );
	};
	
	initDates();
})();


/************ 我的资产-提现账户管理 *******/
(function() {
	$('.card-select-box .pay-mark-main').click(function(){
		$(this).siblings().removeClass('main-border-full1').addClass('mark-normal').attr('data-rel', '');
		
		var rel = $(this).attr('data-rel');
		if (rel==1) {
			$(this).attr('data-rel', '');
			$(this).removeClass('main-border-full1').addClass('mark-normal');
			$('.expert-input-box').hide();
		} else {
			$(this).attr('data-rel', 1);
			$(this).removeClass('mark-normal').addClass('main-border-full1');
			$('.expert-input-box').show();
		}
    });
	
	$('.money-bar .area-span').click(function(){
		$(this).addClass('thick-span main-theme-bg');
		$(this).siblings().removeClass('thick-span main-theme-bg');
    });
	$('.clock-bar .area-span').click(function(){
		$(this).addClass('thick-span2 main-theme-bg');
		$(this).siblings().removeClass('thick-span2 main-theme-bg');
    });
	
	$('.info-down-img').click(function(){
		var rel = $(this).attr('data-rel');
		if (rel==1) {
			$(this).parent().parent().addClass('tb-body').next().hide();
			$(this).attr('src', 'img/gerenzhongxin/icon-arrow-down.png').attr('data-rel', '');
		} else {
			$(this).parent().parent().removeClass('tb-body').next().show();
			$(this).attr('src', 'img/gerenzhongxin/icon-arrow-up.png').attr('data-rel', 1);
		}
    });
	
	$('.all-transfer').click(function(){
		$('.all-transfer-value').val('3055');
    });
	
	$('.pay-mark-grp .mark-btn').click(function(){
		$(this).addClass('main-border-full1').removeClass('mark-normal');
		$(this).siblings().removeClass('main-border-full1').addClass('mark-normal');
		
		$('.pay-info-box').css({'margin-left' : $(this).data('rel')+'px'});
    });
	$('.select-info-box p').click(function(){
		$('.select-info-box').hide();
		$('.select-card').text($(this).find('a').text());
    });
	
	$('.show-method-bar > a').click(function(){
		$(this).addClass('main-theme-color main-border-bottom3').siblings().removeClass('main-theme-color main-border-bottom3');
    });
	

})();

/************ 订单中心 *******/
(function() {
	$('.top-menu-bar > a').click(function(){
		$(this).addClass('main-theme-color main-border-bottom3');
		$(this).siblings().removeClass('main-theme-color main-border-bottom3');
    });
})();


/************ 我的商城 *******/
(function() {
	$('.data-ctl-box .my-btn-div').click(function(){
		var rel = $(this).attr('data-rel');
		$(this).removeClass('my-normal-btn').addClass('main-theme-bg');
		$(this).siblings().removeClass('main-theme-bg').addClass('my-normal-btn');

		$('.'+rel).addClass('cur-data-box').siblings().removeClass('cur-data-box');
    });
})();


/**************** 个人信息 *****************/
(function() {
	var flag = 0;
	$('#info_save').click(function(){
		if($('#pwd').val() =='' && $('#pwd_confirm').val()!='')
			flag = 1;
		if($('#pwd').val() !='' && $('#pwd_confirm').val() =='')
			flag = 2;
		if ($('#pwd').val()=='' && $('#pwd_confirm').val()=='')
			flag = 3;
				
		switch (flag) {
			case 1:
				$('#pwd').addClass('border-action');
				$('.pwd-input-mess').addClass('item-visible');
				break;
			case 2:
				$('#pwd_confirm').addClass('border-action');
				$('.pwd-confirm-mess').addClass('item-visible');
				break;
			case 3:
				$('#pwd').addClass('border-action');
				$('.pwd-input-mess').addClass('item-visible');
				$('#pwd_confirm').addClass('border-action');
				$('.pwd-confirm-mess').addClass('item-visible');
				break;
		}	
	});
	
	/**************** 我的资产-消费总额 *****************/
	$('.main-title-bar span u').click(function(){
		$('.calendar-block-div').slideDown(100);
	});
	$('.select-month-div ul li').click(function(){
		$(this).siblings().removeClass('main-theme-bg');
		$(this).addClass('main-theme-bg');
		
		$('.history-table .tb-head').siblings().hide();
		var clsName = 'cell-' + $('.sel-year-cont').text() + '-' + $(this).text();
		$('.' + clsName).show();
		$('.tb-date a.show-more').attr('data-rel', '').text('查看更多>>');
	});
	
	var cur_year = $('.select-year-div > span').text();
	cur_year = parseInt(cur_year);
	$('.icon-arrow-img:first').click(function(){
		cur_year -= 1;
		$('.select-year-div > span').text(cur_year);
	});
	$('.icon-arrow-img:last').click(function(){
		cur_year += 1;
		$('.select-year-div > span').text(cur_year);
	});
	$('.icon-close-img').click(function(){
		$(this).parent().parent().parent().fadeOut(50);
	});
	
	$('.tb-date a.show-more').click(function(){
		var rel = $(this).attr('data-rel');
		var clsName = $(this).parent().parent().attr('data-rel');
		/*
		if (rel==1) {
			$('.' + clsName).hide();
			$(this).attr('data-rel', '').text('查看更多>>');
		} else {
			$('.' + clsName).show();
			$(this).attr('data-rel', 1).text('查看更多<<');
		}
		*/
		$('.' + clsName).show();
		$(this).hide();
    });
	
	/********************** feed-back 修改内容 ***********************/
	//个人中心首页
	$('.other-box2').click(function () {
		$(this).toggleClass('main-theme-color');
	});
	//订单中心-全部订单
	$('.top-tab-cont ul li').click(function(){
		$(this).siblings().removeClass('selected');
		$(this).siblings().find('span').removeClass('main-theme-color');
		$(this).addClass('selected');
		$(this).find('span').addClass('main-theme-color');
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
			$(this).parent().parent().find("li").css({ 'background' : '#fff' });
			$checkboxs.each(function(index, element) { element.checked = false; });
		}
   });
	
	//个人信息-我的特权-申请成为代理商-未选择
	$('.privilege-agent-title li').click(function(){
		$(this).addClass('selected').siblings().removeClass('selected');
		$('.btn-div input[type=button]').addClass('main-theme-bg');
		var idx = $('.privilege-agent-title li').index(this);
		idx += 1;
		
		$('.privilege-agent-cont-sub'+idx).parent().parent().find('div').removeClass('selected');
		$('.privilege-agent-cont-sub'+idx).addClass('selected');
	});
	$('.privilege-agent-cont li').click(function(){
		$(this).siblings().find('div').removeClass('selected');
		$(this).find('div').addClass('selected');

		$('.btn-div input[type=button]').addClass('main-theme-bg');
		$('.privilege-agent-title > li').eq($(this).index()).addClass('selected').siblings().removeClass('selected');
	});
	
	$('.request-btn').click(function() {
		$(this).hide();
		$('.btn-div .gerenxinxi-theme-bg1').show();
	});
	$('.degree-btn').click(function() {
		$(this).text('升级中');
	});
		
	//个人信息-地址管理-默认地址
	$('.delete-cell').click(function() {
		$(this).parent().parent().remove();
	});
	
	$('.default-addr-cont li').click(function() {
		if ( !$(this).hasClass( "add-addr-btn" ) ) {
			$(".default-addr-cont li").each(function(index, element) {
				if ( !$(this).hasClass( "add-addr-btn" ) ) {
					$(this).removeClass("addr-sel").removeClass("addr-hint");
				}
			});
			$(this).addClass('addr-sel');
		}
	});
	
	$('.btn-default').click(function() {
		$(".default-addr-cont li").each(function(index, element) {
			if ( !$(this).hasClass( "add-addr-btn" ) ) {
				$(this).removeClass("addr-default addr-sel").addClass('addr-normal');
			}
		});
		$(this).parent().parent().removeClass("addr-normal").addClass('addr-default addr-sel');
	});

	$(".default-addr-cont li").hover( function() {
		if ( $(this).hasClass("addr-default") == false )
		{
			$(this).addClass("addr-hint");
			//$(this).find(".btn-edit").css({"display":"block !important"});
		}
	}, function(){
		if ( $(this).hasClass("addr-default") == false )
		{
			$(this).removeClass("addr-hint");
			//$(this).find(".btn-edit").css({"display":"none"});
			//$(this).find(".btn-edit").hide();
		}
    });

	$('.add-addr-btn').click(function() {
		window.open('14个人中心-4-个人信息-4地址管理-3编辑收货地址.html');
	});
	//个人信息-基本信息-自定义头像
	$('.img-sel-btn').click(function() {
		$(this).parent().find('input').click();
	});
	
	/****************** 修改登录密码 ***************/
	$('#info_next').click(function() {
		$('.step-box-1').hide(); $('.step-box-2').show();
	});
	$('#info_save').click(function() {
		$('.step-box-2').hide(); $('.step-box-3').show();
	});
	

	// 个人中心零钱提现输入密码弹框
 	$('#ipt').on('input', function (e){
        var numLen = 6;
        var pw = $('#ipt').val();
        var list = $('#cur li');
        for(var i=0; i<numLen; i++){
            if(pw[i]){
                $(list[i]).text('·');
            }else{
                $(list[i]).text('');
            }
        }
    });
    $(".gift-msg-pay-img").click(function(){
        $(".gift-msg-box").css('display','none');
    });
})();



