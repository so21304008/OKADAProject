<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="keijiban.css" rel="stylesheet" type="text/css" media="all">
<title>rezult</title>
</head>
<style>
.newth{
margin-top:50px;}
.button{
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
	<%@include file="common/header.jsp"%>
<h1 align="center" class="newth">投稿完了！</h1>
<p align="center">
<button type=“button” onclick="location.href='selectress'" class="button">スレッドタイトルへ</button>
</p>

<%@include file="common/footer.jsp"%>
</body>
</html>