	var remainTimes = 10000;

	$(document).ready(function () {
		setInterval ("showRemainTime()", 1000);
	});
	
	function showRemainTime(){
		if(remainTimes<0) remainTimes =0 ;
		remainTimes--;
		var remainTime = getRemainTime(remainTimes);
		$(".rem_day").text(remainTime.day>=10 ? remainTime.day:"0"+remainTime.day );
		$(".rem_hour").text(remainTime.hour>=10? remainTime.hour:"0"+remainTime.hour);
		$(".rem_minute").text(remainTime.minute>=10?remainTime.minute:"0"+remainTime.minute );
		$(".rem_second").text(remainTime.second>=10?remainTime.second:"0"+remainTime.second);
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
