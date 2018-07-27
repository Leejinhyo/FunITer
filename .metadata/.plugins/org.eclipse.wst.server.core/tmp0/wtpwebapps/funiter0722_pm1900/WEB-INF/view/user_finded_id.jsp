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
<title>Insert title here</title>

<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style type="text/css">

body
{
	margin-left: 300px;
	margin-top: 200px;
	width: 500px;
	
}


#content {
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 500px;
	padding: 15px;
	margin: 30px;
}

#content h3 {
	margin: 0px;
	margin-bottom: 15px;
}

#under
{
	margin-left: 50px;
}

#table
{
	margin-left: 60px;
}
</style>

</head>
<body>

<h1>아이디 찾기</h1>
<hr>

<div>
	

	<c:choose>
		<c:when test="${lists.user_code==null }">
			<span>사용자정보 없음.</span>
		</c:when>
		
		<c:otherwise>
			<p>사용자 아이디는 <span style="color: blue">${lists.user_id } 입니다.</span></p>
			<span>${lists.signup_d }</span>
		</c:otherwise>
	</c:choose>

	<div id="under">
		<input type="button" name="login" id="login" value="로그인하기" class="btn btn-info" onclick="location.href='user_login.action'">
		<input type="button" name="find_pw" id="find_pw" value="비밀번호찾기" class="btn btn-info" onclick="location.href='user_find_pw.action'">
	</div>

	 
<%-- 

	<span style="font: bold;">고객님의 정보와 일치하는 아이디 입니다.</span>
	
	<div id="info" >
		<span class="glyphicon glyphicon-heart" style="font-size: 30px;"></span>
		${str }
		<span>가입일 : 2018.01.12</span>
	</div>
	
	
	 --%>
		

</div>

</body>
</html>