<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<<<<<<< HEAD
=======

>>>>>>> 57c77a6ad6342f9bdc4d470fcc0f1f702c2a2b39
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
	<li><a href="https://medaka.5ch.net/be/#3" target="_blank"
		rel="noopener">
			<div>
				<h2>1:バレンタインにチョコ買い占めてリア充泣かそうぜw</h2>
				<tr><td>${thread.threadNumber}</td><td>${thread.threadName}</td></tr>
				<h2>2:うちのおかんの飯が生物兵器だった件</h2>
			</div>
	</a></li>
	<li><a
		href="https://medaka.5ch.net/test/read.cgi/be/1535292231/l50"
		target="_blank" rel="noopener">
			<div>
				<h2>3:不登校の時に好きな人を弟に取られた話</h2>
			</div>
	</a></li>
</body>
</html>