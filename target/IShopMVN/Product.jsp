
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
    <title>商品详情页</title>
    <link rel="stylesheet" href="css/logreg/reset.css"/>
    <link rel="stylesheet" href="css/font-awesome.min.css"/>
    <link rel="stylesheet" href="css/ishop/style.css"/>
    <link rel="stylesheet" href="css/logreg/other-style.css"/>
    <link rel="stylesheet" href="css/ishop/jifenxiangqing.css"/>
    <link rel="stylesheet" href="css/ishop/gongingshang.css"/>
	<link rel="stylesheet" href="css/ishop/MagicZoom.css"/>

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
                    <a href="#">送至：东莞</a><span class="down-icon"></span>
                </div>
                <span class="vertical-line">|</span>
                <div data-toggle="arrowdown" id="arrow4" class="user-name">
                  <c:if test="${empty sessionScope.user.userName}">
	                    	<a href="${pageContext.request.contextPath}/login.jsp">我的订单</a>
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
    <div class="top-main">
       <a href="${pageContext.request.contextPath}/index.jsp"><img class="main-logo" src="img/icon/ishoplogo.png"></a> 
       
        <!-- <div class="main-qrcode">
        	<p>手机逛</p>
            <img class="qr-show-btn" src="img/jifenxiangqing/icon-qrcode.png">
			<div class="qr-ele-box display-none margin-special">
				<img src="img/icon-qrcode.png">
				<img class="qr-del-btn" src="img/icon-common-del.png">
				<p class="fa-gray">扫一扫，手机逛起来</p>
			</div>
        </div> -->
        <div class="search-wrapper">
	        <div class="search-box gongying-search-box main-border-full3">
	            <input class="search-in" type="text" placeholder="    搜'健康椅'试试，办公好选择">
	            <input type="button" class="search-but main-theme-bg" value="搜索">
	        </div>
	    </div>
        <div class="two-code">
        	<div class="busket-num-box main-border-full1">
                <div class="other-box-busket "><img src="img/icon/gouwuche20.png"></div>
                <div class="other-busket-count main-theme-bg">0</div>
            </div>
        </div>
    </div>
    <!--right-nav-->
    <div class="right-nav">
    	<div class="right-nav-main">
    		<img class="vt-splite" src="img/icon/icon-vt-splite.png">
    		<div class="right-nav-busket">
                <i class="fa fa-shopping-cart"></i><a href="#">购物车</a>
            </div>
			<div class="enter-cart-success-box">
				<span class="enter-cart-success-title">商品已成功加入购物车！</span>
				<button class="btn-caret-2 btn-confirm main-theme-bg">马上去购物车结算&nbsp;&gt;</button>
				<div class="slide-cont">
					<div class="pro-slide">
						<div class="pro-go-left"><img src="img/baocuo/icon-go-left.png"></div>
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
						<div class="pro-go-right"><img src="img/baocuo/icon-go-right.png"></div>
					</div>
				</div>
			</div>
            <img class="vt-splite" src="img/icon/icon-vt-splite.png">
            <div class="right-nav-menu">
            	<div class="right-nav-cell-main">
            		<div class="right-nav-left">
            			<img src="img/Home/bg-nav-right-cell.png"><span>我的资产</span>
            		</div>
            		<div class="right-nav-right-img right-cell"><img src="img/icon/icon-nav-money.png"></div>
            	</div>
            	<div class="right-nav-cell-main">
            		<div class="right-nav-left">
            			<img src="img/Home/bg-nav-right-cell.png"><span>我的资产</span>
            		</div>
               		<div class="right-nav-right-img right-cell"><img src="img/icon/icon-nav-fav.png"></div>
            	</div>
            	<div class="right-nav-cell-main">
            		<div class="right-nav-left">
            			<img src="img/Home/bg-nav-right-cell.png"><span>我的资产</span>
            		</div>
               		<div class="right-nav-right-img right-cell"><img src="img/icon/icon-nav-clock.png"></div>
            	</div>
            	<div class="right-nav-cell-main">
            		<div class="right-nav-left">
            			<img src="img/Home/bg-nav-right-cell.png"><span>我的资产</span>
            		</div>
               		<div class="right-nav-right-img right-cell"><img src="img/icon/icon-nav-chat.png"></div>
            	</div>
            	<img class="vt-splite" src="img/icon/icon-vt-splite.png">
            	<div class="right-nav-right-img go-top" id="backTop-up"><img src="img/icon/icon-nav-gotop.png"></div>
            	<img class="vt-splite" src="img/icon/icon-vt-splite.png">
            </div>
    	</div>
    </div>
    <div class="content-bottom">
		<p class="selected-category">首页＞ 分类 ＞ 零食 ＞ 坚果</p>
		<div class="pd-preview sliding-div" id="pd-sku-part" style="float:left;">
			<div class="magnifier">
				<img src="img/gongingshang/magnifier.png" />
			</div>
			<div id="tsShopContainer">
				<div id="tsImgS" style="padding-top:0; padding-bottom:0;">
					<a href="img/jifenxiangqing/skirt-all-medium.png" class="MagicZoom" id="MagicZoom">
						<img width="300" height="300" src="img/jifenxiangqing/skirt-all-medium.png"/>
					</a>
				</div>
				<div class="navigate-control">
					<img class="cir-mask-left" src="img/icon/goto-left.png" />
					<img class="cir-mask-right" src="img/icon/goto-right.png" />
				</div>
				<div id="tsPicContainer">
					<div id="tsImgSArrL" onClick="tsScrollArrLeft()"></div>
					<div id="tsImgSCon" data-idx="0" style="width: 360px !important;">
						<ul style="width: 360px !important;">
							<li onmouseover="showPic(0,true);" rel="MagicZoom" class="gallery_li">
								<img height="42" width="42" src="img/product/01_mid.jpg" tsImgS="img/product/01.jpg"/>
							</li>
							<li onmouseover="showPic(1,true);" rel="MagicZoom" class="gallery_li tsSelectImg">
								<img height="42" width="42" src="img/product/02_mid.jpg" tsImgS="img/product/02.jpg"/>
							</li>
							<li onmouseover="showPic(2,true);" rel="MagicZoom" class="gallery_li">
								<img height="42" width="42" src="img/product/03_mid.jpg" tsImgS="img/product/03.jpg"/>
							</li>
						</ul>
					</div>
					<div id="tsImgSArrR" onmouseover="tsScrollArrRight()"></div>
				</div>
				<img class="MagicZoomLoading" width="16" height="16" src="img/gongingshang/loading.gif" alt="加载中..." />
			</div>
		</div>
        <div class="option-div">
        	<div class="option-title">
            	<!-- <span class="img-string main-theme-bg">品牌</span> -->
                <span>良品铺子 手剥松子218g 坚果炒货 巴西松子</span>
            </div>
        	<!-- <div class="child-nav-time main-theme-bg">
                <span>距开始仅剩 : </span><span class="child-time-span bg-color-f07622" id="day">00</span><span>天</span>
                <span class="child-time-span bg-color-f07622" id="hour">00</span><span>时</span>
                <span class="child-time-span bg-color-f07622" id="minute">00</span><span>分</span>
                <span class="child-time-span bg-color-f07622" id="second">00</span><span>秒</span>
            </div> -->
            <div class="option-content">
            	<div class="clearfix">
                	<div class="left-part top-6">
                        <span>原价：¥499</span>
                        <br/>
                        <p>现价：<span class="theme-color-red">¥299</span></p>
                       <br/>
						<div class="loan-txt">优惠券 : <span class="bg-color-spec">满199减10</span><span class="bg-color-spec">满199减10</span><span class="bg-color-spec">满199减10</span>领取</div>
                    </div>
                    <div class="right-part top-6">
                        <span>累计评论：235 <br>销量：556</span>
                    </div>
                </div>
                <div class="bottom-part">
                	<div class="clearfix">
                    	<p>促销：送299积分</p>
                        <div data-toggle="arrowdown" id="arrow13" class="g_position-left">
                            <a>送至：广东省东莞市</a>
                            <span class="down-icon run-down"></span>
                        </div>
                    </div>
                    <div class="clearfix">
                    	
                        <div data-toggle="arrowdown" id="arrow14" class="g_position-left">
                            <a>运费：包邮</a>
                            <span class="down-icon run-down"></span>
                        </div>
                    </div>
					<div data-toggle="hidden-box" id="nav-box13" class="nav-box">
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
            </div>
            	<div class="item-floor">
					<label class="g_position-left">口味：</label>
					<div class="item-btn item-active">原味</div>
					<div class="item-btn">奶油</div>
					<div class="item-btn">炭烧</div> 
					<div class="item-btn">咸香</div> 
				</div>
				<div class="item-floor">
					<label class="g_position-left">重量：</label>
					<div class="item-btn item-active">100g</div>
					<div class="item-btn">250g</div>
					<div class="item-btn">500g</div>                
				</div>
            <div class="option-end">
                <label class="g_position-left">数量：</label>
                <div class="amount-control">
                	<button class="amount-btn-minus custom-gray-color"><i class="fa fa-minus"></i></button>
                    <input type="text" value="1" />
                	<button class="amount-btn-plus"><i class="fa fa-plus"></i></button>
                </div>
                <span class="g_position-left">件</span>
                <span class="g_position-left">库存424件</span>
            </div>
			<div class="enter-cart-dialog">
				<div class="enter-cart-title">
					请选择您要的商品信息
					<img class="enter-cart-close" src="img/qijiandian/btn-close.png">
				</div>
				
				<div class="item-floor">
					<label class="g_position-left">口味：</label>
					<div class="item-btn item-active">原味</div>
					<div class="item-btn">奶油</div>
					<div class="item-btn">炭烧</div> 
					<div class="item-btn">咸香</div> 
				</div>
				<div class="item-floor">
					<label class="g_position-left">重量：</label>
					<div class="item-btn item-active">100g</div>
					<div class="item-btn">250g</div>
					<div class="item-btn">500g</div>                
				</div>
				<div class="option-end">
					<label class="g_position-left">数量：</label>
					<div class="amount-control">
                        <button class="amount-btn-minus custom-gray-color"><i class="fa fa-minus"></i></button>
                        <input type="text" value="1" />
                        <button class="amount-btn-plus"><i class="fa fa-plus"></i></button>
                    </div>
					<span class="g_position-left">件</span>
					<span class="g_position-left">库存424件</span>
				</div>
				<button class="btn-confirm main-theme-bg">确定</button>
			</div>
            <div class="pos-relative">
            	<div class="down-up-div">
                	
          				 <span> 
          				  <i class="fa fa-star main-theme-color"></i></img>收藏商品</span>
     				
                </div>
				<!-- <div class="hit-area">
				</div> -->
				<!-- <div class="dropshow-qr-code">
					<img src="img/code.png" />
				</div> -->
            	<a class="cart-btn btn-custom1 main-theme-color main-border-full1" href="#">立即购买</a>
            	<button class="enter-cart-btn cart-btn theme-color-white main-theme-bg border-none" href="#">
				<i class="fa fa-shopping-cart fa-user-custom"></i>加入购物车</button>  
					
            </div>                          
        </div>
		<div class="fav-right-box">
			<div class="fav-right-box-title">猜你喜欢：</div>
			<div class="slide-updown-container">
				<div class="v-slide-content">
					<div class="v-slide-image">
						<img src="img/product/8.jpg" />
						<div class="opacity-div">¥399.00-1</div>
					</div>
					<div class="v-slide-image">
						<img src="img/product/9.jpg" />
						<div class="opacity-div">¥399.00-2</div>
					</div>
					<div class="v-slide-image">
						<img src="img/product/10.jpg" />
						<div class="opacity-div">¥399.00-3</div>
					</div>
					<div class="v-slide-image">
						<img src="img/product/11.jpg" />
						<div class="opacity-div">¥399.00-4</div>
					</div>
					<div class="v-slide-image">
						<img src="img/product/6.jpg" />
						<div class="opacity-div">¥399.00-5</div>
					</div>
				</div>
			</div>
			<div class="updown-box">
				<span class="btn-updown btn-down"></span>
				<span class="btn-updown btn-up"></span>
			</div>
		</div>
    </div>
    <div class="empty-div"><br/></div>
	<div class="empty-div"></div>
    <div class="favorite-div">
        <div class="favorite-content">
        	<div class="favorite-left">
            	<div class="favorite-left-top">
                	<span>店铺推荐</span>
                </div>
				<div class="phone-txt-spec">电话：400-8353-027
				</div>
                <a class="cart-btn btn-custom4" href="#">进店逛逛</a>
               
                <div class="favorite-left-item">
                    <img src="img/product/2.jpg" /><br>
                    <p>¥278</p>
                </div>
                <div class="favorite-left-item">
                    <img src="img/product/3.jpg" /><br>
                    <p>¥278</p>
                </div>
                <div class="favorite-left-item">
                    <img src="img/product/4.jpg" /><br>
                    <p>¥278</p>
                </div>
                <div class="favorite-left-item">
                    <img src="img/product/5.jpg" /><br>
                    <p>¥278</p>
                </div>
              
                <div class="favorite-left-item">
                    <img src="img/product/9.jpg" /><br>
                    <p>¥278</p>
                </div>
              
                <div class="favorite-left-item">
                    <img src="img/product/10.jpg" /><br>
                    <p>¥278</p>
                </div>
                <div class="favorite-left-item">
                    <img src="img/product/11.jpg" /><br>
                    <p>¥278</p>
                </div>
            </div>
            <div class="favorite-right" >
            	<div class="favorite-right-title">
                	<div id="nav1" class="favorite-right-nav main-theme-color main-border-bottom2">详情</div>
                    <div id="nav2" class="favorite-right-nav">规格</div>
                    <div id="nav3" class="favorite-right-nav">售后保障</div>
                    <div id="nav4" class="favorite-right-nav">评价<span class="theme-color-red">2602</span></div>
                </div>
                <div class="favorite-right-content">
                	<div id="nav-content1" class="favorite-right-item item-visible">
                    	<img src="img/product/tw1.jpg" />
                        <img src="img/product/tw2.jpg" />
                        <img src="img/product/tw3.jpg" />
                        <img src="img/product/tw4.jpg" /> 
                         <img src="img/product/tw5.jpg" />
                        <img src="img/product/tw6.jpg" />
                        <img src="img/product/tw7.jpg" /> 
                    </div>
                    <div id="nav-content2" class="favorite-right-item">
                    	<div class="first-floor">
                        	<span>品牌名称：<span class="main-theme-color">良品铺子</span></span>
                            <img src="img/product/012.png">
                        </div>
	                        <div class="second-floor">
	                        	<p>产品参数：</p>
								<div>产品类型:&nbsp;烘炒类</div>
								<div>原料产地:&nbsp;巴基斯坦</div>
								<div>产地:&nbsp;湖北省武汉市</div>
								<div>配料表:&nbsp;进口松子、食用盐</div>
								<div>产品规格:&nbsp;210g</div>
								<div>保质期:&nbsp;180天</div>
								<div>产品标准号:&nbsp;GB/T 22165</div>
								<div>生产许可证编号：&nbsp;QS4201 1801 0226</div>
								<div>储存方法：&nbsp;请放置于常温、阴凉、通风、干燥处保存 </div>
								<div>食用方法：&nbsp;开袋去壳即食</div>
	                        </div>
                      
                    </div>
                    <div id="nav-content3" class="favorite-right-item">
                    	<div class="after-ensure">
                        	<img src="img/jifenxiangqing/014.png">
                            <span class="main-theme-color">卖家服务</span>
                        </div>
                    	<div class="after-ensure">
                        	<img src="img/jifenxiangqing/014.png">
                            <span class="main-theme-color">IShop承诺</span>
                            <p>
 	                           化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品
                               化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 
                               化妆品特性 化妆品特性 化妆品特性
                            </p>                           
                        </div>
                        <div class="after-ensure">
                        	<img src="img/jifenxiangqing/014.png">
                            <span class="main-theme-color">正品行货</span>                       
                            <p>化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性</p>
                        </div>
                        <div class="after-ensure">
                        	<img src="img/jifenxiangqing/014.png">
                            <span class="main-theme-color">正品行货</span>                       
                            <p>
 	                           化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品
                               化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 
                               化妆品特性 化妆品特性 化妆品特性
                            </p>
                            <p>
 	                           化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品
                               化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 
                               化妆品特性 化妆品特性 化妆品特性
                            </p>
                        </div>
                        <div class="after-ensure">
                        	<img src="img/jifenxiangqing/015.png">
                            <span class="main-theme-color">全国联保</span>                       
                            <p>化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性</p>
                        </div>
                        <div class="after-ensure">
                        	<img src="img/jifenxiangqing/016.png">
                            <span class="main-theme-color">无忧退换货</span>                       
                            <p>化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性</p>
                        </div>
                        <div class="after-ensure">
                            <span class="main-theme-color">无忧退换货</span>                       
                            <p>化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性 化妆品特性</p>
                        </div> 
                    </div>
                    <div id="nav-content4" class="favorite-right-item">
                    	<div id="eval-cont-box" class="progress-state">
                            <div class="eval-top-left"><p id="eval-rate" class="red">100%</p><span id="eval-rate-title">好评度</span></div>
                            <div class="eval-top-right">
                                <div><span>好评</span>
                                    <div class="eval-color" onClick="showEvalRate(1, this)"><div class="eval-red eval-box1"></div></div>
                                </div>
                                <div><span>中评</span>
                                    <div class="eval-color" onClick="showEvalRate(2, this)"><div class="eval-red eval-box2"></div></div>
                                </div>
                                <div><span>差评</span>
                                    <div class="eval-color" onClick="showEvalRate(3, this)"><div class="eval-red eval-box3"></div></div>
                                </div>
                            </div>
                        </div>
                        <div class="empty-div"></div>
                        <div class="radio-btn-div">
                        	<input type="radio" name="review" class="view-all" checked="checked">
                            <label>全部商评论（355）</label>
                            <input type="radio" name="review" class="view-good" >
                            <label>好评（355）</label>
                            <input type="radio" name="review" class="view-common" >
                            <label>中评（0）</label>
                            <input type="radio" name="review" class="view-bad" >
                            <label>差评（0）</label>  
                        </div>
                                   
                        <div class="review-content rate-good">
                        	<p>11:23</p>
                            <div class="review-content-text">
                            	<span>
                            		好吃不贵，经济实惠
                            	</span>
                                <div class="empty-div"></div>
                            </div>
                            <span>颜色：白色&nbsp;&nbsp;&nbsp;&nbsp;重量：500g</span>
                            <div class="review-content-img">
                            	<div class="img-item main-border-full2 ">
                            		<img src="img/product/01_small.jpg">
                                    
                                </div>
                                <div class="img-item border-white2 ">
                            		<img src="img/product/02_small.jpg" >
                                </div>
                                <div class="img-item border-white2 ">
                            			<img src="img/product/03_small.jpg" >
                                </div>
                            </div>
                            <div class="review-content-right">
								<div class="img-group">
									<img src="img/icon/hwbn40x40.jpg">
									<img src="img/icon/iconfont-good.png" style="width: 30px;height:30px;"class="margin-bottom-20">
								</div>
								
                            </div>
							<div class="preview-large-img-div">
								<img src="img/jifenxiangqing/021.png" class="preview-large-img">
							</div>
							<div class="vertical-space margin-top-20"></div>
                        </div>             
                        <div class="review-content rate-good">
                        	<p>11:23</p>
                            <div class="review-content-text">
                            	<span>
                            		好吃不贵，经济实惠
                            	</span>
                                <div class="empty-div"></div>
                            </div>
                            <span>颜色：白色&nbsp;&nbsp;&nbsp;&nbsp;重量：500g</span>
                            <div class="review-content-img">
                            	<div class="img-item main-border-full2 ">
                            		<img src="img/product/01_small.jpg">
                                    
                                </div>
                                <div class="img-item border-white2 ">
                            		<img src="img/product/02_small.jpg" >
                                </div>
                                <div class="img-item border-white2 ">
                            			<img src="img/product/03_small.jpg" >
                                </div>
                            </div>
                            <div class="review-content-right">
								<div class="img-group">
									<img src="img/icon/hwbn40x40.jpg">
									<img src="img/icon/iconfont-middle.png" style="width: 30px;height:30px;"class="margin-bottom-20">
								</div>
								
                            </div>
							<div class="preview-large-img-div">
								<img src="img/jifenxiangqing/021.png" class="preview-large-img">
							</div>
							<div class="vertical-space margin-top-20"></div>
                        </div>             
                        <div class="review-content rate-good">
                        	<p>11:23</p>
                            <div class="review-content-text">
                            	<span>
                            		好吃不贵，经济实惠
                            	</span>
                                <div class="empty-div"></div>
                            </div>
                            <span>颜色：白色&nbsp;&nbsp;&nbsp;&nbsp;重量：500g</span>
                            <div class="review-content-img">
                            	<div class="img-item main-border-full2 ">
                            		<img src="img/product/01_small.jpg">
                                    
                                </div>
                                <div class="img-item border-white2 ">
                            		<img src="img/product/02_small.jpg" >
                                </div>
                                <div class="img-item border-white2 ">
                            			<img src="img/product/03_small.jpg" >
                                </div>
                            </div>
                            <div class="review-content-right">
								<div class="img-group">
									<img src="img/icon/hwbn40x40.jpg">
									<img src="img/icon/iconfont-evaluate.png" style="width: 30px;height:30px;"class="margin-bottom-20">
								</div>
								
                            </div>
							<div class="preview-large-img-div">
								<img src="img/jifenxiangqing/021.png" class="preview-large-img">
							</div>
							<div class="vertical-space margin-top-20"></div>
                        </div>             
                        <div class="review-content rate-good">
                        	<p>11:23</p>
                            <div class="review-content-text">
                            	<span>
                            		好吃不贵，经济实惠
                            	</span>
                                <div class="empty-div"></div>
                            </div>
                            <span>颜色：白色&nbsp;&nbsp;&nbsp;&nbsp;重量：500g</span>
                            <div class="review-content-img">
                            	<div class="img-item main-border-full2 ">
                            		<img src="img/product/01_small.jpg">
                                    
                                </div>
                                <div class="img-item border-white2 ">
                            		<img src="img/product/02_small.jpg" >
                                </div>
                                <div class="img-item border-white2 ">
                            			<img src="img/product/03_small.jpg" >
                                </div>
                            </div>
                            <div class="review-content-right">
								<div class="img-group">
									<img src="img/icon/hwbn40x40.jpg">
									<img src="img/icon/iconfont-good.png" style="width: 30px;height:30px;"class="margin-bottom-20">
								</div>
								
                            </div>
							<div class="preview-large-img-div">
								<img src="img/jifenxiangqing/021.png" class="preview-large-img">
							</div>
							<div class="vertical-space margin-top-20"></div>
                        </div>             
                        <div class="review-content rate-good">
                        	<p>11:23</p>
                            <div class="review-content-text">
                            	<span>
                            		好吃不贵，经济实惠
                            	</span>
                                <div class="empty-div"></div>
                            </div>
                            <span>颜色：白色&nbsp;&nbsp;&nbsp;&nbsp;重量：500g</span>
                            <div class="review-content-img">
                            	<div class="img-item main-border-full2 ">
                            		<img src="img/product/01_small.jpg">
                                    
                                </div>
                                <div class="img-item border-white2 ">
                            		<img src="img/product/02_small.jpg" >
                                </div>
                                <div class="img-item border-white2 ">
                            			<img src="img/product/03_small.jpg" >
                                </div>
                            </div>
                            <div class="review-content-right">
								<div class="img-group">
									<img src="img/icon/hwbn40x40.jpg">
									<img src="img/icon/iconfont-good.png" style="width: 30px;height:30px;"class="margin-bottom-20">
								</div>
								
                            </div>
							<div class="preview-large-img-div">
								<img src="img/jifenxiangqing/021.png" class="preview-large-img">
							</div>
							<div class="vertical-space margin-top-20"></div>
                        </div>             
                        <div class="review-content rate-good">
                        	<p>11:23</p>
                            <div class="review-content-text">
                            	<span>
                            		好吃不贵，经济实惠
                            	</span>
                                <div class="empty-div"></div>
                            </div>
                            <span>颜色：白色&nbsp;&nbsp;&nbsp;&nbsp;重量：500g</span>
                            <div class="review-content-img">
                            	<div class="img-item main-border-full2 ">
                            		<img src="img/product/01_small.jpg">
                                    
                                </div>
                                <div class="img-item border-white2 ">
                            		<img src="img/product/02_small.jpg" >
                                </div>
                                <div class="img-item border-white2 ">
                            			<img src="img/product/03_small.jpg" >
                                </div>
                            </div>
                            <div class="review-content-right">
								<div class="img-group">
									<img src="img/icon/hwbn40x40.jpg">
									<img src="img/icon/iconfont-good.png" style="width: 30px;height:30px;"class="margin-bottom-20">
								</div>
								
                            </div>
							<div class="preview-large-img-div">
								<img src="img/jifenxiangqing/021.png" class="preview-large-img">
							</div>
							<div class="vertical-space margin-top-20"></div>
                        </div>             
                        <div class="review-content rate-good">
                        	<p>11:23</p>
                            <div class="review-content-text">
                            	<span>
                            		好吃不贵，经济实惠
                            	</span>
                                <div class="empty-div"></div>
                            </div>
                            <span>颜色：白色&nbsp;&nbsp;&nbsp;&nbsp;重量：500g</span>
                            <div class="review-content-img">
                            	<div class="img-item main-border-full2 ">
                            		<img src="img/product/01_small.jpg">
                                    
                                </div>
                                <div class="img-item border-white2 ">
                            		<img src="img/product/02_small.jpg" >
                                </div>
                                <div class="img-item border-white2 ">
                            			<img src="img/product/03_small.jpg" >
                                </div>
                            </div>
                            <div class="review-content-right">
								<div class="img-group">
									<img src="img/icon/hwbn40x40.jpg">
									<img src="img/icon/iconfont-good.png" style="width: 30px;height:30px;"class="margin-bottom-20">
								</div>
								
                            </div>
							<div class="preview-large-img-div">
								<img src="img/jifenxiangqing/021.png" class="preview-large-img">
							</div>
							<div class="vertical-space margin-top-20"></div>
                        </div>             
                        <div class="review-content rate-good">
                        	<p>11:23</p>
                            <div class="review-content-text">
                            	<span>
                            		好吃不贵，经济实惠
                            	</span>
                                <div class="empty-div"></div>
                            </div>
                            <span>颜色：白色&nbsp;&nbsp;&nbsp;&nbsp;重量：500g</span>
                            <div class="review-content-img">
                            	<div class="img-item main-border-full2 ">
                            		<img src="img/product/01_small.jpg">
                                    
                                </div>
                                <div class="img-item border-white2 ">
                            		<img src="img/product/02_small.jpg" >
                                </div>
                                <div class="img-item border-white2 ">
                            			<img src="img/product/03_small.jpg" >
                                </div>
                            </div>
                            <div class="review-content-right">
								<div class="img-group">
									<img src="img/icon/hwbn40x40.jpg">
									<img src="img/icon/iconfont-good.png" style="width: 30px;height:30px;"class="margin-bottom-20">
								</div>
								
                            </div>
							<div class="preview-large-img-div">
								<img src="img/jifenxiangqing/021.png" class="preview-large-img">
							</div>
							<div class="vertical-space margin-top-20"></div>
                        </div>             
                    </div>
                </div>
            </div>
        </div>   
    </div>
	<div class="empty-div"></div>
	<!----------------footer------------------->
    
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
    <script src="js/ishop/jquery-3.2.1.min.js"></script>
    <script src="js/ishop/main.js"></script>
    <script src="js/ishop/gongingshang.js"></script>
    <script src="js/ishop/MagicZoom.js"></script>
    <script src="js/ishop/ShopShow.js"></script>
    <script src="js/ishop/jifenxiangqing.js"></script>
</body>
</html>