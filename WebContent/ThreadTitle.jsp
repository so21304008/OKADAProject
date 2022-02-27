<%@  page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@include file="common/header.jsp"%>
<!DOCTYPE html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
if($('.Textarea').val().length == 0){
	  $('.Btn').prop('disabled', true);
	}
	$('.Textarea').on('keydown keyup keypress change', function(){
	  if($(this).val().length == 0){
	    $('.Btn').prop('disabled', true);
	  } else if($(this).val().length > 30) {
	    $('.Btn').prop('disabled', true);
	  } else {
	    $('.Btn').prop('disabled', false);
	  }
	});
</script>
<title>タイトル一覧</title>
</head>
<style>
.sure{
margin-top:50px;
}
.textt {
    color: #333;
    line-height: normal;
    font-family: "Microsoft YaHei", Tahoma, Verdana, SimSun;
    font-style: normal;
    font-variant: normal;
    font-size-adjust: none;
    font-stretch: normal;
    font-weight: normal;
    margin-top:20px;
    margin-bottom: 0px;
    margin-left: 490px;
    padding-top: 4px;
    padding-right: 0px;
    padding-bottom: 4px;
    padding-left: 200px;
    font-size: 15px;
    outline-width: medium;
    outline-style: none;
    outline-color: invert;
    border-top-left-radius: 3px;
    border-top-right-radius: 3px;
    border-bottom-left-radius: 3px;
    border-bottom-right-radius: 3px;
    text-shadow: 0px 1px 2px #fff;
    background-attachment: scroll;
    background-repeat: repeat-x;
    background-position-x: left;
    background-position-y: top;
    background-size: auto;
    background-origin: padding-box;
    background-clip: border-box;
    background-color: rgb(255, 255, 255);
    margin-right: 8px;
    border-top-color: #ccc;
    border-right-color: #ccc;
    border-bottom-color: #ccc;
    border-left-color: #ccc;
    border-top-width: 1px;
    border-right-width: 1px;
    border-bottom-width: 1px;
    border-left-width: 1px;
    border-top-style: solid;
    border-right-style: solid;
    border-bottom-style: solid;
    border-left-style: solid;
}
.enniu1 {
    background-color: #847bba;
    background-image: linear-gradient(to bottom, #847bba, #7568ba);
    border: 1px solid #493e87;
    box-shadow: inset 0 1px 0 #bab6d4, inset 0 -1px 0 #655aa1, inset 0 0 0 1px #948dba, 0 2px 4px rgb(0 0 0 / 20%);
    color: white;
    text-shadow: 0 1px 2px rgb(0 0 0 / 30%);
    padding: 6px;
    margin-left: -10px;
    border-radius: 5px;
}
.table1{
	padding-left:540px;
}
.as{
margin-top:30px;
}
.img1{
height:100px;
margin-left:-320px;
margin-top:150px;
}
.logo1 {
    color: #333;
    line-height: 72px;
    font-size: 30px;
    margin-left: 620px;
    margin-top:180px;
    margin-rigth:10px;
    display: inline-block;
    font-weight: 500;
    float: left;
}
.table2{
color:#333;}
</style>
<body>
<img src="static/img/6.png "  class="img1">
<div class='logo1'>OKADAProject</div>
	<!-- 検索フォーム -->
	<form action="SearchThread" method="get">
		<input type="text" name="textbox" class="textt"> <input type="submit" value="検索" class="enniu1">
	<!-- スレッド一覧 -->
		<h1 align="center" class="sure">スレッドタイトル一覧</h1>
	<div>
		<table class="as">

			<tr>
				<th class="table1">スレッド番号&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</th>
				<th>スレッド名</th>
			</tr>
					<c:forEach var="thread" items="${threads}">
					<tr>
						<td class="table1"><a href="selectress?e=${thread.id}" class="table2">${thread.id}</a></td>
						<td><a href="selectress?e=${thread.id}" class="table2">${thread.name}</a></td>
					</tr>
				</c:forEach>
		</table>
	</div>
	</form>
</body>
</html>