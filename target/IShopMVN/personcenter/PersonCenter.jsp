<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


























































<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>个人中心-首页</title>
    <link rel="stylesheet" href="../css/logreg/reset.css"/>
    <link rel="stylesheet" href="../css/font-awesome.min.css"/>
    <link rel="stylesheet" href="../css/ishop/style.css"/>
    <link rel="stylesheet" href="../css/logreg/other-style.css"/>
    <link rel="stylesheet" href="../css/gerenzhongxin.css"/>
    <link rel="stylesheet" type="css" href="../fonts/icon/iconfont.css"/>
    
</head>
	<div class="scroll-head"></div>
	<div class="top-wrapper">
        <div class="top-info">
            <div class="top-left">
            	<div class="empty-width-box"></div>
                <div data-toggle="arrowdown" id="arrow11" class="user-name">
                    <a href="#">送至：北京</a>
                    <span class="down-icon run-down"></span>
                </div>
                <div data-toggle="hidden-box" id="nav-box11" class="nav-box">
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
            <!--top-right-->
            <div class="top-right">
		       	<p class="top-mark">${sessionScope.user.userName}</p>
                <a class="top-mark" href="#">积分（<span class="main-theme-color">256</span> )</a>
                <a class="top-mark" href="#">消息（<span>0</span> )</a>
                <a class="a-float-left new-mg" href="#">退出</a>
                <span class="vertical-line">|</span>
                <div data-toggle="arrowdown" id="arrow4" class="user-name">
                    <a href="14个人中心-2-订单中心-全部订单.html" target="_blank">我的订单</a><span class="down-icon"></span>
                </div>
                <span class="vertical-line">|</span>
                <div data-toggle="arrowdown" id="arrow5" class="user-name">
                    <a href="14个人中心-1-首页-1有订单.html" target="_blank">个人中心</a><span class="down-icon"></span>
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
                    <img class="icon-weixin" src="">
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
                        <li><a href="14个人中心-2-订单中心-全部订单.html" target="_blank">待支付（1）</a></li>
                        <li><a href="14个人中心-2-订单中心-全部订单.html" target="_blank">待收货（0）</a></li>
                        <li><a href="14个人中心-2-订单中心-全部订单.html" target="_blank">待评价（0）</a></li>
                    </ul>
                </div>
                <div data-toggle="hidden-box" id="nav-box6" class="my-taobao-box">
                    <ul>
                        <li><a href="14个人中心-3-关注中心-我的收藏-1商品收藏 2店铺收藏.html" target="_blank">收藏的商品</a></li>
                        <li><a href="14个人中心-3-关注中心-我的收藏-1商品收藏 2店铺收藏.html" target="_blank">收藏的店铺</a></li>
                    </ul>
                </div>
                <div data-toggle="hidden-box" id="nav-box7" class="my-taobao-box">
                    <ul>
                        <li><a href="${pageContext.request.contextPath}/index.jsp" target="_blank">商城首页</a></li>
                        <li><a href="12积分详情页.html" target="_blank">积分商城</a></li>
                        <li><a href="1-1-4限时抢购.html" target="_blank">限时抢购</a></li>
                    </ul>
                </div>
                <div data-toggle="hidden-box" id="nav-box9" class="center-box">
                    <div class="drop-qrcode-box"><img src="img/code.png"></div>
                </div>
        	</div>
		</div>
    </div>
    <div class="new-top main-theme-bg">
    	<div class="new-top-main">
            <a href="${pageContext.request.contextPath}/index.jsp"><img class="main-logo" src="../img/icon/logo2.png"></a>
            <a href="${pageContext.request.contextPath}/index.jsp"><img class="main-logo" src="../img/person/icon-top-index.png"></a>
            <div class="top-tab-div">
            	<a href="${pageContext.request.contextPath}/index.jsp" class="top-tab-cell">首页</a>
                <div data-toggle="arrowdown" id="arrow10" class="top-tab-cell">
                    <a class="white">账户管理</a>
                    <span class="down-icon white-icon"></span>
                </div>
                <a class="top-tab-cell">消息</a>
                
                <div data-toggle="hidden-box" id="nav-box10" class="my-taobao-box">
                    <ul>
                        <li>基本信息</li>
                        <li>地址管理</li>
                        <li>修改手机号</li>
                        <li>修改登录密码</li>
                    </ul>
                </div>
            </div>
            <div class="two-code">
                <div class="other-box2">
                    <div class="other-box-right"><a href="8-3购物车-1.html" target="_blank">我的购物车</a></div>
                    <div class="other-busket-count main-theme-bg">1</div>
                </div>
            </div>
        </div>
    </div>

    <!--content body-->
    <div class="cont-main">
    	<div class="show-box">
	        <div class="left-side">
            	<div class="menu-title"><a href="14个人中心-1-首页-1有订单.html" class="main-theme-color">首页</a></div>
                <ul class="left-menu-main">
                	<li>
                    	<p class="menu-chd1"><a>个人信息</a></p>
                        <p class="menu-chd2"><a>基本信息</a></p>
                        <p class="menu-chd2"><a>我的特权</a></p>
                        <p class="menu-chd2"><a>地址管理</a></p>
                        <p class="menu-chd2"><a>消息</a></p>
                    </li>
                	<li>
                    	<p class="menu-chd1"><a>订单中心</a></p>
                        <p class="menu-chd2"><a>待付款</a></p>
                        <p class="menu-chd2"><a>待收货</a></p>
                        <p class="menu-chd2"><a>待评价</a></p>
                        <p class="menu-chd2"><a>售后中</a></p>
                    </li>
                    <li>
                    	<p class="menu-chd1"><a>我的资产</a></p>
                        <p class="menu-chd2"><a>消费总额</a></p>
                        <p class="menu-chd2"><a>我的积分</a></p>
                        <p class="menu-chd2"><a>我的零钱</a></p>
                        <p class="menu-chd2"><a>我的账单</a></p>
                    </li>
                    <li>
                    	<p class="menu-chd1"><a>关注中心</a></p>
                        <p class="menu-chd2"><a>我的收藏</a></p>
                        <p class="menu-chd2"><a>我的足迹</a></p>
                    </li>
                    <li>
                    	<p class="menu-chd1"><a>安全管理</a></p>
                        <p class="menu-chd2"><a>支付密码管理</a></p>
                        <p class="menu-chd2"><a>提现账户管理</a></p>
                        <p class="menu-chd2"><a>密保管理</a></p>
                        <p class="menu-chd2"><a>设备授权</a></p>
                    	
                    </li>
                    
                </ul>
            </div>
            <div class="right-cont">
            	<div class="right-side-top">
                	<div class="side-top-cont cont-left">
                    	<img src="../img/touxiang.jpg">
                        <div class="side-left-cont">
                        	<p><span class="larg-span">${sessionScope.user.userName}</span><img src="../img/person/v0.png"></p>
                        	<br/>
                            <p>我的余额：<span class="main-theme-color">255</span>我的优惠券：<span class="main-theme-color">111</span></p>
                            <br/>
                            <p>我的积分：<span class="main-theme-color">255</span>我的特权：<span class="main-theme-color">111</span></p>
                            <p class="side-cont-bottom">
                            </p>
                        </div>
                    </div>
                    <div class="side-top-cont cont-right padding-top-15">
                    	<a href="#" class="side-right-cell">
                        	<img src="../img/icon/daojishi.png"/>
                            <p>待付款 <span class="main-theme-color">1</span></p>
                        </a>
                        <a class="side-right-cell">
                        	<img src="../img/icon/shanping.png">
                            <p>待发货 <span class="main-theme-color">0</span></p>
                        </a>
                        <a href="#" class="side-right-cell">
                        	<img src="../img/icon/fahuo.png">
                            <p>待收货 <span class="main-theme-color">0</span></p>
                        </a>
                        <a href="#" class="side-right-cell">
                        	<img src="../img/icon/pinjia.png">
                            <p>待评价 <span class="main-theme-color">0</span></p>
                        </a>
                        <a href="#" class="side-right-cell">
                        	<img src="../img/icon/shouhou.png">
                            <p>售后中 <span class="main-theme-color">0</span></p>
                        </a>
                    </div>
                </div>
                <div class="main-title-bar">
                	<span class="main-title-left">我的订单</span><a href="14个人中心-2-订单中心-全部订单.html" class="main-title-right main-theme-color">查看全部订单</a>
                </div>
                
                <div class="order-main">
                    <div class="no-order-main">
                    	<img src="img/gerenzhongxin/icon-busket-mark.png">
                        <div class="no-order-cont">
                        	<p class="large-text">您最近购买的东西太少了，</p>
                            <p class="gray-cell middle-text">再去逛逛吧！</p>
                            <a class="go-view">去逛逛 ></a>
                        </div>
                    </div>
                </div>
                
                <div class="slide-cont">
                    <div class="pro-slide-title"><a class="main-border-bottom3">最近浏览</a></div>
                    <div class="pro-slide">
                        <div class="pro-go-left"><img src="img/gerenzhongxin/icon-go-left.png"></div>
                        <div class="pro-slide-main">
                            <ul class="imgBoxOther">
                                <li>
                                    <img src="img/gerenzhongxin/slide-img1.png">
                                    <h3>马甲 春秋英伦休...</h3><span class="red">¥19.90</span>
                                </li>
                                <li>
                                    <img src="img/gerenzhongxin/slide-img2.png">
                                    <h3>马甲 春秋英伦休...</h3><span class="red">¥22.90</span>
                                </li>
                                <li>
                                    <img src="img/gerenzhongxin/slide-img3.png">
                                    <h3>马甲 春秋英伦休...</h3><span class="red">¥11.90</span>
                                </li>
                                <li>
                                    <img src="img/gerenzhongxin/slide-img4.png">
                                    <h3>马甲 春秋英伦休...</h3><span class="red">¥37.00</span>
                                </li>
                                <li>
                                    <img src="img/gerenzhongxin/slide-img5.png">
                                    <h3>马甲 春秋英伦休...</h3><span class="red">¥19.90</span>
                                </li>
                                <li>
                                    <img src="img/gerenzhongxin/slide-img6.png">
                                    <h3>马甲 春秋英伦休...</h3><span class="red">¥22.90</span>
                                </li>
                                <li>
                                    <img src="img/gerenzhongxin/slide-img1.png">
                                    <h3>马甲 春秋英伦休...</h3><span class="red">¥11.90</span>
                                </li>
                                <li>
                                    <img src="img/gerenzhongxin/slide-img2.png">
                                    <h3>马甲 春秋英伦休...</h3><span class="red">¥37.00</span>
                                </li>
                            </ul>
                        </div>
                        <div class="pro-go-right"><img src="img/gerenzhongxin/icon-go-right.png"></div>
                    </div>
                </div>
            </div>
	    </div>
    	<div class="empty-div"></div>
    </div>
    
	
	<!--footer-->
     
	<!--footer-->
    <div class="footer">
    	<div class="footer-item1">
        	<div class="help">
                <div class="help-info help-info-first">
                    <div class="footer-img">
                    	<img src="../img/icon/moneysmall.jpg">
                    </div>
                    <div class="footer-str">                    	
                        <h1><p class="help-text">品质保障</p></h1>                                          	
                    	<span class="help-text">品质护航 购物无忧</span>
                    </div>
                </div>
                <div class="help-info">
                    <div class="footer-img">
                    	<img src="../img/icon/huismall.jpg">
                    </div>
                    <div class="footer-str">                    	
                        <h1><p class="help-text">七天无理由退换货</p></h1>                                          	
                    	<span class="help-text">为您提供售后无忧保障</span>
                    </div>
                </div>
                <div class="help-info">
                    <div class="footer-img">
                    	<img src="../img/icon/72h.png">
                    </div>
                    <div class="footer-str">                    	
                        <h1><p class="help-text">特色服务体验</p></h1>                                          	
                    	<span class="help-text">为您呈现不一样的服务</span>
                    </div>
                </div>
                <div class="help-info">
                    <div class="footer-img">
                    	<img src="../img/icon/mansmall.jpg">
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
        	<span>Copytight © 2004 - 2016</span>
            <span>&nbsp;IShop &nbsp;粤ICP证070359号 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;出版物经营许可证 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;互联网出版许可证编号新出网证（京）字150号</span>
        </div>
        <div class="contact" align="center">
            <span>违法和不良信息举报电话：</span>
            <a class="phone-num">12377</a>
        </div>
    </div>
    
     <script src="js/ishop/jquery-3.2.1.min.js"></script>
    <script src="js/ishop/main.js"></script>
    <script src="js/ishop/gerenzhongxin.js"></script>

</body>
</html>