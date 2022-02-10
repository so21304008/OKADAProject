<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="UTF-8">
<link href="keijiban.css" rel="stylesheet" type="text/css" media="all">
<title>掲示板</title>
</head>
<body>
	<h1>掲示板</h1>
	<section>
		<h2>新規投稿</h2>
		<form action="" method="post">
			スレッドID :<input type="text" name="name" value=""><br>
			スレッドタイトル :<input type="text" name="name" value=""><br>
			スレッドカテゴリー : <select>
				<option value=""></option>
				<option value="news">ニュース</option>
				<option value="game">ゲーム</option>
				<option value="korona">コロナ</option>
				<option value="weather">天気</option>
			</select> スレッド本文 :
			<textarea name="comment" cols="30" rows="3" maxlength="80"
				wrap="hard" placeholder="80字以内で入力してください。"></textarea>
			<input type="submit" value="投稿">
		</form>
	</section>
	<section>
		<h2>投稿一覧</h2>
		<li><a href="https://medaka.5ch.net/be/#3" target="_blank"
			rel="noopener">
				<div>
					<h2>1:バレンタインにチョコ買い占めてリア充泣かそうぜw</h2>
				</div>
	</section>
</body>
</html>