window.onload=function(){
 var wrap=document.getElementById('box');
 var pic=document.getElementById('list').getElementsByTagName("li");
 var list=document.getElementById('list').getElementsByTagName('img');

  	index=0,
  	timer=null;

  // 定义并调用自动播放函数
 timer = setInterval(autoPlay, 2500);

  // 鼠标划过整个容器时停止自动播放
 wrap.onmouseover = function () {
  clearInterval(timer);
 }

  // 鼠标离开整个容器时继续播放至下一张
 wrap.onmouseout = function () {
  timer = setInterval(autoPlay, 2500);
 }

 function autoPlay () {
  if (++index >= pic.length)
  
  index = 0;
  
  changePic(index);
 }

  // 定义图片切换函数
 function changePic (curIndex) {
  for (var i = 0; i < pic.length; i++) 
		  {
		  pic[i].style.display = "none";
		  list[i].className = "";
		  }
		  pic[curIndex].style.display = "block";
		  
 }

 };