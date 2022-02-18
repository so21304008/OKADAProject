<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<%@include file="common/header.jsp"%>
<head>
<meta charset="UTF-8">
<link href="keijiban.css" rel="stylesheet" type="text/css" media="all">
<title>掲示板</title>
</head>
<style>
.title{
	margin-top:50px;
	margin-left:445px;
	font-weight: bold;
}
.category{margin-top:20px;margin-left:445px;font-weight: bold;}
.date{margin-top:20px;margin-left:445px;font-weight: bold;}
.text{margin-top:20px;
    width: 407px;
    height: 149px;
}
.nai{
font-weight: bold;
margin-left:50px;
}
.newth{
margin-top:50px;}
.enniu2{
    background-color: #847bba;
    background-image: linear-gradient(to bottom, #847bba, #7568ba);
    border: 1px solid #493e87;
    box-shadow: inset 0 1px 0 #bab6d4, inset 0 -1px 0 #655aa1, inset 0 0 0 1px #948dba, 0 2px 4px rgb(0 0 0 / 20%);
    color: white;
    text-shadow: 0 1px 2px rgb(0 0 0 / 30%);
    padding: 6px;
    margin-left: -10px;
    margin-top:10px;
    border-radius: 5px;
}
</style>
<body>
	<section>
		<h1 align="center" class="newth">新規投稿</h1>
		<form method="get" action="NewThread">
			<p class="title">
				タ  &nbsp&nbspイ  &nbspト &nbspル：<input type="text" name="th_title" value="">
			</p>
			<p class="category">
				カ  テ&nbspゴ リ ー：<input type="text" name="th_category" value="">
			</p>
			<p align="center" class="nai">
				内 &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp容：
				<textarea name="maintext" class="text" wrap="hard"
					placeholder="80字以内で入力してください。"></textarea>
			</p>
			<p align="center">
				<input type="submit" value="投      稿" class="enniu2">
			</p>
		</form>
	</section>
</body>
</html>