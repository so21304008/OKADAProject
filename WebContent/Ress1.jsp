<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title >返信</title>
<title>掲示板</title>
</head>
<style>
.hennji{
margin-top:50px;

margin-left:350px;
}
.usern{
margin-left:350px;
margin-top:5px:

}
.threadt{
margin-left:350px;
margin-top:30px:
}
.tt{
width: 400px;
height: 150px;
margin-left:460px;
}
.thd{
margin-top:30px;
margin-left:350px;
}
.table2{
color:#333;}

</style>
<body>
<section>
<h2 align="center">投稿一覧</h2>
			<div>
				<table class="thd">
					<tr>
						<th>スレッド番号&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
						<th>スレッド名</th>
					</tr>
						<c:forEach var="thread" items="${threads}">
					<tr>
						<td class="table1">${thread.id}</td>
						<td><a href="selectress?e=${thread.id}" class="table2">${thread.name}</a></td>
					</tr>
				</c:forEach>
				</table>
			</div>
</section>
<section>
<h2 class="hennji">返信</h2>
<form method="get" action="Ress">
			<p class="usern">ユ&nbspー&nbspザ&nbspー&nbsp名:<input type="text" name="user_name" value=""></p>
			<p class="threadt"> スレッド本文 :</p>
			<textarea name="res_text" cols="30" rows="3" maxlength="80"
				wrap="hard" placeholder="80字以内で入力してください。" class="tt"></textarea>
			<input type="submit" value="投稿">

</form>
</section>

</body>
</html>



