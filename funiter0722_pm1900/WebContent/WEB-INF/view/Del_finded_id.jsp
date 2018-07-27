<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix ="c" uri ="http://java.sun.com/jsp/jstl/core" %>
<% 
	request.setCharacterEncoding("UTF-8"); 
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Del_finded_id</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style type="text/css">
#content {
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 800px;
	padding: 15px;
	margin: 30px;
}

#content h3 {
	margin: 0px;
	margin-bottom: 15px;
	
}

</style>
</head>
<body>
<div class="container">
<div class="outer">
<div class="inner">
<div class="centered">
<h1>아이디 찾기</h1>
<hr>

<div id="content">
	<span style="font: bold;">고객님의 정보와 일치하는 아이디 입니다.</span>

	<div id="info" >
		<span class="glyphicon glyphicon-user" style="font-size: 20px;"></span>
		씽씽용달&nbsp;&nbsp;&nbsp;&nbsp;
		<span>가입일 : 2018.01.12</span>
	</div>
	<br>	
	<div id="under">
		<input type="button" name="login" id="login" value="로그인하기" class="btn btn-info">
		<input type="button" name="find_pw" id="find_pw" value="비밀번호찾기" class="btn btn-info">
	</div>
	
		

</div>
</div>
</div>
</div>
</div>
</body>
</html>