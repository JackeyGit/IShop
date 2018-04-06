<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width" />
<title>BootStrap Table 用户信息</title>

<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/bootstrap-table.min.css" rel="stylesheet" />
<link href="css/bootstrap-dialog.min.css" rel="stylesheet" />
<script src="js/bootstrap-dialog.min.js"></script>
<script src="js/jquery-3.2.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/bootstrap-table.min.js"></script>
<script src="js/locale/bootstrap-table-zh-CN.min.js"></script>


<!-- 4、页面Js文件的引用-->
</head>
<body>
	<div class="panel-body" style="padding-bottom:0px;">
		<div class="panel panel-default">
			<div class="panel-heading">查询条件</div>
			<div class="panel-body">
				<form id="formSearch" class="form-horizontal">
					<div class="form-group" style="margin-top:15px">
						<label class="control-label col-sm-1" for="search_userName">名称</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="search_userName">
						</div>
						
						<label class="control-label col-sm-1" for="search_userPhone">手机</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="search_userPhone">
						</div>
						
						<label class="control-label col-sm-1" for="search_tureName">姓名</label>
						<div class="col-sm-2">
							<input type="text" class="form-control" id="search_userName">
						</div>
						
						<div class="col-sm-2" style="text-align:left;">
							<button type="button" style="margin-left:50px" id="btn_query"
								class="btn btn-primary">查询</button>
						</div>
					</div>
				</form>
			</div>
		</div>

		<div id="toolbar" class="btn-group">
			<button id="btn_add" type="button" class="btn btn-default" >
				<span class="glyphicon glyphicon-plus" aria-hidden="true"></span>新增
			</button>
			<button id="btn_edit" type="button" class="btn btn-default">
				<span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>修改
			</button>
			<button id="btn_delete" type="button" class="btn btn-default">
				<span class="glyphicon glyphicon-remove" aria-hidden="true"></span>删除
			</button>
		</div>
		<table id="tb_users">
		</table>
	</div>
	<script>    
    $(function () {

    //1.初始化Table
    var oTable = new TableInit();
    oTable.Init();

    //2.初始化Button的点击事件
    var oButtonInit = new ButtonInit();
    oButtonInit.Init();

});


var TableInit = function () {
    var oTableInit = new Object();
    //初始化Table
    oTableInit.Init = function () {
        $('#tb_users').bootstrapTable({
            url: '${pageContext.request.contextPath}/findAllUser.action?time='+new Date().getTime(),         //请求后台的URL（*）
             method: 'post',                      //请求方式（*）
            contentType: "application/x-www-form-urlencoded", 
            toolbar: '#toolbar',                //工具按钮用哪个容器
            striped: true,                      //是否显示行间隔色
            cache: false,                       //是否使用缓存，默认为true，所以一般情况下需要设置一下这个属性（*）
            pagination: true,                   //是否显示分页（*）
            sortable: false,                     //是否启用排序
            sortOrder: "asc",                   //排序方式
            queryParams: oTableInit.queryParams,//传递参数（*）
            sidePagination: "server",           //分页方式：client客户端分页，server服务端分页（*）
            pageNumber:1,                       //初始化加载第一页，默认第一页
            pageSize: 15,                       //每页的记录行数（*）
            pageList: [15, 30, 45, 60],        //可供选择的每页的行数（*）
            search: true,                       //是否显示表格搜索，此搜索是客户端搜索，不会进服务端，所以，个人感觉意义不大
            strictSearch: true,
            showColumns: true,                  //是否显示所有的列
            showRefresh: true,                  //是否显示刷新按钮
            minimumCountColumns: 2,             //最少允许的列数
            clickToSelect: true,                //是否启用点击选中行
            /* height: 500,     */                    //行高，如果没有设置height属性，表格自动根据记录条数觉得表格高度
            uniqueId: "userId",                     //每一行的唯一标识，一般为主键列
            showToggle:true,                    //是否显示详细视图和列表视图的切换按钮
            cardView: false,                    //是否显示详细视图
            detailView: false,                   //是否显示父子表
            columns: [{
                checkbox: true
            }, {
                field: 'userName',
                title: '用户名称'
            }, {
                field: 'trueName',
                title: '真实姓名'
            }, {
                field: 'userScore',
                title: '积分'
            }, {
                field: 'userTotalScore',
                title: '全部积分'
            }, {
                field: 'userMoney',
                title: '可用余额'
            }, {
                field: 'lockMoney',
                title: '冻结余额'
            }, {
                field: 'userPhoto',
                title: '头像'
            }, {
                field: 'userQQ',
                title: 'QQ'
            }, {
                field: 'userPhone',
                title: '手机号码'
            }, {
                field: 'userEmail',
                title: '邮箱'
            }, {
                field: 'lastIP',
                title: '最后登录ip'
            },  {
                field: 'userType',
                title: '用户组'
            }, {
                field: 'userSex',
                title: '性别'
            }, {
                field: 'userFrom',
                title: '来源'
            }, {
                field: 'userStatus',
                title: '状态',
                formatter: function (value, row, index) {//自定义显示，这三个参数分别是：value该行的属性，row该行记录，index该行下标  
                         return row.userStatus == 1 ? "正常" : row.userStatus == 0 ? "锁定" : "拉黑" }
            }, {
                field: 'brithday',
                title: '生日',
                formatter: function (value, row, index){
                return   changeDateFormat(value,1)}
            }, {
                field: 'lastTime',
                title: '最后登录时间 ',
                formatter: function (value, row, index){
                    return   changeDateFormat(value,0)}
            }, {
                field: 'createTime',
                title: '注册时间',
                formatter: function (value, row, index){
                    return   changeDateFormat(value,0)}
            },  
            {  
                title: '操作',  
                field: 'userId',  
                align: 'center',  
                formatter: function (value, row, index) {//自定义显示可以写标签哦~  
                    return '<a href="#" mce_href="#" onclick="edit(\'' + row.userId + '\')">操作</a> ';  
                }  
            }
            ]
        });
    };

    //得到查询的参数
     oTableInit.queryParams = function (params) {
        var temp = {                                  //这里的键的名字和控制器的变量名必须一直，这边改动，控制器也需要改成一样的
        	pageSize: params.limit,   //页面大小
        	pageNumber: params.offset,  //页码 */
            /* userName: $("#search_userName").val(),
            userPhone: $("#search_userPhone").val() */
        };
        return temp;
    }; 
    return oTableInit;
};


var ButtonInit = function () {
    var oInit = new Object();
    var postdata = {};

    oInit.Init = function () {
        //初始化页面上面的按钮事件
    };

    return oInit;
};
</script>

<script>
$('#btn_add').click(function(){
  BootstrapDialog.show({
  			title:"增加用户",
            message: function (dialog) {
                var $message = $('<div></div>');
                var pageToLoad = dialog.getData('pageToLoad');
                $message.load(pageToLoad);
                return $message;
            },
            size: BootstrapDialog.SIZE_WIDE,
            cssClass: "fade",
            closeable: true,
            autoClose:true,
            data: {
                'pageToLoad': 'AddUser.jsp'
            },
             buttons: [{
                label: '修改',
                icon: 'glyphicon glyphicon-ok',
                cssClass:'btn btn-success',
                action: function(dialog) {
                	var name= $('#name').val();
        			var pwd= $('#pwd').val();
        			var phone= $('#phone').val();
        			var email= $('#email').val();
	        		url='${pageContext.request.contextPath}/register.action';
        			sendData={
        			"userName":name,
        			"loginPwd":pwd,
        			"userEmail":email,
        			"userPhone":phone
        			}
 					$.post(url,sendData,function(){
 					$("#tb_users").bootstrapTable("refresh",'${pageContext.request.contextPath}/findAllUser.action?time='+new Date().getTime());
			  			  dialog.close();
					});               
                }
            }, {
                label: '取消',
                icon: 'glyphicon glyphicon-off',
                cssClass:'btn btn-info',
                action: function(dialog) {
                    dialog.close();
                }
            }],
          /*   onPostSuccess: function(dialog) {
               $("#table").bootstrapTable("refresh");  //请求成功刷新表格，加载数据
          } */
        });
        })
    ;
</script>
<script>
$('#btn_edit').click(function(){
		var userid 
		userid = $("#tb_users tbody > .selected").attr('data-uniqueid');
		if(userid==null||userid==''||userid==undefined){
				BootstrapDialog.show({
		        type : BootstrapDialog.TYPE_DANGER,
		        title : '错误 ',
		        message : "请选择需要修改的用户",
		        size : BootstrapDialog.SIZE_SMALL,//size为小，默认的对话框比较宽
		        buttons : [ {// 设置关闭按钮
		            label : '关闭',
		            action : function(dialogItself) {
		                dialogItself.close();
		            }
		        } ],
		       
		    });
		}else{
			 BootstrapDialog.show({
  			title:"修改用户信息",
            message: function (dialog) {
                var $message = $('<div></div>');
                $message.load('${pageContext.request.contextPath}/findIDUser.action?userId='+userid);
                return $message;
            },
            size: BootstrapDialog.SIZE_WIDE,
            cssClass: "fade",
            closeable: true,
            autoClose:true,
             buttons: [{
                label: '保存',
                icon: 'glyphicon glyphicon-ok',
                cssClass:'btn btn-success',
                action: function(dialog) {
                	var userID= $('#userID').val();
                	var username= $('#username').val();
        			var truename= $('#truename').val();
        			var userpwd= $('#userpwd').val();
        			var userphone= $('#userphone').val();
                	var useremmail= $('#useremmail').val();
        			var userscore= $('#userscore').val();
        			var usermoney= $('#usermoney').val();
        			var userstatus= $('#userstatus').val();
                	data={
                			"userId":userID,
                			"userName":username,
                			"trueName":truename,
                			"loginPwd":userpwd,
                			"userEmail":useremmail,
                			"userPhone":userphone,	
                			"userScore":userscore,
                			"userMoney":usermoney,
                			"userStatus":userstatus	
                	}
                	/* var data = $("#editUserForm").serialize(); */
                	console.log(data);
	        		url="${pageContext.request.contextPath}/userUpdateById.action";
	        		console.log(url);
 					$.post(url,data,function(){
 							  $("#tb_users").bootstrapTable("refresh",'${pageContext.request.contextPath}/findAllUser.action?time='+new Date().getTime());
			  			  dialog.close();
					});               
                }
            }, {
                label: '取消',
                icon: 'glyphicon glyphicon-off',
                cssClass:'btn btn-info',
                action: function(dialog) {
                    dialog.close();
                } 
            }] 
          /*   onPostSuccess: function(dialog) {
               $("#table").bootstrapTable("refresh");  //请求成功刷新表格，加载数据
          } */
        }); 
		
		}
        })
    ;
            
          

</script>
<script>
$('#btn_delete').click(function(){
	
	var userid = $("#tb_users tbody > .selected").attr('data-uniqueid');
	if(userid==null||userid==''||userid==undefined){
			BootstrapDialog.show({
	        type : BootstrapDialog.TYPE_DANGER,
	        title : '错误 ',
	        message : "请选择需要删除的用户",
	        size : BootstrapDialog.SIZE_SMALL,//size为小，默认的对话框比较宽
	        buttons : [ {// 设置关闭按钮
	            label : '关闭',
	            action : function(dialogItself) {
	                dialogItself.close();
	            }
	        } ],
	       
	    });
	}else{
    BootstrapDialog.confirm({
        title : '确认',
        message : "是否删除所选用户",
        type : BootstrapDialog.TYPE_WARNING, // <-- Default value is
        // BootstrapDialog.TYPE_PRIMARY
        closable : true, // <-- Default value is false，点击对话框以外的页面内容可关闭
        draggable : true, // <-- Default value is false，可拖拽
        btnCancelLabel : '取消', // <-- Default value is 'Cancel',
        btnOKLabel : '确定', // <-- Default value is 'OK',
        btnOKClass : 'btn-warning', // <-- If you didn't specify it, dialog type
        size : BootstrapDialog.SIZE_SMALL,
        // 对话框关闭的时候执行方法
        onhide :function funcclose(){
        	$("#tb_users").bootstrapTable("refresh",'${pageContext.request.contextPath}/findAllUser.action?time='+new Date().getTime());
        },
        callback : function(result){
            // 点击确定按钮时，result为true
            if (result) {
            	var userid = new Array();
      			 $("#tb_users tbody > .selected").each(function(i){
      			 	userid[i]=($(this).attr('data-uniqueid'));
      			 });
      			 var url='${pageContext.request.contextPath}/deleteManyUser.action?time='+new Date().getTime();
      			 var sendData={
      						 ids:userid
      						 }
      			 $.post(url,sendData,function(){
      			 });
      			$("#tb_users").bootstrapTable("refresh",'${pageContext.request.contextPath}/findAllUser.action?time='+new Date().getTime());
            }
            }
    });
	}
});       
          

</script>




<script>
function changeDateFormat(cellval,tip) {  
    if (cellval != null) {  
        var date = new Date(parseInt(cellval));  
        var month = date.getMonth() + 1 < 10 ? "0" + (date.getMonth() + 1) : date.getMonth() + 1;
        var currentDate = date.getDate() < 10 ? "0" + date.getDate() : date.getDate();
        
        var hours = date.getHours() < 10 ? "0" + date.getHours() : date.getHours();
        var minutes = date.getMinutes() < 10 ? "0" + date.getMinutes() : date.getMinutes();
        var seconds = date.getSeconds() < 10 ? "0" + date.getSeconds() : date.getSeconds();
        if (tip==1){
        	return date.getFullYear() + "-" + month + "-" + currentDate;}
         else{
        return date.getFullYear() + "-" + month + "-" + currentDate + " " + hours + ":" + minutes + ":" + seconds;
        }
    }  
}  
</script>



</body>
</html>