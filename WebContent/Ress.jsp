<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="common/header.jsp"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<title>返信</title>
<title>掲示板</title>
</head>
<body>
<h1>掲示板</h1>
<section>
<h2>投稿一覧</h2>
			<div>
				<table>
					<tr>
						<th>スレッド番号</th>
						<th>スレッド名</th>
					</tr>
						<tr>
							<td>${thread.id}</td>
							<td>${thread.name}</td>
						</tr>
				</table>
			</div>
</section>
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

</body>
</html>



