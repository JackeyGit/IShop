function GetOffset(oTarget, bX) {
	if(oTarget==null) return null;
	if(bX==null) var bX = true;
	var iOffset = bX ? oTarget.offsetLeft : oTarget.offsetTop;
	var oParent = oTarget.offsetParent;
	iOffset += bX ? oParent.offsetLeft : oParent.offsetTop;
	var iCnt = 0;
	while(oParent.tagName.toLowerCase()!="body" && iCnt<100) {
		oParent = oParent.offsetParent;
		iOffset += bX ? oParent.offsetLeft : oParent.offsetTop;
		iCnt++;
	}
	return iOffset;
}

//下拉框
(function(){
    var num = 0;

    $('[data-toggle=arrowdown]').hover(function(){
        var _id = $(this).attr('id');
        num = _id.substring(5, _id.length);
        $(this).find('span')
            .removeClass('run-down')
            .addClass('run-up');
        $('#nav-box'+num).slideDown(100);
		
		$('.sub-nav-box-chd').hide();
		$('.sub-nav-box li > div').removeClass('selected');
    }, function(){
        $(this).find('span')
            .removeClass('run-up')
            .addClass('run-down');
        $('#nav-box'+num).hide();
    });
    $('[data-toggle=hidden-box]').hover(function(){
        var _id =  $(this).attr('id');
        num = _id.substring(7, _id.length);
        $('#arrow'+num).find('span').removeClass('run-down').addClass('run-up');
		if (num<13) $('#arrow'+num).addClass('nav-hover');
        $(this).show();
    }, function(){
        $('#arrow'+num).removeClass('nav-hover')
            .find('span').removeClass('run-up')
            .addClass('run-down');
        setTimeout(function(){
            $('#arrow'+num).find('span').removeClass('run-down');
        }, 500);
        $(this).slideUp(100);
    });
	
	$('.main-tab > a.tab-blank1').click(function() {
		window.open('1-1-1商城首页.html');
	});

    $('.other-box').hover(function(){
        $(this).addClass('other-box-focus');
        $('#other-busket-down').slideDown(100);
    }, function(){
        $(this).removeClass('other-box-focus');
        $('#other-busket-down').hide();
    });
	$('#other-busket-down').hover(function(){
        $('.other-box').addClass('other-box-focus');
        $(this).show();
    }, function(){
        $('.other-box').removeClass('other-box-focus');
        $(this).slideUp(100);
    });
	
	$('.sidebar-top').click(function() {
		if ($(this).hasClass('fixed')) return;
		
		var rel = $(this).attr('data-rel');
		if (rel==1) {
			$('.sidebar-info').slideDown(100);
			$(this).attr('data-rel', '');
			$('.sidebar-right').attr('src', 'img/Home/2/icon-arrow-up-white.png');
			
		} else {
			$('.sidebar-info').slideUp(100);
			$(this).attr('data-rel', 1);
			$('.sidebar-right').attr('src', 'img/Home/2/icon-arrow-down-white.png');
		}
	});
	
	$('.main-tab > a.tab-blank1').click(function() {
		window.open('1-1-1商城首页.html');
	});
	$('.main-tab > a.tab-blank2').click(function() {
		window.open('1-1-2大礼包商城.html');
	});
	$('.main-tab > a.tab-blank3').click(function() {
		window.open('1-1-3积分商城.html');
	});
	$('.main-tab > a.tab-blank4').click(function() {
		window.open('1-1-4限时抢购.html');
	});
	$('.main-tab > a.tab-blank5').click(function() {
		window.open('1-1-5我的商城.html');
	});
	$('.main-tab > a.tab-blank6').click(function() {
		window.open('1-1-6商品活动页.html');
	});
	$('.main-logo').click(function() {
		window.open('1-1-1商城首页.html');
	});
	$('.imgBoxOther li').click(function() {
		window.open('5商品详情页-1（供应商）商品详情页.html');
	});
	
	
	//大礼包商城页面-礼包分类
	$('.cont-sc-top > a').click(function() {
		$(this).addClass('selected').siblings().removeClass('selected');
		
		var rel = $(this).attr('data-rel');
		if (rel=='') {
			$('.sc-cont-box').show();
		} else {
			$('.sc-cont-box').hide();
			$('.'+rel).show();
		}
	});
	
	//积分商城页面
	$('.cont-td-top > a').click(function() {
		$(this).addClass('selected main-theme-bg').siblings().removeClass('selected main-theme-bg');
		
		var rel = $(this).attr('data-rel');
		$('.td-cont-box').hide();
		$('.'+rel).show();
	});
	$('.cont-td-menu > a.order-btn').click(function() {
		$(this).addClass('selected').siblings().removeClass('selected');
	});
	$('.td-cont-main li').click(function() {
		window.open('12积分详情页.html');
	});
	
	
	//限时抢购页面
	$('.top-go-left').click(function() {
		var td_index = $('.fh-top-grp td.selected').index();
		if (td_index<1) return;
		td_index = td_index - 1;
		$('.fh-top-grp td').eq(td_index).addClass('selected').siblings().removeClass('selected');
	});
	$('.top-go-right').click(function() {
		var td_index = $('.fh-top-grp td.selected').index();
		if (td_index>=3) return;
		td_index = td_index + 1;
		$('.fh-top-grp td').eq(td_index).addClass('selected').siblings().removeClass('selected');
	});
	$('.fh-top-grp td').click(function() {
		$(this).addClass('selected').siblings().removeClass('selected');
	});
	
	
	$('.ft-cont-main li').click(function() {
		var index = $('.ft-cont-main li').index($(this));
		if ( index < 4 ) return;
		if ( $(this).hasClass("selected") )		$(this).removeClass("selected");
		else									$(this).addClass("selected");
	});
	
	$(".check-these").click( function(){
		$items = $('.ft-cont-main li');

		if ( $(this).get(0).checked  )
		{
			$items.addClass("selected");
		}
		else
		{
			$(".check-all").get(0).checked = false;
			$items.each(function(index, element) {
				if ( index == 7 )		element.className = "end-cell";
				else if ( index > 3 )	element.className = "";
			});
		}
	});

	$(".check-all").click( function(){
		$items = $('.ft-cont-main li');

		if ( $(this).get(0).checked  )
		{
			$items.addClass("selected");
			$(".check-these").get(0).checked = true;
		}
		else
		{
			$(".check-these").get(0).checked = false;
			$items.each(function(index, element) {
				if ( index == 7 )		element.className = "end-cell";
				else if ( index > 3 )	element.className = "";
			});
		}
	});


})(jQuery);


//商城首页
(function(){
	$('.nav-brand-main').click(function() {
		$(this).addClass('main-border-bottom3').siblings().removeClass('main-border-bottom3');
	});
	
	$('.normal-list > div > a').click(function() {
		$('.sub-nav-box li > div').removeClass('selected');
		$(this).parent().addClass('selected');
		
		if ($(this).hasClass('has-chd-cell')) {
			$('.sub-nav-box-chd').show();
		} else {
			$('.sub-nav-box-chd').hide();
		}

		var id = $(this).parent().parent().parent().parent().parent().attr('id');
        num = id.substring(7, id.length);
		$('#arrow'+num+' > a').text('送至：' + $(this).text());
	});
	$('.sub-nav-box-chd > div > a').click(function() {
		var pat = $(this).parent().parent().parent().parent().parent();
		var id = pat.attr('id');
        num = id.substring(7, id.length);
		$('#arrow'+num+' > a').text('送至：' + pat.find('div.selected > a').text()+'省'+$(this).text()+'市');
		//$('#arrow'+num+' > a').text('送至：' + $(this).text());
	});
	
	//search-box
    $('.search-box').hover(function(){
        $(this).find('span')
            .addClass('down-icon-circle').css({
                background: '#f50 url(img/arrow-white.png) no-repeat center'
            });
    }, function(){
        $(this).find('span')
            .removeClass('down-icon-circle').css({
                background: ''
            });
    });
	
	$('.cat-degree-1 > li').click(function() {
		window.open('4列表页 - 1一级列表.html');
	});
	$('.cat-degree-2 > li .a-box > a').click(function() {
		window.open('4列表页 - 3二级列表.html');
	});
	$('.brand-one-cell').click(function() {
		window.open('4列表页 - 2二级列表.html');
	});
	
	$('.good-top-title > a').click(function() {
		$(this).addClass('good-menu-select main-theme-bg').siblings().removeClass('good-menu-select main-theme-bg');
		$('.brand-main').hide();
		$('.'+$(this).data('target')).show();
	});

	$(".more-view").click(function() {
		var brand_box_more = ".brand-box-more";
		
		if ( $(".brand-box1").css("display") == "none"  )
			brand_box_more = ".brand-box-more2";
			
		if ( $(brand_box_more).css("display") == "none" )	$(brand_box_more).show();
		else												$(brand_box_more).hide();
	});
		
})(jQuery);

//滚动出现固定导航
(function(){
    $(window).scroll(function(){
        var scTop = $(window).scrollTop(),
            $scS = $('.scroll-search'),
            $frS = $('.fix-right-sub'),
            rW;
        rW = ($(window).width() - 1190)/2;

        scTop >= 200 ? $scS.slideDown(200) : $scS.slideUp(200);
        if(scTop >= 2700 && scTop < 4400){
            $frS.css({position: 'fixed', top: '-541px', right: rW, marginTop: ''});
        }
        else if(scTop >= 4400){
            $frS.css({position: '', marginTop: 1728});
        }
        else{
            $frS.css({position: ''});
        }
		
		//积分商城
		if (scTop>=180) {
            $('.floating-bar-td').css({ position:'fixed', top:'20px' });
        } else {
            $('.floating-bar-td').css({ position:'', top:'' });
        }
    });
})(jQuery);

//sidebar
(function(){
    var scTop = 0,
        beginH = 200,
        wW = $(window).width(),
        classN,
        num;

    $('.side-li > li').hover(function(){
        $(this).find('h3').css({border: 'none'})
            .end().find('span').css({color: "#f40"});
        classN = $(this).attr('class');
        num = classN.substring(2, classN.length);

		var offWd = ($('.sidebar-info').parent().hasClass('width-1080')) ? 255 : 195;
        $('.hiden-box').show()
            .css({
                left: 200	//((wW - 1190)/2 + offWd)
            }).animate({width: '1000px'}, 300);
        $('.hiden-box > li').hide();
        $('#hiden-'+num).fadeIn(200);
        beginH = 200;
    }, function(){
        $(this).find('h3').css({border: ''})
            .end().find('span').css({color: ""});
        $('.hiden-box').hide().css({width: '0'});
    });
    $('.hiden-box').hover(function(){
        $('.s_'+num).addClass('focused').find('h3').css({border: 'none'})
            .end().find('span').css({color: "#f40"});
        $(this).show().css({width: '1000px'});
    }, function(){
        $('.s_'+num).removeClass('focused').find('h3').css({border: ''})
            .end().find('span').css({color: ""});
        $(this).animate({
            width: 0
        }, 200).hide(200);
    });
	
	$('.hiden-box .sub-nav-left .cell-box:last > .cell-main-box').addClass('last-item');

})();


//关二维码
(function(){
    $('.close-code').click(function(){
        $('.two-code').fadeOut(200);
    });
})();

//service
(function(){
    $('.service-cell').hover(function(){
        $(this).children('.service-i').find('img').animate({
            marginTop: '-10px'
        }, 100);
        $(this).children('.service-i').find('img').animate({
            marginTop: '6px'
        }, 100);
    }, function(){
        return false;
    });
})();
//product-box
(function(){
    $('.product-box').hover(function(){
        $(this).css({
            zIndex: '3000'
        });
    }, function(){
        $(this).css({
            zIndex: ''
        });
    });
})();


//product-show
(function(){
    $('.product-box').hover(function(){
        $(this).find('.share-weitao').fadeIn(200);
    }, function(){
        $(this).find('.share-weitao').fadeOut(200);
    });
})();

//dynamic
(function(){
    $('.dynamic').hover(function(){
        $(this).find('.follow').fadeIn(200);
    }, function(){
        $(this).find('.follow').fadeOut(200);
    })
})();

//pagenation
(function(){
    $('.page-nav .page').click(function() {
        $(this).addClass('page-current').siblings().removeClass('page-current');
		checkPageEnable();
    });
	
	$('.page-nav .page-prev').click(function() {
		var ind = $('.page-nav .page-current').index();
		if (ind<=1) {
			$(this).addClass('disabled'); return;
		}
		
		$('.page-nav .page-current').prev().addClass('page-current').siblings().removeClass('page-current');
		checkPageEnable();
    });
	
	$('.page-nav .page-next').click(function() {
		var ind = $('.page-nav .page-current').index();
		if (ind>=$('.page').length) {
			$(this).addClass('disabled'); return;
		}
		
		$('.page-nav .page-current').next().addClass('page-current').siblings().removeClass('page-current');
		checkPageEnable();
    });
	
	$('.page-nav .page-btn').click(function() {
		var ind = $('.page-nav .page-current').index();
		var page = $('.page-nav .page-num').val();
		if (page>$('.page').length || page<1 || ind==page) return;
		
		$('.page-nav .page').eq(page-1).addClass('page-current').siblings().removeClass('page-current');
		checkPageEnable();
    });
	
	function checkPageEnable() {
		var ind = $('.page-nav .page-current').index();
		
		if (ind==1) {
			$('.page-nav .page-prev').addClass('disabled');
		} else {
			$('.page-nav .page-prev').removeClass('disabled');
		}
		if (ind==$('.page').length) {
			$('.page-nav .page-next').addClass('disabled');
		} else {
			$('.page-nav .page-next').removeClass('disabled');
		}
		$('.page-nav .page-num').val(ind);
	}
})();

//more-btn
(function(){
    var flag = 1;

    $('.more-btn').click(function(){
        if(flag){
            $(this).css({
                background: '#f40 url(img/up.png) no-repeat 90% center'
            });
            $('.sub-nav').css({
                height: '145px'
            });
            flag = 0;
        }else{
            $('.sub-nav').css({
                height: ''
            });
            $(this).css({
                background: ''
            });
            flag = 1;
        }
    });
})();


/**
 * backToTop1
 */
$(document).ready(function(){
    $(window).scroll( function() {               //滚动时触发
        var top = $(document).scrollTop(),       //获取滚动条到顶部的垂直高度
            height = $(window).height();         //获得可视浏览器的高度
			
			$('.test').val(top);
        if(top > 660){
			$("#nav-left-floor").css({position: 'fixed', top: (height-180)/2+'px'});
			$(".nav-right-fix").css({position: 'fixed', top: (height-210)/2+'px'});
        } else {
			$("#nav-left-floor").css({ position: '', top: 80 });
			$(".nav-right-fix").css({ position: '', top: 30 });
		}
		
		$('.nav-chd-left').each(function(index, element) {
            $(this).find("span").eq(1).hide();
        });
		if (top>1300 && top<1700) {
			$('.nav-chd-left').eq(0).find("span").eq(1).show();
		} else if (top>1750 && top<2200) {
			$('.nav-chd-left').eq(1).find("span").eq(1).show();
		} else if (top>2300 && top<2900) {
			$('.nav-chd-left').eq(2).find("span").eq(1).show();
		} else if (top>2950 && top<3400) {
			$('.nav-chd-left').eq(3).find("span").eq(1).show();
		} else if (top>3500 && top<3900) {
			$('.nav-chd-left').eq(4).find("span").eq(1).show();
		}
    });
    /*点击回到顶部*/
    $('#backToTop-up').click(function(){
        $('html, body').animate({
            scrollTop: 0
        }, 500);
    });
    $('#backTop-up').click(function(){
        $('html, body').animate({
            scrollTop: 0
        }, 500);
    });
    /*点击到底部*/
    $('#backToTop-down').click(function(){
        $('html, body').animate({
            scrollTop: $(document).height()
        }, 500);
    });
	
	$('.right-cell').hover(function(){
		var pat = $(this).parent();
        $(this).addClass('main-theme-bg').siblings().fadeIn(200);
		//pat.find('.right-nav-left').hide().find('.right-nav-left').removeClass('.main-theme-bg');
    }, function(){
        $(this).removeClass('main-theme-bg').siblings().fadeOut(50);
    });
	$('.right-nav-left').hover(function(){
        $(this).siblings().addClass('main-theme-bg');
		//pat.find('.right-nav-left').hide().find('.right-nav-left').removeClass('.main-theme-bg');
		$(this).show();
    }, function(){
        $(this).siblings().removeClass('main-theme-bg');
		$(this).hide();
    });
});


//my-card
(function(){
    $('.arrow-right').click(function(){
        $('.cards-info ul').animate({
            marginLeft: '-205px'
        }, 500);
    });
    $('.arrow-left').click(function(){
        $('.cards-info ul').animate({
            marginLeft: '0'
        }, 500);
    });
})();

//msg-close
(function(){
    $('.close-msg').click(function(){
        $('.read-info').css({
            textAlign: 'center'
        }).html('还没有新的消息...');
    });
	
	$('.dlg-close-btn').click(function(){
        $('.modal-dialog-container').fadeOut(200);
    });
})();

//tab-nav
(function(){
    $('.li-nav-liebiao').click(function(){
        var _id, num,idx;
        _id = $(this).attr('id');      
        idx = _id.substring(2, 3);
        num = _id.substring(4, _id.length);
        $('.li-nav').removeClass('li-nav-hover');
        
		var hiddenBox = ".hiddenBox" + idx;
		$(hiddenBox).hide();
		var box = "#box" + idx + "-" + num;
		$(box).fadeIn(200);
		
		$(".li-nav-liebiao").css( { "color" : "#252525" , 
									"border-top" : " 1px solid #e5e5e5" , 
									"border-right" : " 1px solid #e5e5e5" , 
									"border-bottom" : " none" , 
									"border-left" : " 1px solid #e5e5e5" , 
									"background-color" : "#fff" } );

		$(".sel-img-white").css( { "display" : "none"} );
		$(".sel-img-orange").css( { "display" : "block"} );
		
		$(this).css( { "color" : "#fff" , 
						"border" : " 1px solid #fd7c24" , 
						"background-color" : "#fd7c24" } );
									
		$(".tab-tail-img").css( { "display" : "none" } );

		var elem = document.getElementById(_id);
		var tail_imgs = elem.getElementsByTagName("div");
		var tail_img = tail_imgs.item(1);
		tail_img.style.display = "block";
		
		var sel_imgs = elem.getElementsByTagName("img");
		var sel_img = sel_imgs.item(1);
		sel_img.style.display = "block";
    });

    $('.li-nav').hover(function(){
        var _id, num,idx;
        _id = $(this).attr('id');      
        idx = _id.substring(2, 3);
        num = _id.substring(4, _id.length);
        $(this).siblings().removeClass('li-nav-hover');
        
		var hiddenBox = ".hiddenBox" + idx;
		$(hiddenBox).hide();
		var box = "#box" + idx + "-" + num;
		$(box).fadeIn(200);
    }, function(){
        $(this).addClass('li-nav-hover');
    });
})();

//service-cell
(function(){
    $('.service-cell[id]').hover(function(){
        var _id, num;

        _id = $(this).attr('id');
        num = _id.substring(8, _id.length);
        $('.service-box').css({
            bottom: -50
        }).hide();
        $('#service-box-'+num).show().animate({
            bottom: '0'
        }, 200);
        $('.service-cell[id]').css({
            borderBottomColor: ''
        });
        $(this).css({
            borderBottomColor: '#fff'
        });
    }, function(){

    });
})();

//close-service
(function(){
    $('.service-head > .fa-times').click(function(){
          $('.service-box').fadeOut(200);
    });
})();

//hidden-title
(function(){
    $('.hidden-title > a').hover(function(){
        $(this).next().css({
            color: '#f40'
        });
    }, function(){
        $(this).next().css({
            color: ''
        });
    });
})();

//normal-span
(function(){
    //brand-one-cell
    $('.brand-one-cell').hover(function(){
    	$(this).css({ zIndex: '3000' });
    }, function(){
    	$(this).css({ zIndex: '' });
    });
	
	$('.brand-two-cell').hover(function(){
    	$(this).css({ zIndex: '3000' });
    }, function(){
    	$(this).css({ zIndex: '' });
    });
})();



//限时抢购
(function(){
    $('.fh-cont-main li').click(function(){
        window.open('5商品详情页-1（品牌商）商品详情页.html');
    });
})();

//我的商城
(function(){
	var flag = 1;

    $('.more-but').click(function(){
        if (flag) {
            $(this).css({
                background: 'url(img/Home/5/icon-up.png) no-repeat 90% center'
            }).attr('value', '收起');
            $('.more-menu').css({ height: '55px' });
            flag = 0;
        } else {
            $('.more-menu').css({ height: '' });
            $(this).css({ background: '' }).attr('value', '更多');
            flag = 1;
        }
    });
    
	$('.more li').click(function(){
		$('.cont-sub-menu').css({ top:  GetOffset(this, false)-878+'px' });
    	$('.cont-sub-menu').fadeIn(200);
    });
	$('.cont-sub-menu').hover(function(){
		
    }, function(){
    	$('.cont-sub-menu').hide();
    });
	$('.cont-fh-top').hover(function(){
		$('.cont-sub-menu').hide();
    }, function(){
    });
	
	
	$('.cont-fh-top a').click(function(){
        $(this).addClass('selected').siblings().removeClass('selected');
		$('.cell-trans').hide();
		
		var obj = $(this).attr('data-rel');
		$('.'+obj).show();
		if (obj=='sec-cell') {
			$('.bottom-btn-grp').hide(); $('.btn-grp2').show();
		} else {
			$('.bottom-btn-grp').hide(); $('.btn-grp1').show();
		}
    });

	$(".btn-grp1 > div, .btn-grp2 > div").click(function(){
		alert($(this).text());
	});
	
	$('.menu-cell-box a').click(function(){
		var rel = $(this).attr('data-rel');
		if (rel==1) {
			$(this).removeClass('selected').attr('data-rel', '');
		} else {
			$(this).addClass('selected').attr('data-rel', 1);
		}
        $(this).parent().siblings().find('a').removeClass('selected').attr('data-rel', '');
    });
	
	$('.edit-addr-btn').click(function(){
		var rel = $(this).data('rel');
		
		if (rel==1) {
			$(this).text('编辑').data('rel', '');
			$('.edit-addr-box').attr('readonly', true).css({ color: '#555' });
		} else {
			$(this).text('确认').data('rel', 1);
			$('.edit-addr-box').removeAttr('readonly').css({ color: '#000' }).focus();
		}
    });
	
	//sort button
	$('.sort-main .sort-main-cell').click(function(){
		if ($(this).hasClass('sort-up')) {
			$(this).removeClass('sort-up').addClass('sort-down');
		} else {
			$(this).removeClass('sort-down').addClass('sort-up');
		}
    });
	
})();

//数量增加的效果
(function(){
	$('.amount-btn-plus').click(function () {
		var amount = $(this).parent().find('input').val();
		amount = parseInt(amount);
		if(amount == 1)
			$(this).parent().find('.amount-btn-minus').removeClass('custom-gray-color');
		$(this).parent().find('input').val(amount+1);
		
	});
	$('.amount-btn-minus').click(function () {
		var amount = $(this).parent().find('input').val();
		amount = parseInt(amount);
		if(amount < 3)
		{
			if(amount == 2 )
			{
				$(this).parent().find('input').val(amount-1);
				$(this).addClass('custom-gray-color');
			}
		}
		else 
			$(this).parent().find('input').val(amount-1);
			
	});
})();

//好评, 中评, 差评
function drawEvalBar(obj, val1, val2, val3) {
	var total = val1 + val2 + val3;
	
	temp = Math.round(val1 / total * 100);
	$('#'+obj+' .eval-box1').attr('data-rel', temp).css({width:temp+'%'});
	temp = Math.round(val2 / total * 100);
	$('#'+obj+' .eval-box2').attr('data-rel', temp).css({width:temp+'%'});
	temp = Math.round(val3 / total * 100);
	$('#'+obj+' .eval-box3').attr('data-rel', temp).css({width:temp+'%'});
}

//好评度
function showEvalRate(kind, obj) {
	var temp = "好评度";
	if (kind==2) {
		temp = "中评度";
	} else if (kind==3) {
		temp = "差评度";
	}
	$("#eval-rate-title").text(temp);
	
	$("#eval-rate").text($(obj).find('.eval-red').data('rel')+'%');
}

//页面跳转
function jumpPage(page){
	alert(page);
}

(function() {
	//二维码框+提示框
	$(".qr-show-btn").click( function() {
		$(".qr-ele-box").show();
	});

	$('.qr-del-btn').click(function(){
		//$(this).parent().remove();
		$(this).parent().hide();
    });
	
	$('.notice-del-btn').click(function(){
		$(this).parent().parent().remove();
    });
	
})();


