<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>welcome</title>
<style>
body {
	width: 1366px; height; auto;
	overflow: script;
	marging;
	0
	auto;
}

.banner {
	height: 380px;
	/**background: #ccc;**/
	margin-top: 2px;
	margin-bottom: 20px;
	position: relative;
	overflow: hidden;
}

.banner .content {
	width: 1060px;
	height: 450px;
	margin: 20px auto;
	position: relative;
}

.banner ul li img {
	width: 1024px;
	height: 450px;
}

.banner .content ul {
	width: 10000px;
	margin-left: -1024px;
}

.btn_left, .btn_right {
	display: inline-block;
	width: 80px;
	height: 150px;
	background: url(static/img/30.png) no-repeat;
	position: absolute;
	left: -16px;
	top: 90px;
	opacity: 0;
	transition: all ease 0.6s;
	cursor: pointer;
}

.btn_right {
	background-position: -120px 0;
	position: absolute;
	left: 950px;
	top: 90px;
}

.banner .content:hover .btn_left {
	opacity: 1;
}

.banner .content:hover .btn_right {
	opacity: 1;
}
</style>
<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
</head>
<body>

	<%@include file="common/header.jsp"%>
	<div class="banner">
		<div class='content'>
			<ul>
				<li class='fl'><a href="javascript:void(0)"> <img
						src="static/img/14.jpg " />
				</a></li>
				<li class='fl'><a href="javascript:void(0)"> <img
						src="static/img/11.png " />
				</a></li>
				<li class='fl'><a href="javascript:void(0)"> <img
						src="static/img/29.png " />
				</a></li>
				<li class='fl'><a href="javascript:void(0)"> <img
						src="static/img/19.jpg " />
				</a></li>
				<li class='fl'><a href="javascript:void(0)"> <img
						src="static/img/14.jpg " />
				</a></li>
				<li class='fl'><a href="javascript:void(0)"> <img
						src="static/img/11.png " />
				</a></li>
			</ul>
			<i class='btn_left'></i> <i class='btn_right'></i>
		</div>

	</div>
	<script>
		var leftBtn = $('.btn_left').eq(0); //左按钮
		var rightBtn = $('.btn_right').eq(0);//右按钮

		var ul = $('.banner .content ul').eq(0);

		var index = 0;
		var timer = null;

		var imgwidth = $('.banner .content ul li').width(); //获取轮播图片的宽度
		var len = $('.banner .content ul li').length - 2//获取总共的图片数量

		rightBtn.on('click', function() {
			clearTimeout(timer); //定时器清零
			timer = setTimeout(function() {
				index++;
				movePicture();
			}, 500);

		});

		leftBtn.on('click', function() {
			clearTimeout(timer); //定时器清零
			timer = setTimeout(function() {
				index--;
				movePicture();
			}, 500);
		});

		function movePicture() {

			$('.banner .content ul').animate({
				'margin-left' : -imgwidth * (index + 1)
			}, 1000, function() {
				if (index == len) {
					$(this).css('margin-left', -imgwidth);
					index = 0;
				}
				if (index == -1) {
					$(this).css('margin-left', -imgwidth * len);
					index = len - 1;
				}
			});
		}
	</script>
<<<<<<< HEAD
	<div class="itirann">
		<div class='logo-2'>――― タイトル一覧 ―――</div>
	</div>
		<!--表示-->
			<div>
				<table class="th">
					<tr>
						<th>スレッド番号&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
						<th>スレッド名&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
						<th>内容</th>
					</tr>

				<c:forEach var="thread" items="${threads}">
					<tr>
						<td class="table1">${thread.th_id}</td>
						<td><a href="selectress?e=${thread.th_id}" class="table2">${thread.name}</a></td>
						<td class="tb3">${thread.th_detalis}</td>
					</tr>
				</c:forEach>
				</table>
			</div>
=======
>>>>>>> 56f5e01b6838ef09247b55265d3ec16c3be70d39
	<%@include file="common/footer.jsp"%>
</body>
</html>