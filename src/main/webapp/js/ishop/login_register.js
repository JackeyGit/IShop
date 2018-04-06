
$(document).ready(function(){
	//登录注册页面操作
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
		
		if ( $(this).hasClass("main-theme-bg") )
		{
			$(this).removeClass("main-theme-bg").removeClass("text-white-color").addClass("btn-retry");
			setTimeout(updateTimer, 0);
		}
    });
	$('#code').keydown(function(){
		$(this).css({
				border: '1px solid #f0f0f0',
				color: 'black',
            });
    });
	$('.tab-common').click(function(){
		$('.tab-common').removeClass("selected main-theme-color");
		$(this).addClass("selected main-theme-color");
    });
	
	var time_counter = 60;
	var timer = null;
	
	function updateTimer(){
		if (time_counter == 0 )
		{
			time_counter = 60;
			$('#check_code').text("获取验证码").removeClass("btn-retry").addClass("main-theme-bg").addClass("text-white-color");
			clearTimeout(timer);
			return;
		}
		$('#check_code').text(time_counter + "s重新获取")
		timer = setTimeout(updateTimer, 1000);
		time_counter--;
	}
});
