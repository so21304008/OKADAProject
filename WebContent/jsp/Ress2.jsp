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
</section>
<section>
<h2>返信</h2>
<form action="../ress" method="post">

<div id="new-reply-73564" class="bbp-reply-form">
	<fieldset class="bbp-form">

<legend>返信先: </legend>
<div>
<fieldset class="bbp-form">
<legend>あなたの情報:</legend>

<p>
<label for="bbp_anonymous_author">お名前 (必須)</label><br />
<input type="text" id="bbp_anonymous_author" value="" size="40" maxlength="100"
	name="bbp_anonymous_name" autocomplete="off" />
</p>

</fieldset>

<div class="bbp-the-content-wrapper">
<textarea id="bbp_reply_content" class="bbp-the-content"
name="bbp_reply_content" cols="60" rows="12"></textarea>

</div>
<p class="form-allowed-tags"><br />
</p>
<input type="submit" value="投稿">
</fieldset>
</form>
</section>

</body>
</html>
