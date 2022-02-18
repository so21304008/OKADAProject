<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@include file="common/header.jsp"%>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>user</title>
<style>
body {
	width: 1366px; height; auto;
	overflow: script;
	marging;
	0
	auto;
}

* {
	margin: 0px;
	padding: 0px;
}

.bg {
	width: 100%;
	height: 100vh;
	text-align: center;
	color: #fff;
	background-image: linear-gradient(160deg, #0078ff 20%, #002abb 80%);
	display: flex;
	justify-content: center;
	align-items: center;
}

/* mian */
.content {
	height: 45%;
	width: 80%;
	max-width: 360px;
	background: #fff;
	position: absolute;
	top: 50%;
	left: 50%;
	transform: translate(-50%, -50%);
	padding: 20px;
	padding-top: 60px;
	box-shadow: 0 16px 24px 2px rgba(0, 0, 0, 0.14), 0 6px 30px 5px
		rgba(0, 0, 0, 0.12), 0 8px 10px -5px rgba(0, 0, 0, 0.3);
}

.content .logo {
	text-align: center;
	line-height: 3;
	color: #333;
	font-size: 30px;
	position: relative;
	top: -25px;
}

.main {
	display: flex;
}

/* 入力 */
.inputbox {
	outline-style: none;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 3px;
	padding: 13px 14px;
	font-size: 14px;
	font-weight: 700;
	width: 100%;
	box-sizing: border-box;
}

#tip {
	color: red;
}

/* ボタン */
.btn {
	width: 100%;
	height: 40px;
	border-width: 0px;
	border-radius: 3px;
	background: #1E90FF;
	cursor: pointer;
	outline: none;
	color: white;
	font-size: 17px;
}

.btn:hover {
	background: #5599FF;
}
</style>
</head>

<body>
	<form action="LoginServlet" method="post">
		<div class="bg">

		</div>
		<div class="content">
			<div class='logo'>OKADAProject</div>
			<input class="inputbox" type="text" name="username"
				placeholder="Please input Username" id="name" /> <br /> <input
				class="inputbox" type="password" name="pwd"
				placeholder="Please input Password" id="password" /> <br /> <input
				type="submit" class="btn" onclick="loginFn()" />
		</div>
		<script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
		<script>
			function loginFn() {
				console.log({
					username : $('#name').val(),
					password : $('#password').val()
				})
				$
						.ajax({
							url : '',
							method : 'POST',
							data : {
								username : $('#name').val(),
								password : $('#password').val()
							},
							success : function(res) {
								// yes
								console.log(res)
								if (res.code == 200) {
									window.location.href = '/swagger-ui/index.html?data='
											+ res.data
								}
							},
							error : function(err) {
								// no
								console.log(err)
							}
						})
			}
		</script>
	</form>
</body>

</html>