<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
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
			<c:forEach var="thread" items="${threads}">
				<tr>
					<td>${thread.text}</td>
					<td>${thread.user_name}</td>
				</tr>
			</c:forEach>

<p>投稿はまだありません</p>

</body>
</html>
