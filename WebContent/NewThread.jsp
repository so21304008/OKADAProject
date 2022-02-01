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
        名前:<input type="text" name="name" value=""><br>
        本文:<textarea name="comment" cols="30" rows="3" maxlength="80" wrap="hard"
 placeholder="80字以内で入力してください。"></textarea>
        <input type="submit" value="投稿">
    </form>
</section>
<section>
    <h2>投稿一覧</h2>
    <p>投稿はまだありません</p>
</section>
</body>
</html>