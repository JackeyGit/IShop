//�˵������ʾЧ��
$(document).ready(function(){
	$("#getAllUser").hide();
	$("#getVideoColls").hide();
	$("#CreateVideoColl").hide();

});
$(document).ready(function(){
  	
   		$("#menu").click(function(){ 					
   		$("#showMenu").toggle(100);
   		});			
 });





//�û����Ҳ���ʾ
function getAllUser(){
	
	$("#getAllUser").toggle(100);
	
	$("#getVideoColls").hide();
	$("#CreateVideoColl").hide();
	
}
function getVideoColls(){
	$("#getVideoColls").toggle(100);
	$("#CreateVideoColl").hide();
	$("#getAllUser").hide();
}
function CreateVideoColl(){
	
	$("#CreateVideoColl").toggle(100);
	$("#queryAllUser").hide();
	$("#getVideoColls").hide();
}
function SystemSetUp(){
	//alert("SystemSetUp");	
}
