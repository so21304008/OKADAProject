<%@ page language="java" contentType="text/html; charset=UTF-8"
<<<<<<< HEAD
    pageEncoding="UTF-8"%>
=======
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

>>>>>>> ooo
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>タイトル一覧</title>
</head>
<body>
	<h1>スレッドタイトル一覧</h1>
	<!-- 検索フォーム -->
	<form action="user_list.php" method="post">
		検索<input type="text" name="id"> <input type="submit">
	</form>
	<!-- スレッド一覧 -->
	<div>
		<table>
			<tr>
				<th>スレッド番号</th>
				<th>スレッド名</th>
			</tr>

			<c:forEach var="thread" items="${threads}">
				<tr>
					<td>${thread.id}</td>
					<td>${thread.name}</td>
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>