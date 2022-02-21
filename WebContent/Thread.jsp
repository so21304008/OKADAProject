<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<%@include file="common/header.jsp"%>
<head>
<meta charset="UTF-8">
<title>スレッド</title>
</head>

<body>
<form action="ress" method="get">
<h1>タイトル挿入</h1>
<p>おとんの痔が切れた</p>

<section>
<h2>返信</h2>
<form method="get" action="Ress">
			ユーザー名 :<input type="text" name="user_name" value=""><br>
			 スレッド本文<br>
			<textarea name="res_text" cols="30" rows="3" maxlength="80"
				wrap="hard" placeholder="80字以内で入力してください。"></textarea>
			<input type="submit" value="投稿">
</form>
</section>

</form>
</body>
</html>