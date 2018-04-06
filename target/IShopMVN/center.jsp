<%@ page language="java" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8" />
		<title>首页</title>
		<link rel="stylesheet" href="css/common.css" />
		<script type="text/javascript" src="js/picPlay.js" ></script>
	</head>
	<body>
		<div class="topbar">
                <div class="sub-1">欢迎来到云课堂！</div>
                <div class="sub-2">
                    <ul class="nav-x">
                    
                     <!--   登陆之后显示，判断session是否为空  start-->
                   <c:if test="${empty sessionScope.user.username}">
                   			<li class="item">
	                    	<a class="normal" href="${pageContext.request.contextPath}/LogReg.jsp">登录</a>
	                    	<span>/</span>
	                    	<a class="normal" href="${pageContext.request.contextPath}/LogReg.jsp">注册</a>
                    		</li>
                   			<li class="line"></li>
                       		<li class="item"><a href="">APP下载</a></li>
                    
                   
                   </c:if>
                   <c:if test="${!empty sessionScope.user.username}">
                   		<li class="item">
	                    	<span style="font-family: 'SimHei';color:#777777;font-weight: bold;">欢迎您：${sessionScope.user.username}</span>
	                    	<a class="normal" href="${pageContext.request.contextPath}/UserCenter.action">个人中心</a>
                    		</li>
                   			<li class="line"></li>
                       		<li class="item"><a href="${pageContext.request.contextPath}/logout.action">退出</a></li>
                   
				</c:if> 	 
                    	 
                   <!--   登陆之后显示，判断session是否为空 end-->
                        
                </ul>
                </div>
           
        </div>
	
	
<!-- ----------------------------------------------------	-->
	<div class="midbar">
            <div class="sub-1">
            	<img src="images/logo.png"/>
            </div>
            
            <div class="sub-2">
                <form id="search-form" class="search-form" action="/shop/index.php?con=" method="get">
                    <input class="search-keyword" id="search-keyword" name="keyword" type="text"  placeholder="请输入关键字">
                    <button class="btn-search ">搜索</button>
                </form>
            </div>
            
        </div>
	<div class="nav">
				
             
              <div class="menu" >
		               <ul class="top">
		                   <li class="sub"><a href="#">首页</a></li>
		                   <li class="sub"><a href="#">直播</a></li>
		                   <li class="sub"><a href="#">认证与就业</a></li>
		                   <li class="sub"><a href="#">班级圈</a></li>
		                   <li class="sub"><a href="#">新闻资讯</a></li>
		                   <li class="sub"><a href="#">合作推广</a></li>
		               </ul>
                </div>
             
             
      <div class="main">

			<div class="warp">

				<h2>  <a href="#"> 课程分类  </a></h2>

				<ul>
					<li>
						<div class="tx">
							<a> VR/AR 虚拟/增强现实 <strong>&nbsp;&nbsp;&gt;</strong></a>
						</div>

						<div class="pop">
							<div class="act">

								<h4>UI界面及VR全景界面设计</h4>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">VR虚拟现实与UI全栈设计</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">设计软件基础</a>&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/AllVideoColls.action">GUI设计</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">移动端设计</a>&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/AllVideoColls.action">Web端设计</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">游戏UI设计</a>&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/AllVideoColls.action">用户体验</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">前端开发</a></p>
								<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
								<h4>VR/AR 虚拟现实全景动画师</h4>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">VR虚拟现实动画公开课</a></p>
								<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
								<h4>VR/AR虚拟现实全景开发工程师</h4>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">VR/AR虚拟现实全景开发工程师</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">VR虚拟现实软件开发公开课</a></p>
								<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
								<h4>VR全景影视</h4>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">艺术创作与生活</a></p>

							</div>
						</div>
					</li>

					<li>

						<div class="tx">
							<a> 移动开发 嵌入式 <strong>&nbsp;&nbsp;&gt;</strong></a>
						</div>

						<div class="pop">
							<div class="act">
								<h4 >iOS移动开发 </h4>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">iOS9项目实战开发工程师</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">iOS新技术分享</a>&nbsp;&nbsp;<a href="${pageContext.request.contextPath}/AllVideoColls.action">C语言</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">ObjectiveC语言&nbsp;&nbsp;Swift语言</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">iOS视野扩展&nbsp;&nbsp;UI控件</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">iOS网络数据库&nbsp;&nbsp;iOS项目实战</a></p>
							<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
								<h4>Android移动开发</h4>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Android6.0项目实战开发工程师</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Android之Java基础</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Android开发入门</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Android常用控件</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Android四大组件</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Android开发之自定义View</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Android开发之网络编程</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">AndroidStudio项目</a></p>
								

							</div>
						</div>

					</li>
					<li>

						<div class="tx">
							<a> Linux管理 运维 云技术 <strong>&nbsp;&nbsp;&gt;</strong></a>
						</div>

						<div class="pop">
							<div class="act">
							<h4>LINUX/UNIX</h4>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">红帽RHCE认证</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">红帽RHCA认证</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">RHCE基础课程</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">RHCA基础课程</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">红帽云计算课程</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Shell脚本编程</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Linux项目课程</a></p>
					<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
							<h4>大数据</h4>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Hadoop</a></p>
					<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
							<h4>云计算</h4>
							
							
							</div>
						</div>

					</li>
					<li>

						<div class="tx">
							<a>数据库Oracle MySQL<strong>&nbsp;&nbsp;&gt;</strong></a>
						</div>

						<div class="pop">
							<div class="act">
							
								<h4>Oracle</h4>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">OCP认证Oracle OCM认证</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Oracle安装部署</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">SQL语句 Oracle体系结构</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">RMAN（Oracle备份恢复）</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Oracle优化RACDG</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Oracle项目实战</a></p>
							<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />	
								<h4>MySQL</h4>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">MySQLDBA集群实战工程师</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">MySQL安装SQL基础</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">MySQL备份恢复 MySQL优化 </a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Replication MySQL高可用</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">MySQL进阶实战</a></p>
							<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
								<h4>NoSQL</h4>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">RedisMongoDB

							</div>
						</div>

					</li>
					<li>
						<div class="tx">
							<a> 网络 Windows IT管理 <strong>&nbsp;&nbsp;&gt;</strong></a>
						</div>

						<div class="pop">
							<div class="act">
								<h4>Cisco/思科</h4>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">思科CCNA认证</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">思科CCNP认证</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">网络模拟工具</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">思科网络基础</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">网络高级应用</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">网络项目实战</a></p>
								<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
								<h4>华为</h4>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">华为HCNA认证</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">华为HCNP认证</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">华为网络基础</a></p>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">华为路由协议</a></p>
								<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
								<h4>微软</h4>
								<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">MCSE</a></p>
								<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
								

							</div>
						</div>
					</li>

					<li>
						<div class="tx">
							<a>网站 云开发 Java PHP<strong>&nbsp;&nbsp;&gt;</strong></a>
						</div>

						<div class="pop">
							<div class="act">
							<h4>PHP</h4>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">PHP开发工程师(H5/PC/移动)</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">PHP基础案例</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">PHP高级进阶</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">PHP视野扩展</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">PHP技术辅导课程</a></p>
							<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
								
							<h4>Java</h4>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Java大数据</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">云计算开发课程</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Java基础语法</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">JavaEE进阶</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Java项目实战OCJP认证</a></p>
							<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
								
							<h4>WEB前端</h4>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">PHP开发工程师(H5/PC/移动)</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">Web进阶</a></p>


							</div>
						</div>
					</li>

					<li>
						<div class="tx">
							<a> 应用软件开发<strong>&nbsp;&nbsp;&gt;</strong></a>
						</div>

						<div class="pop">
							<div class="act">
		<h4>C语言</h4>
		<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
		<h4>POSIX</h4>
		<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
		<h4>C++语言</h4>
		<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
		<h4>POSIX</h4>
		<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
		<h4>C${pageContext.request.contextPath}/AllVideoColls.action</h4>
		<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />

							</div>
						</div>
					</li>

					<li>
						<div class="tx">
							<a> SEO/SEM 新媒体/电商<strong>&nbsp;&nbsp;&gt;</strong></a>
						</div>

						<div class="pop">
							<div class="act">
								

							<h4>新媒体营销/运营</h4>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">微商城建设 论坛营销</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">微博营销 微信营销</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">软文营销 </a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">新媒体社群营销</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">App推广 打造网红</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">营销事件炒作</a></p>
							<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
							<h4>搜索引擎营销</h4>
							
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">SEO/UEO优化师</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">竞价推广营销型网站</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">建设数据分析师</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">百度认证</a></p>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">移动网站</a></p>
							<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
							<h4>电商运营</h4>
							<p><a href="${pageContext.request.contextPath}/AllVideoColls.action">移动电子商务及全球化</a></p>
							





							</div>
						</div>
					</li>

					<li>
						<div class="tx">
							<a>会计 人力资源 Office<strong>&nbsp;&nbsp;&gt;</strong></a>
						</div>

						<div class="pop">
							<div class="act">
								

							<h4>会计</h4>
							<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
							<h4>U8</h4>
							<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
							<h4>人力资源管理师</h4>
							<hr style="border: thin dotted ${pageContext.request.contextPath}/AllVideoColls.action999999;width: 190px;margin-top: 10px; margin-bottom: 10px;" />
							<h4>Office</h4>



							</div>
						</div>
					</li>

				</ul>
			</div>
		      </div>
			<div class="box" id='box'>
				<div id="list">
					 <ul >
					  <li><img src="images/1.jpg" width="100%" height="500px" alt=""/></li>
					  <li><img src="images/2.jpg" width="100%" height="500px" alt=""/></li>
					  <li><img src="images/3.jpg" width="100%" height="500px" alt=""/></li>
					  <li><img src="images/4.jpg" width="100%" height="500px" alt=""/></li>
					
					 </ul>
				</div>
			</div>  
             
   
		
		
	<!--
    	作者：huangyiit@163.com
    	时间：2017-01-07
    	描述：course-list
    -->	
<div class="es-row-wrap">
<div class="all-module">
<div class="module-title"><h2>推荐课程</h2><a href="${pageContext.request.contextPath}/AllVideoColls.action">更多</a></div>
<ul class="course-module-list">
<li>
	<div class="course-list-con">
		<div class="course-pic">
			<a href="#">
				<img class="course-picture"  src="images/list.jpg" >
			</a>
			<div class="grid-mask">
				<span class="reminder-live-hd">共35课时</span>
			</div>
		</div>
		
		<div class="course-text">
			<h4><a href="#"> VR/AR虚拟现实入门精选课【持续更新】</a></h4>
		</div>
	</div>
</li>


<li>
	<div class="course-list-con">
		<div class="course-pic">
			<a href="#">
				<img class="course-picture"  src="images/list.jpg" >
			</a>
			<div class="grid-mask">
				<span class="reminder-live-hd">共35课时</span>
			</div>
		</div>
		
		<div class="course-text">
			<h4><a href="#"> VR/AR虚拟现实入门精选课【持续更新】</a></h4>
		</div>
	</div>
</li>




<li>
	<div class="course-list-con">
		<div class="course-pic">
			<a href="#">
				<img class="course-picture"  src="images/list.jpg" >
			</a>
			<div class="grid-mask">
				<span class="reminder-live-hd">共35课时</span>
			</div>
		</div>
		
		<div class="course-text">
			<h4><a href="#"> VR/AR虚拟现实入门精选课【持续更新】</a></h4>
		</div>
	</div>
</li>
<li>
	<div class="course-list-con">
		<div class="course-pic">
			<a href="#">
				<img class="course-picture"  src="images/list.jpg" >
			</a>
			<div class="grid-mask">
				<span class="reminder-live-hd">共35课时</span>
			</div>
		</div>
		
		<div class="course-text">
			<h4><a href="#"> VR/AR虚拟现实入门精选课【持续更新】</a></h4>
		</div>
	</div>
</li>
<li>
	<div class="course-list-con">
		<div class="course-pic">
			<a href="#">
				<img class="course-picture"  src="images/list.jpg" >
			</a>
			<div class="grid-mask">
				<span class="reminder-live-hd">共35课时</span>
			</div>
		</div>
		
		<div class="course-text">
			<h4><a href="#"> VR/AR虚拟现实入门精选课【持续更新】</a></h4>
		</div>
	</div>
</li>
<li>
	<div class="course-list-con">
		<div class="course-pic">
			<a href="#">
				<img class="course-picture"  src="images/list.jpg" >
			</a>
			<div class="grid-mask">
				<span class="reminder-live-hd">共35课时</span>
			</div>
		</div>
		
		<div class="course-text">
			<h4><a href="#"> VR/AR虚拟现实入门精选课【持续更新】</a></h4>
		</div>
	</div>
</li>
<li>
	<div class="course-list-con">
		<div class="course-pic">
			<a href="#">
				<img class="course-picture"  src="images/list.jpg" >
			</a>
			<div class="grid-mask">
				<span class="reminder-live-hd">共35课时</span>
			</div>
		</div>
		
		<div class="course-text">
			<h4><a href="#"> VR/AR虚拟现实入门精选课【持续更新】</a></h4>
		</div>
	</div>
</li>
<li>
	<div class="course-list-con">
		<div class="course-pic">
			<a href="#">
				<img class="course-picture"  src="images/list.jpg" >
			</a>
			<div class="grid-mask">
				<span class="reminder-live-hd">共35课时</span>
			</div>
		</div>
		
		<div class="course-text">
			<h4><a href="#"> VR/AR虚拟现实入门精选课【持续更新】</a></h4>
		</div>
	</div>
</li>
<li>
	<div class="course-list-con">
		<div class="course-pic">
			<a href="#">
				<img class="course-picture"  src="images/list.jpg" >
			</a>
			<div class="grid-mask">
				<span class="reminder-live-hd">共35课时</span>
			</div>
		</div>
		
		<div class="course-text">
			<h4><a href="#"> VR/AR虚拟现实入门精选课【持续更新】</a></h4>
		</div>
	</div>
</li>
<li>
	<div class="course-list-con">
		<div class="course-pic">
			<a href="#">
				<img class="course-picture"  src="images/list.jpg" >
			</a>
			<div class="grid-mask">
				<span class="reminder-live-hd">共35课时</span>
			</div>
		</div>
		
		<div class="course-text">
			<h4><a href="#"> VR/AR虚拟现实入门精选课【持续更新】</a></h4>
		</div>
	</div>
</li>

 </ul>
 </div>
</div>
	
	
	
		
		
</div>		
		
	</body>
</html>

