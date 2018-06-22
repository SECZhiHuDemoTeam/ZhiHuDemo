<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="edu.nju.zhihudemo.vo.QuestionVO" %>
<%@ page contentType="text/html; charset=gb2312"%>
<%@ page language="java" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	List<QuestionVO> list = new ArrayList();
	list.add(new QuestionVO(0,"戒糖 15 天，才发现以前的快乐都是糖给的","糖=毒品？糖对人的坏处，一直以来被隐瞒，我们以为油和盐是肥胖和疾病的罪魁祸首，但事实上，碳水化合物和糖才真正的影响到了我们的健康。为什么糖会让人迅速发胖呢？因为当你摄入了糖之后，就会直接转化为血糖，这时身体会分泌胰岛素，胰岛素会将糖迅速转化为脂肪。就算我们知道糖不健康，但是依然欲罢不能，这是因为糖在不知不觉中，已经让你成瘾。糖会促使大脑分泌让人心情愉悦的多巴胺，这种物质会让人上瘾，这和可卡因的原理是一致的。" ,2,2,5,"user1"));
	list.add(new QuestionVO(1,"如何评价卡马吉他？","随手翻了一下知乎关于卡马吉他的回答，除了寥寥几个4、5年前的刻板偏见外，再就是小权老师的释疑部分，系统直面的去讨论这个品牌的论述基本没有，如今作为一名销售卡马吉他的小店经营者，不敢说多么的理客中，不过也还是有义务站出来，从自己的经历来给大家介绍一下自己所代理的这个品牌吧。",10,2,303,"userTest"));
	list.add(new QuestionVO(2,"接触人性阴暗面最多的是哪种职业？","我觉得应该是农村的神婆。他们能接触到最黑暗、最邪恶的真实经历，有杀子，有弑父、有害人、有渎神，有的简直匪夷所思，令人发指。我前天就听一个神婆的女儿讲了几件事情。我在苏州新买的院子，就在寒山寺旁边，所以经常过去散步。一来二去，就和那边的和尚熟了，偶尔去看看和尚敲钟，跟居士们聊聊天，喂喂那边的流浪猫，也不错。昨天端午节，我去庙里避节，听到了一个关于“神婆”的真实故事。这个故事是一个香客讲的，这个香客来自遥远的四川，还是个女香客，还很漂亮。她想找庙里的知客，给刚过世的母亲做一场法事。原本我还奇怪，虽然寒山寺有名气，也不至于千里迢迢从四川赶过来，后来才知道，她不是赶过来，而是“逃”过来的。女香客母亲的身份很特别，是一个“神婆”。" ,20,13,1030,"user2"));
	session.setAttribute("list", list);
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<title>Home</title>
<!---css--->
<link href="${pageContext.request.contextPath}/css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="${pageContext.request.contextPath}/css/leestyle.css" rel='stylesheet' type='text/css' />
<!---css--->

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<link href='https://fonts.googleapis.com/css?family=Oregano' rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
</head>
<body>
	<!---header--->
		<div class="header">
			<div class="container">
				<nav class="navbar navbar-default">
					<div class="container-fluid">
			<!-- Brand and toggle get grouped for better mobile display -->
						<div class="navbar-header">
							<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
								<span class="sr-only">Toggle navigation</span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
								<span class="icon-bar"></span>
							</button>
							<div class="navbar-brand">
								<h1><a href="index.jsp">知乎DEMO</a></h1>
							</div>
						</div>

			<!-- Collect the nav links, forms, and other content for toggling -->
						<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
							<ul class="nav navbar-nav">
								<li class="active"><a href="index.jsp">首页 <span class="sr-only">(current)</span></a></li>
								<li><a href="trends.html">发现</a></li>
								<li><a href="trends.html">话题</a></li>

							</ul>

						</div><!-- /.navbar-collapse -->
					</div><!-- /.container-fluid -->
				</nav>
			</div>
		</div>
		<!---header--->
	<!---header--->

	<div class="content">
		<div class="Designers-section">
			<div class="container">

				<h2>热门问题</h2>
				<div class="Designers-grids">
				<c:forEach items="${list}" varStatus="i" var="item" >
					<div class="Designers-grids">
				<div class="DesignersList">
					<div class="col-md-12 Designer-grid1">
						<div class="col-md-1 Designer-grid">
							<a href="#" class="mask">
								<img src="images/n1.jpg" class=" mask img-responsive zoom-img" alt="" /></a>
						</div>
						<div class="col-md-11 Designer-grid">
								<a href="/questionInfo" style="color: grey;"><h5 > ${item.username} </h5></a>
						</div>
						<div class="col-md-12 Designer-grid1">


								<a href="/questionInfo"><h4> ${item.name} </h4></a>
								<p> ${item.description} </p>
							<div class="grid_5">
							<h5>
							<a href="#"><span class="label label-danger">${item.like_count}个点赞 </span></a>
							<a href="#"><span class="label label-warning">${item.comment_count}条评论</span></a>
							<a href="#"><span class="label label-default">${item.watch_count}次浏览</span></a>
							<a href="#"><span class="label label-primary">分享</span></a>

						</h5>
						</div>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
					<div class="clearfix"></div>
					</div>
				</c:forEach>

				</div>

			</div>
		</div>
	</div>
	<!--Designers-->

	</div>
	</div>
	</div>
	<!---looks-->
	<!---footer--->
	<div class="details">
		<div class="container">
			<div class="details-grids">
				<div class="col-md-3 details-grid">
					<figure class="icon">
						<i class="glyphicon glyphicon-map-marker"></i>
					</figure>
					<p>Sydney 7891 St Vincent</p>
				</div>
				<div class="col-md-3 details-grid">
					<figure class="icon">
						<i class="glyphicon glyphicon-earphone"></i>
					</figure>
					<p>Telephone :  +1 900 703 7065</p>
				</div>
				<div class="col-md-3 details-grid">
					<figure class="icon">
						<i class="glyphicon glyphicon-envelope"></i>
					</figure>
					<p>E-mail : <a href="mailto:example@mail.com"> example@mail.com</a></p>
				</div>
				<div class="col-md-3 details-grid">
					<figure class="icon">
						<i class="glyphicon glyphicon-send"></i>
					</figure>
					<p>FAX :  +1 900 998 5555</p>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!---footer--->
	<!--copy-->
	<div class="copy-section">
		<div class="container">
			<p>Copyright &copy; 2016.Company name All rights reserved.More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></p>
		</div>
	</div>
	<!--copy-->
</body>
</html>