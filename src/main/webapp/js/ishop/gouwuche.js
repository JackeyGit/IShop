// JavaScript Document

(function() {
	//	帮助中心页面-左侧菜单操作
    $('.cell-title').click(function() {
		var pat = $(this).parent();
		var mark = pat.attr("data-rel");
		
		if (mark=="1") return;
		$(this).next().slideDown(200);
		pat.attr("data-rel", 1).addClass("cell-open").siblings().removeClass("cell-open").attr("data-rel", "").find(".cell-body").hide();
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
        imgSize = 900,         //图片尺寸 宽度
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

    $('.err-slide-title a').click(function(){
		$('.err-slide-title a').removeClass("main-border-bottom3");
		$(this).addClass("main-border-bottom3");
    });
	
    $('.check-all-gouwuche').click(function(){
		bChecked = $(this).context.checked;
		$cont_table = $(this).parent().parent().parent();
		$detail_rows = $cont_table.find(".detail-row");
		if( $(this).context.checked )	$detail_rows.css( { "background": " #f8f8f8" });
		else							$detail_rows.css( { "background": " #fff" });
		
		$cont_table.find('.commodity-row :checkbox').each(
			function(index, element) { 
				element.checked = bChecked; 
			}
		);
		$('.check-all-gouwuche').each(function(index, element) {
			element.checked = bChecked; 
		});
		checkSum();
    });
	
    $('.selected-del').click(function(){
		$checkbox = $('.detail-row :checkbox');

		$checkbox.each(function(index, element) {
			if ( element.checked )
				$(this).parent().parent().remove();
		});
		
		$commodity_row = $('.commodity-row');
		$commodity_row.each(function(index, element) {
			if ( $(this).find(".detail-row").length == 0 )
				$(this).remove();
		});
		
		checkSum();		
	});
	
    $('.check-group').click(function(){
		bChecked = $(this).context.checked;
		$commodity_row = $(this).parent().parent();
		
		if( bChecked )	$commodity_row.find(".detail-row").css( { "background": " #f8f8f8" });
		else
		{
			$commodity_row.find(".detail-row").css( { "background": " #fff" });
			$('.check-all-gouwuche').each(function(index, element) {
				element.checked = false; 
			});
		}

		$commodity_row.find('.detail-row :checkbox').each(
			function(index, element) { 
				element.checked = bChecked; 
			}
		);
			
		checkSum();
    });

    $('.detail-row :checkbox').click(function(){
		if( $(this).context.checked )	$(this).parent().parent().css( { "background": " #f8f8f8" });
		else
		{
			$(this).parent().parent().css( { "background": " #fff" });
			$(this).parent().parent().parent().find(".commodity-header :checkbox").get(0).checked = false;
			$('.check-all-gouwuche').each(function(index, element) {
				element.checked = false; 
			});
		}
		checkSum();
    });
	
	$(".amount-btn-minus, .amount-btn-plus").click(function(){
		var amount = $(this).parent().find(":text").val();
		$detail_row = $(this).parent().parent().parent();
		var cost = parseFloat( $detail_row.find(".cost").text() );
		$detail_row.find(".price").text( cost * amount );
		checkSum();
    });
	
	function checkSum() {
		$detail_row = $(".detail-row :checked").parent().parent();
		var total_account = 0;
		var total_price = 0;
		
		$detail_row.find(".amount-control :text").each(function(index, element) {
			total_account += parseInt( $(this).val() );
		});
		$(".total-count").text(total_account);
		
		$detail_row.find(".price").each(function(index, element) {
			total_price += parseFloat( $(this).text() );
		});
		$(".total-price").text(total_price);
		
		if ( total_account > 0 )	$(".settle-up ").addClass("main-theme-bg");
		else						$(".settle-up ").removeClass("main-theme-bg");
	}
	
	
	//评价-删除
	$('.eval-img-mask img').click(function(){
		$(this).parent().parent().remove();
    });
	

})();