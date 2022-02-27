<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>スレッド一覧</title>
</head>
<style>
.itirann .logo-2 {
	color: #333;
	font-size: 30px;
	padding-top: 7px;
	font-weight: 500;
	text-align: center;
	margin-top:10px;
	margin-bottom: 30px;
}

.moji {
	color: #333;
	margin-top: 20px;
	text-align: center;
}

.moji1 {
	color: #333;
	margin-top: 20px;
	text-align: center;
}
.table2{
color:#333;}
.th{
margin-left:400px;
}
.tb3{
padding:10px;
}
</style>
	<%@include file="common/header.jsp"%>
<body>
<div class="itirann">
		<div class='logo-2'>――― タイトル一覧 ―――</div>
	</div>
		<!--表示-->
			<div>
				<table class="th">
					<tr>
						<th>スレッド番号&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
						<th>スレッド名&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
						<th>内容</th>
					</tr>

				<c:forEach var="thread" items="${threads}">
					<tr>
						<td class="table1"><a href="selectress?e=${thread.id}" class="table2">${thread.id}</a></td>
						<td><a href="selectress?e=${thread.id}" class="table2">${thread.name}</a></td>
						<td class="tb3"><a href="selectress?e=${thread.id}" class="table2"><c:out value="${thread.detalis}"/></a></td>
					</tr>
				</c:forEach>

				</table>
			</div>
</body>
</html>