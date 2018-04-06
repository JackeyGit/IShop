
$(document).ready(function(){
	//确定订单页面操作
	$(".btn-close").click(function(){
		closeDialog()
	});

	$(".btn-confirm").click(function(){
		closeDialog()
	});

	$(".btn-confirm2").click(function(){
		closeDialog()
	});
	
	function closeDialog() {
		$(".modal-dialog-container").fadeOut(200);
	}
	
	$(".area-left .area-cont, .area-right .area-cont").click(function(){
		$(this).parent().find('input').click();
	});
	
	
	
	$('#suggest-order-btn').click(function() {
		$('.msg-dlg-1').fadeIn(200);
	});
	$('#confirm-pay-btn').click(function() {
		$('.msg-dlg-1').fadeOut(200);
	});
	$('.address-cont li a.btn-edit').click(function() {
		showAddrEditDlg(true);
	});
	$('#upload-verify-btn').click(function() {
		$('.msg-dlg-3').fadeIn(200);
	});
	
	$('.verity-edit-btn').click(function() {
		var rel = $(this).attr('data-rel');
		if (rel==1) {
			$('.jifen-input-custom3').attr('readonly', true).css({background:'#f5f5f5'});
			$(this).attr('data-rel', '');
		} else {
			$('.jifen-input-custom3').removeAttr('readonly').css({background:'#fff'}).focus();
			$(this).attr('data-rel', 1);
		}
	});
	
	$('#busket-cost-all').change(function(e) {
        if ($(this).context.checked) {
			$('#busket-cost').val($('#busket-able-cost').text());
		} else {
			$('#busket-cost').val('');
		}
    });
	

});

function showAddrEditDlg(flag) {
	if (flag) {
		$('#edit-addr-title').text('修改收货地址');
	} else {
		$('#edit-addr-title').text('新增收货地址');
	}
	$('.msg-dlg-2').fadeIn(200);
}

