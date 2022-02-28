<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
body {
	width: 1366px; height; auto;
	overflow: script;
	marging;
	0
	auto;
}

* {
	padding: 0;
	margin: 0;
	font-family: "明朝体";
}
/**bean**/
.fl {
	float: left;
}

.fr {
	float: right;
}

.header {
	height: 72px;
	background-image: linear-gradient(160deg, #84acd9 20%, #315ae5 80%);
}

.header .logo {
	color: #fff;
	line-height: 72px;
	font-size: 30px;
	margin-left: 20px;
	display: inline-block;
	font-weight: 500;
	float: left;
}

.header ul li.first {
	margin-left: 30px;
}

.header ul li {
	float: left;
	color: #fff;
	display: inline-block;
	width: 112px;
	height: 72px;
	text-align: center;
	line-height: 72px;
	cursor: pointer;
}

a {
	color: #fff;
	text-decoration: none;
	display: block;
}

.header ul li:hover {
	background: #74b0e2;
}

.header .login {
	float: right;
	color: #fff;
	line-height: 72px;
	margin-right: 35px;
}

.header ul li.first {
	margin-left: 30px;
	background: #74b0e2;
}

ul li {
	list-style: none;
}
.login1:hover{
	background: #74b0e2;
}
.registered:hover{
	background: #74b0e2;
}
</style>
<div class="header">
	<div class='logo'>OKADAProject</div>
	<ul>
		<li class='first'><a href="index.jsp">ホーム</a></li>
		<li><a href="index">スレッド一覧</a></li>
		<li><a href="ThreadTitle.jsp">検索</a></li>
		<li><a href="NewThread.jsp">書き込み</a></li>
	</ul>
</div>