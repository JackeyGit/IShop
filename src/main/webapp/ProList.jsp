<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>分类选购</title>
	<link rel="stylesheet" href="css/logreg/reset.css"/>
	<link rel="stylesheet" href="css/ishop/font-awesome.min.css"/>
	<link rel="stylesheet" href="css/ishop/style.css"/>
	<link rel="stylesheet" href="css/logreg/other-style.css"/>
	<link rel="stylesheet" href="css/ishop/wodeshangcheng.css"/>
	<link rel="stylesheet" href="css/ishop/qijiandian.css"/>
	<link rel="stylesheet" href="css/ishop/gerenzhongxin.css"/>
	<link rel="stylesheet" href="css/ishop/liebiaoye.css"/>
  
</head>
	<div class="scroll-head"></div>
	<div class="top-wrapper">
        <div class="top-info">
            <!--top-right-->
            <div class="top-right">
    			        
            	 	<c:if test="${empty sessionScope.user.userName}">
	                    	<a class="a-float-left user-login" href="${pageContext.request.contextPath}/login.jsp">亲！请登录</a>
            	            <a class="a-float-left new-mg" href="${pageContext.request.contextPath}/register.jsp">免费注册</a>
                    </c:if>
                    <c:if test="${!empty sessionScope.user.userName}">
	                    	 <span class="a-float-left new-mg">欢迎您，${sessionScope.user.userName}</span>
                    </c:if> 	 
            
            	
            	<span class="vertical-line">|</span>
                <div data-toggle="arrowdown" id="arrow3" class="user-name">
                    <a href="#">送至：北京</a><span class="down-icon"></span>
                </div>
                <span class="vertical-line">|</span>
                <div data-toggle="arrowdown" id="arrow4" class="user-name">
                  <c:if test="${empty sessionScope.user.userName}">
	                    	<a href="${pageContext.request.contextPath}/login.jsp">我的订单</a><span class="down-icon"></span>
                    </c:if>
                    <c:if test="${!empty sessionScope.user.userName}">
	                    	 <a href="${pageContext.request.contextPath}/personcenter/PersonCenter.jsp" target="_blank">我的订单</a><span class="down-icon"></span>
                    </c:if> 
                </div>
                <span class="vertical-line">|</span>
                <div data-toggle="arrowdown" id="arrow5" class="user-name">
                    <a href="${pageContext.request.contextPath}/personcenter/PersonCenter.jsp" target="_blank">个人中心</a><span class="down-icon"></span>
                </div>
                <span class="vertical-line">|</span>
                <div data-toggle="arrowdown" id="arrow6" class="user-name">
                    <a href="#">我的收藏</a><span class="down-icon"></span>
                </div>
                <span class="vertical-line">|</span>
                <div data-toggle="arrowdown" id="arrow7" class="user-name">
                    <a href="#">网站导航</a><span class="down-icon"></span>
                </div>
                <span class="vertical-line">|</span>
                <div data-toggle="arrowdown" id="arrow8" class="user-name">
                    <a href="#">客户服务</a><span class="down-icon"></span>
                </div>
                <span class="vertical-line">|</span>
                <div data-toggle="arrowdown" id="arrow9" class="user-name">
                    <!-- <img class="icon-weixin" src="img/Home/icon-weixin.png"> -->
                    <a href="#">关注我们</a><span class="down-icon run-down"></span>
                </div>
                
                <div data-toggle="hidden-box" id="nav-box3" class="nav-box">
                    <div class="top-sub-nav">
                    	<!--  sub-nav-box  -->
                        <ul class="sub-nav-box">
                            <li class="normal-list clearfix">
                                <div><a>北京</a></div>
                                <div><a>天津</a></div>
                                <div><a>上海</a></div>
                                <div><a>杭州</a></div>
                                <div><a>山东</a></div>
                            </li>
                            <li class="normal-list clearfix">
                            	<div><a class="has-chd-cell">天津</a><img src="img/Home/icon-menu-tri.png"></div>
                                <div><a>北京</a></div>
                                <div><a class="has-chd-cell">上海</a><img src="img/Home/icon-menu-tri.png"></div>
                                <div><a class="has-chd-cell">杭州</a><img src="img/Home/icon-menu-tri.png"></div>
                                <div><a>山东</a></div>
                                <div><a>广东</a></div>
                            </li>
                            <li class="sub-nav-box-chd clearfix">
                                <div><a>北京</a></div>
                                <div><a>上海</a></div>
                                <div><a>山东</a></div>
                                <div><a>天津</a></div>
                                <div><a>广东</a></div>
                                <div><a>杭州</a></div>
                                <div><a>北京</a></div>
                                <div><a>上海</a></div>
                                <div><a>山东</a></div>
                                <div><a>天津</a></div>
                                <div><a>广东</a></div>
                                <div><a>杭州</a></div>
                            </li>
                            <li class="normal-list clearfix">
                                <div><a>北京</a></div>
                                <div><a>天津</a></div>
                                <div><a>上海</a></div>
                                <div><a>杭州</a></div>
                                <div><a>山东</a></div>
                                <div><a>广东</a></div>
                            </li>
                            <li class="normal-list clearfix">
                                <div><a>北京</a></div>
                                <div><a>天津</a></div>
                                <div><a>上海</a></div>
                                <div><a>杭州</a></div>
                                <div><a>山东</a></div>
                                <div><a>广东</a></div>
                            </li>
                            <li class="normal-list clearfix">
                                <div><a>北京</a></div>
                                <div><a>天津</a></div>
                                <div><a>上海</a></div>
                                <div><a>杭州</a></div>
                                <div><a>山东</a></div>
                                <div><a>广东</a></div>
                            </li>
                            <li class="normal-list clearfix">
                                <div><a>北京</a></div>
                                <div><a>天津</a></div>
                                <div><a>上海</a></div>
                                <div><a>杭州</a></div>
                                <div><a>山东</a></div>
                                <div><a>广东</a></div>
                            </li>
                            <li class="normal-list clearfix">
                                <div><a>北京</a></div>
                                <div><a>天津</a></div>
                                <div><a>上海</a></div>
                                <div><a>杭州</a></div>
                                <div><a>山东</a></div>
                                <div><a>广东</a></div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div data-toggle="hidden-box" id="nav-box4" class="my-taobao-box">
                    <ul>
                        <li><a href="#" target="_blank">待支付（1）</a></li>
                        <li><a href="" target="_blank">待收货（0）</a></li>
                        <li><a href="" target="_blank">待评价（0）</a></li>
                    </ul>
                </div>
                <div data-toggle="hidden-box" id="nav-box6" class="my-taobao-box">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/personcenter/PersonCenter.jsp" target="_blank">收藏的商品</a></li>
                        <li><a href="${pageContext.request.contextPath}/personcenter/PersonCenter.jsp" target="_blank">收藏的店铺</a></li>
                    </ul>
                </div>
                <div data-toggle="hidden-box" id="nav-box7" class="my-taobao-box">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/index.jsp" target="_blank">商城首页</a></li>
                        <li><a href="" target="_blank">积分商城</a></li>
                        <li><a href="" target="_blank">限时抢购</a></li>
                    </ul>
                </div>
                <div data-toggle="hidden-box" id="nav-box9" class="center-box">
                    <div class="drop-qrcode-box"><img src="img/code.png"></div>
                </div>
        	</div>
		</div>
    </div>
    
    
	<div class="top-main width-1080">
		<img class="main-logo" src="img/icon/ishoplogo.png">
        <div class="align-right-tag">
            <div class="search-wrapper">
                <div class="search-box main-border-full3">
                    <input class="search-in" type="text" placeholder="	搜‘健康椅’试试，办公好选择">
                    <input type="button" class="search-but main-theme-bg" value="搜索">
                </div>
                <div class="other-search">
                    <a href="#">妈妈装</a><span class="inside-line">|</span>
                    <a href="#">电风扇</a><span class="inside-line">|</span>
                    <a href="#">t桖男</a><span class="inside-line">|</span>
                    <a href="#">女鞋</a><span class="inside-line">|</span>
                    <a href="#">泳衣</a><span class="inside-line">|</span>
                    <a href="#">伞</a><span class="inside-line">|</span>
                    <a href="#">蚊帐</a><span class="inside-line">|</span>
                    <a href="#">空调</a><span class="inside-line">|</span>
                    <a href="#">防晒衣</a>                                        
                </div>
            </div>
            <div class="two-code">
                <div class="other-box">
                    <div class="other-box-busket main-theme-bg"><img src="img/icon/gouwuche20.png"></div>
                    <div class="other-box-right"><a href="8-3购物车-1.html" target="_blank">我的购物车</a></div>
                    <div class="other-busket-count main-theme-bg">0</div>
                </div>
                <!--hidden-box-->
                <div id="other-busket-down" class="toggle-down-box">
                    <img src="img/Home/icon-busket-no.jpg">
                    <span class="busket-no-title">购物车中还没有商品，赶紧选购吧！</span>
                </div>
            </div>
        </div>
	</div>

	<!--content-top-->
	<div class="content-top content-middle-top">
        <div class="sidebar-top main-theme-bg" data-rel="1">
            <img class="sidebar-left" src="img/icon/000.png"><h3>全部分类</h3><img class="sidebar-right" src="img/icon/icon-arrow-down-white.png">
        </div>
		<!--right-con-->
		<div class="right-con">
			<div class="nav main-tab">
				<a class="tab-blank1">首页<img src="img/Home/icon-triangle.png"></a>
                <a class="tab-blank2">服装<img src="img/Home/icon-triangle.png"></a>
                <a class="tab-blank3">家居<img src="img/Home/icon-triangle.png"></a>
                <a class="tab-blank4">生鲜<img src="img/Home/icon-triangle.png"></a>
                <a class="tab-blank5">数码<img src="img/Home/icon-triangle.png"></a>
                <a class="tab-blank6">活动<img src="img/Home/icon-triangle.png"></a>
			</div>
		</div>
		<div class="empty-div"></div>
	</div>
	<div class="empty-div"></div>
	
	<!--content body-->
	<div class="cont-main2  main-border-top2">
		<div class="cont-box5 cont-fh-menu width-1080">
			<div class="">
				<div class="width-1080 margintop-minus20 ">
					<div class="sidebar-info ">
						<div class="sidebar-info-bg main-theme-bg"></div>
						<ul class="side-li">
							<li class="s_1"><h3>女装 / 内衣<span class="fa fa-angle-right fa-loc"></span></h3></li>
							<li class="s_2"><h3>男装 / 运动户外<span class="fa fa-angle-right fa-loc"></span></h3></li>
							<li class="s_3"><h3>女鞋 / 男鞋 / 箱包<span class="fa fa-angle-right fa-loc"></span></h3></li>
							<li class="s_4"><h3>化妆品 / 个人护理<span class="fa fa-angle-right fa-loc" style=""></span></h3></li>
							<li class="s_5"><h3>腕表 / 珠宝饰品 / 眼镜<span class="fa fa-angle-right fa-loc"></span></h3></li>
							<li class="s_6"><h3>手机 / 数码 / 电脑办公<span class="fa fa-angle-right fa-loc"></span></h3></li>
							<li class="s_7"><h3>母婴玩具<span class="fa fa-angle-right fa-loc" style=""></span></h3></li>
							<li class="s_8"><h3>零食 / 进口饰品 / 茶酒<span class="fa fa-angle-right fa-loc"></span></h3></li>
							<li class="s_9"><h3>生鲜水果<span class="fa fa-angle-right fa-loc"></span></h3></li>
							<li class="s_10"><h3>大家电 / 生活电器<span class="fa fa-angle-right fa-loc"></span></h3></li>
							<li class="s_11"><h3>家具建材<span class="fa fa-angle-right fa-loc"></span></h3></li>
							<li class="s_12"><h3>汽车 / 配件 / 用品<span class="fa fa-angle-right fa-loc"></span></h3></li>
							<li class="s_13"><h3>家纺 / 家饰 / 鲜花<span class="fa fa-angle-right fa-loc"></span></h3></li>
							<li class="s_14"><h3>医药保健<span class="fa fa-angle-right fa-loc"></span></h3></li>
							<li class="s_15"><h3>厨具 / 收纳 / 宠物<span class="fa fa-angle-right fa-loc"></span></h3></li>
							<li class="s_16"><h3>图书音像<span class="fa fa-angle-right fa-loc"></span></h3></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="selected-items padding-top20">
				<span class="sel-item">全部结果</span>&#062;
				<span class="sel-rect sel-item">
					<span class="sel-item">品牌：</span>
					<span class="sel-item main-theme-color">ONLY</span>
					<img src="img/liebiaoye/del.png" />
				</span>&#062;
				<span>&#034;ONLY&#034;</span>
			</div>
			<div class="menu-cell-line fst-cell cell-trans">
				<div class="cont-menu-left">品&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;牌：</div>
				<input id="more1" type="button" class="more-but2" value="更多"/>
				<div id="more-menu1" class="cont-menu-right more-menu">
					<ul class="menu-cell-box more">
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
						<li><div class="cell-item"><img src="img/qijiandian/only-small.png"></div></li>
					</ul>
				</div>
			</div>
			<div class="menu-cell-line border-special">
				<div class="recommended recommended2">
					<div class="cont-menu-left">热销推荐：</div>
					<div id="more-menu2" class="cont-menu-right more-menu">
						<span>条纹控</span>
						<span>纯棉</span>
						<span>纯色</span>
						<span>淑女</span>
						<span>条纹控</span>
						<span>纯棉</span>
						<span>纯色</span>
						<span>淑女</span>
					</div>
				</div>
				<div class="recommended detail-1">
					<div class="cont-menu-left cont-menu-left2">价&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;格：</div>
					<div class="cont-menu-right ">
						<span>0-50</span>
						<span>50-100</span>
						<span>100-200</span>
						<span>200以上</span>
					</div>
				</div>
				<div class="recommended detail-1">
					<div class="cont-menu-left cont-menu-left2">尺&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;寸：</div>
					<div class="cont-menu-right">
						<span>S</span>
						<span>M</span>
						<span>L</span>
						<span>XL</span>
						<span>XXL</span>
					</div>
				</div>
				<div class="recommended recommended2">
					<div class="cont-menu-left">颜色分类：</div>
					<div id="more-menu3" class="cont-menu-right more-menu">
						<span>红色</span>
						<span>蓝色</span>
						<span>粉色</span>
						<span>绿色</span>
						<span>白色</span>
						<span>黑色</span>
						<span>条纹</span>
						<span>桔色</span>
						<span>藏青色</span>
						<span>灰色</span>
					</div>
				</div>
			</div>
			<div class="border-special2">
				<div class="drop-up drop-other-two">更多选项</div>
			</div>
			<div class="sort-main">
				<div class="wen60"><input class="cost-int" value="60元"></div>
				<span class="vertical-line">-</span>
				<div class="wen60"><input class="cost-int" value="80元"></div>
				<a><div class="finiding main-theme-bg">搜索</div></a>
				<div class="sort-main-cell sort-up">默认</div>
				<span class="vertical-line">|</span>
				<div class="sort-main-cell sort-up">销量</div>
				<span class="vertical-line">|</span>
				<div class="sort-main-cell sort-down">时间</div>
				<span class="vertical-line">|</span>
				<div class="sort-main-cell sort-main-cell-wide sort-down arrow14" id="arrow14" data-toggle="arrowdown"><a>送至：东莞</a></div>
				<span class="vertical-line">|</span>
				<div class="sort-main-check">
					<label for="new_good">
						<input id="new_good" type="checkbox" />新品
					</label>
					<label for="deliver">
						<input id="deliver" type="checkbox" />包邮
					</label>
				</div>
				<div data-toggle="hidden-box" id="nav-box14" class="nav-box nav-box14">
                    <div class="top-sub-nav">
                    	<!--  sub-nav-box  -->
                        <ul class="sub-nav-box">
                            <li class="normal-list clearfix">
                                <div><a>北京</a></div>
                                <div><a>天津</a></div>
                                <div><a>上海</a></div>
                                <div><a>杭州</a></div>
                                <div><a>山东</a></div>
                            </li>
                            <li class="normal-list clearfix">
                            	<div><a class="has-chd-cell">天津</a><img src="img/Home/icon-menu-tri.png"></div>
                                <div><a>北京</a></div>
                                <div><a class="has-chd-cell">上海</a><img src="img/Home/icon-menu-tri.png"></div>
                                <div><a class="has-chd-cell">杭州</a><img src="img/Home/icon-menu-tri.png"></div>
                                <div><a>山东</a></div>
                                <div><a>广东</a></div>
                            </li>
                            <li class="sub-nav-box-chd clearfix">
                                <div><a>北京</a></div>
                                <div><a>上海</a></div>
                                <div><a>山东</a></div>
                                <div><a>天津</a></div>
                                <div><a>广东</a></div>
                                <div><a>杭州</a></div>
                                <div><a>北京</a></div>
                                <div><a>上海</a></div>
                                <div><a>山东</a></div>
                                <div><a>天津</a></div>
                                <div><a>广东</a></div>
                                <div><a>杭州</a></div>
                            </li>
                            <li class="normal-list clearfix">
                                <div><a>北京</a></div>
                                <div><a>天津</a></div>
                                <div><a>上海</a></div>
                                <div><a>杭州</a></div>
                                <div><a>山东</a></div>
                                <div><a>广东</a></div>
                            </li>
                            <li class="normal-list clearfix">
                                <div><a>北京</a></div>
                                <div><a>天津</a></div>
                                <div><a>上海</a></div>
                                <div><a>杭州</a></div>
                                <div><a>山东</a></div>
                                <div><a>广东</a></div>
                            </li>
                            <li class="normal-list clearfix">
                                <div><a>北京</a></div>
                                <div><a>天津</a></div>
                                <div><a>上海</a></div>
                                <div><a>杭州</a></div>
                                <div><a>山东</a></div>
                                <div><a>广东</a></div>
                            </li>
                            <li class="normal-list clearfix">
                                <div><a>北京</a></div>
                                <div><a>天津</a></div>
                                <div><a>上海</a></div>
                                <div><a>杭州</a></div>
                                <div><a>山东</a></div>
                                <div><a>广东</a></div>
                            </li>
                            <li class="normal-list clearfix">
                                <div><a>北京</a></div>
                                <div><a>天津</a></div>
                                <div><a>上海</a></div>
                                <div><a>杭州</a></div>
                                <div><a>山东</a></div>
                                <div><a>广东</a></div>
                            </li>
                        </ul>
                    </div>
                </div>
			</div>
			<ul class="photos-box2">
                <li class="photo6-li">
                  <a href="${pageContext.request.contextPath}/Product.jsp">
                        <img class="photo6-img" src="img/product/iphonex.jpg">
                    </a>
                    <div class="photo7-div">
                        <div class="pro-thumb-box selected"><img src="img/product/iphone1.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone2.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone3.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box "><img src="img/product/iphone4.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone5.jpg"><b class="caret"></b></div>
                    </div>
                    <div class="photo7-detail-top">
                        <span class="pinpai">自营</span>
                        <span class="photo7-detail ">Apple iPhone X (A1865) 64GB </span>
                        <div class="photo7-detail margin-bottom-def">
                             	Apple 苹果 iPhone X 全面屏全网通4G智能手机 银色（256GB） 【国行原封未激活】
                        </div>
                    </div>
                    <p class="photo7-cost-container">
                        <span class="photo7-cost">¥13,000</span>
                        <del class="photo7-detail">¥15,000</del>
                    </p>
                    <p class="photo7-spans1">
                        <span class="photo7-spans1-red">包邮</span>
                           <ii style="margin-left: 100px">已销 22546 <ii>
                    </p>
                   
                </li>
               	<li class="photo6-li">
                    <a href="${pageContext.request.contextPath}/Product.jsp">
                        <img class="photo6-img" src="img/product/iphonex.jpg">
                    </a>
                    <div class="photo7-div">
                        <div class="pro-thumb-box selected"><img src="img/product/iphone1.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone2.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone3.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box "><img src="img/product/iphone4.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone5.jpg"><b class="caret"></b></div>
                    </div>
                    <div class="photo7-detail-top">
                        <span class="pinpai">自营</span>
                        <span class="photo7-detail ">Apple iPhone X (A1865) 64GB </span>
                        <div class="photo7-detail margin-bottom-def">
                             	Apple 苹果 iPhone X 全面屏全网通4G智能手机 银色（256GB） 【国行原封未激活】
                        </div>
                    </div>
                    <p class="photo7-cost-container">
                        <span class="photo7-cost">¥13,000</span>
                        <del class="photo7-detail">¥15,000</del>
                    </p>
                    <p class="photo7-spans1">
                        <span class="photo7-spans1-red">包邮</span>
                           <ii style="margin-left: 100px">已销 22546 <ii>
                    </p>
                   
                </li>
                <li class="photo6-li">
                    <a href="${pageContext.request.contextPath}/Product.jsp">
                        <img class="photo6-img" src="img/product/iphonex.jpg">
                    </a>
                    <div class="photo7-div">
                        <a ><div class="pro-thumb-box selected"><img src="img/product/iphone1.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone2.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone3.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box "><img src="img/product/iphone4.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone5.jpg"><b class="caret"></b></div>
                    </div>
                    <div class="photo7-detail-top">
                        <span class="pinpai">自营</span>
                        <span class="photo7-detail ">Apple iPhone X (A1865) 64GB </span>
                        <div class="photo7-detail margin-bottom-def">
                             	Apple 苹果 iPhone X 全面屏全网通4G智能手机 银色（256GB） 【国行原封未激活】
                        </div>
                    </div>
                    <p class="photo7-cost-container">
                        <span class="photo7-cost">¥13,000</span>
                        <del class="photo7-detail">¥15,000</del>
                    </p>
                    <p class="photo7-spans1">
                        <span class="photo7-spans1-red">包邮</span>
                           <ii style="margin-left: 100px">已销 22546 <ii>
                    </p>
                   
                </li>
                <li class="photo6-li">
                    <a href="${pageContext.request.contextPath}/Product.jsp">
                        <img class="photo6-img" src="img/product/iphonex.jpg">
                    </a>
                    <div class="photo7-div">
                        <div class="pro-thumb-box selected"><img src="img/product/iphone1.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone2.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone3.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box "><img src="img/product/iphone4.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone5.jpg"><b class="caret"></b></div>
                    </div>
                    <div class="photo7-detail-top">
                        <span class="pinpai">自营</span>
                        <span class="photo7-detail ">Apple iPhone X (A1865) 64GB </span>
                        <div class="photo7-detail margin-bottom-def">
                             	Apple 苹果 iPhone X 全面屏全网通4G智能手机 银色（256GB） 【国行原封未激活】
                        </div>
                    </div>
                    <p class="photo7-cost-container">
                        <span class="photo7-cost">¥13,000</span>
                        <del class="photo7-detail">¥15,000</del>
                    </p>
                    <p class="photo7-spans1">
                        <span class="photo7-spans1-red">包邮</span>
                           <ii style="margin-left: 100px">已销 22546 <ii>
                    </p>
                   
                </li>
                <li class="photo6-li">
                    <a href="${pageContext.request.contextPath}/Product.jsp">
                        <img class="photo6-img" src="img/product/iphonex.jpg">
                    </a>
                    <div class="photo7-div">
                        <div class="pro-thumb-box selected"><img src="img/product/iphone1.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone2.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone3.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box "><img src="img/product/iphone4.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone5.jpg"><b class="caret"></b></div>
                    </div>
                    <div class="photo7-detail-top">
                        <span class="pinpai">自营</span>
                        <span class="photo7-detail ">Apple iPhone X (A1865) 64GB </span>
                        <div class="photo7-detail margin-bottom-def">
                             	Apple 苹果 iPhone X 全面屏全网通4G智能手机 银色（256GB） 【国行原封未激活】
                        </div>
                    </div>
                    <p class="photo7-cost-container">
                        <span class="photo7-cost">¥13,000</span>
                        <del class="photo7-detail">¥15,000</del>
                    </p>
                    <p class="photo7-spans1">
                        <span class="photo7-spans1-red">包邮</span>
                           <ii style="margin-left: 100px">已销 22546 <ii>
                    </p>
                   
                </li>
                <li class="photo6-li">
                    <a href="${pageContext.request.contextPath}/Product.jsp">
                        <img class="photo6-img" src="img/product/iphonex.jpg">
                    </a>
                    <div class="photo7-div">
                        <div class="pro-thumb-box selected"><img src="img/product/iphone1.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone2.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone3.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box "><img src="img/product/iphone4.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone5.jpg"><b class="caret"></b></div>
                    </div>
                    <div class="photo7-detail-top">
                        <span class="pinpai">自营</span>
                        <span class="photo7-detail ">Apple iPhone X (A1865) 64GB </span>
                        <div class="photo7-detail margin-bottom-def">
                             	Apple 苹果 iPhone X 全面屏全网通4G智能手机 银色（256GB） 【国行原封未激活】
                        </div>
                    </div>
                    <p class="photo7-cost-container">
                        <span class="photo7-cost">¥13,000</span>
                        <del class="photo7-detail">¥15,000</del>
                    </p>
                    <p class="photo7-spans1">
                        <span class="photo7-spans1-red">包邮</span>
                           <ii style="margin-left: 100px">已销 22546 <ii>
                    </p>
                   
                </li>
                <li class="photo6-li">
                     <a href="${pageContext.request.contextPath}/Product.jsp">
                        <img class="photo6-img" src="img/product/iphonex.jpg">
                    </a>
                    <div class="photo7-div">
                        <div class="pro-thumb-box selected"><img src="img/product/iphone1.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone2.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone3.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box "><img src="img/product/iphone4.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone5.jpg"><b class="caret"></b></div>
                    </div>
                    <div class="photo7-detail-top">
                        <span class="pinpai">自营</span>
                        <span class="photo7-detail ">Apple iPhone X (A1865) 64GB </span>
                        <div class="photo7-detail margin-bottom-def">
                             	Apple 苹果 iPhone X 全面屏全网通4G智能手机 银色（256GB） 【国行原封未激活】
                        </div>
                    </div>
                    <p class="photo7-cost-container">
                        <span class="photo7-cost">¥13,000</span>
                        <del class="photo7-detail">¥15,000</del>
                    </p>
                    <p class="photo7-spans1">
                        <span class="photo7-spans1-red">包邮</span>
                           <ii style="margin-left: 100px">已销 22546 <ii>
                    </p>
                   
                </li>
                <li class="photo6-li">
                     <a href="${pageContext.request.contextPath}/Product.jsp">
                        <img class="photo6-img" src="img/product/iphonex.jpg">
                    </a>
                    <div class="photo7-div">
                        <div class="pro-thumb-box selected"><img src="img/product/iphone1.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone2.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone3.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box "><img src="img/product/iphone4.jpg"><b class="caret"></b></div>
                        <div class="pro-thumb-box"><img src="img/product/iphone5.jpg"><b class="caret"></b></div>
                    </div>
                    <div class="photo7-detail-top">
                        <span class="pinpai">自营</span>
                        <span class="photo7-detail ">Apple iPhone X (A1865) 64GB </span>
                        <div class="photo7-detail margin-bottom-def">
                             	Apple 苹果 iPhone X 全面屏全网通4G智能手机 银色（256GB） 【国行原封未激活】
                        </div>
                    </div>
                    <p class="photo7-cost-container">
                        <span class="photo7-cost">¥13,000</span>
                        <del class="photo7-detail">¥15,000</del>
                    </p>
                    <p class="photo7-spans1">
                        <span class="photo7-spans1-red">包邮</span>
                           <ii style="margin-left: 100px">已销 22546 <ii>
                    </p>
                   
                </li>
               	
				</ul>
				</div>
				<div class="pro-go-right"><img src="img/gerenzhongxin/icon-go-right.png"></div>
			</div>
		</div>
	</div>
	
	<!--footer-->
    <div class="footer">
    	<div class="footer-item1">
        	<div class="help">
                <div class="help-info help-info-first">
                    <div class="footer-img">
                    	<img src="img/icon/moneysmall.jpg">
                    </div>
                    <div class="footer-str">                    	
                        <h1><p class="help-text">品质保障</p></h1>                                          	
                    	<span class="help-text">品质护航 购物无忧</span>
                    </div>
                </div>
                <div class="help-info">
                    <div class="footer-img">
                    	<img src="img/icon/huismall.jpg">
                    </div>
                    <div class="footer-str">                    	
                        <h1><p class="help-text">七天无理由退换货</p></h1>                                          	
                    	<span class="help-text">为您提供售后无忧保障</span>
                    </div>
                </div>
                <div class="help-info">
                    <div class="footer-img">
                    	<img src="img/icon/72h.png">
                    </div>
                    <div class="footer-str">                    	
                        <h1><p class="help-text">特色服务体验</p></h1>                                          	
                    	<span class="help-text">为您呈现不一样的服务</span>
                    </div>
                </div>
                <div class="help-info">
                    <div class="footer-img">
                    	<img src="img/icon/mansmall.jpg">
                    </div>
                    <div class="footer-str">                    	
                        <h1><p class="help-text">帮助中心</p></h1>                                          	
                    	<span class="help-text">您的购物指南</span>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-item2">
        	<div class="detail-info">                   	
                <h3 class="detail-text1">购物指南</h3>                                          	
                <p class="detail-text2">免费注册</p>
                <p class="detail-text2">购物流程</p>
                <p class="detail-text2">常见问题</p>
                <p class="detail-text2">会员介绍</p>
            </div>
            <div class="detail-info">                   	
                <h3 class="detail-text1">支付方式</h3>                                          	
                <p class="detail-text2">货到付款</p>
                <p class="detail-text2">在线支付</p>
                <p class="detail-text2">分期付款</p>
                <p class="detail-text2">公司转账</p>
            </div>
            <div class="detail-info">                   	
                <h3 class="detail-text1">物流配送</h3>                                          	
                <p class="detail-text2">上门自提</p>
                <p class="detail-text2">配送服务查询</p>
                <p class="detail-text2">签收验货</p>
                <p class="detail-text2">物流查询</p>
            </div>
            <div class="detail-info">                   	
                <h3 class="detail-text1">售后服务</h3>                                          	
                <p class="detail-text2">退换货物流</p>
                <p class="detail-text2">退换货政策</p>
                <p class="detail-text2">退款说明</p>
                <p class="detail-text2">售后申请</p>
            </div>
            <div class="detail-info">                   	
                <h3 class="detail-text1">关于我们</h3>                                          	
                <p class="detail-text2">商家入驻</p>
                <p class="detail-text2">信息公告</p>
                <p class="detail-text2">商家帮助</p>
                <p class="detail-text2">平台规则</p>
            </div>
            <div class="detail-info detial-code">                   	
                <h3 class="qr-img">IShop手机客户端</h3>                                          	
                <img src="img/footer5.png" />
            </div>
        </div>
        <div class="empty-div"></div>
        
        <div class="footer-nav-bar" align="center">        	
            <a href="#">关于IShop</a>|
            <a href="#">关于我们</a>|
            <a href="#">联系我们</a>|
            <a href="#">诚聘英才</a>|
            <a href="#">供应商入驻</a>|
            <a href="#">平台招标</a>|
            <a href="#">友情链接</a>|
            <a href="#">法律申明</a>
        </div>
        <div class="about" align="center">
        	<span>Copytight © 2017 - 2018</span>
            <span>&nbsp;IShop &nbsp;鄂ICP备17021573号 </span>
        </div>
        <div class="contact" align="center">
            <span>违法和不良信息举报电话：</span>
            <a class="phone-num">12377</a>
        </div>
    </div>
	<script src="js/jquery-3.2.1.min.js"></script>
	<script src="js/ishop/main.js"></script>
	<script src="js/ishop/qijiandian.js"></script>
    <script src="js/ishop/gerenzhongxin.js"></script>

</body>
</html>
