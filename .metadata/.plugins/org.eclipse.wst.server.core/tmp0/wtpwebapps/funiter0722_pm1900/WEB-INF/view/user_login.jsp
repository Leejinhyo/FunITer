<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">




	function login()
	{
		
		$("#myform").submit();
	}


</script>
<style type="text/css">
#content {
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 400px;
	padding: 15px;
	margin: 30px;
}

#content h3 {
	margin: 0px;
	margin-bottom: 15px;
}


html, body {width: 100%; height: 100%;}
		.container {width: 70%; height: 70%; margin: 40px auto; }
		.outer {display: table; width: 100%; height: 100%; }
		.inner {display:table-cell; vertical-align: middle; text-align: center;}
		.centered {position: relative; display: inline-block; width: 50%; height: 30%; padding: 1em; text-align:left;}

</style>
<script type="text/javascript">
	
	$(document).ready(function()
	{
		$("#log_check").click(function()
		{
			alert("로그인정보 확인 후 신규면 마이페이지, 한번 이상이면, 내상품");
			
			$("#myform").submit();
		})
	});
	
</script>
</head>
<body>
<div class="container">
<div class="outer">
<div class="inner">
<div class="centered">

<div style="height: 30px;">
<c:import url="first_main_up.jsp"></c:import>
</div>
	<div>
		<h3>로그인 및 회원가입</h3>
		<hr>
	</div>


	<div id="up" style="margin-left: 130px;">
		<input type="button" class="btn btn-danger" value="일반회원">
		<a href="dellogin.action"><input type="button" class="btn btn-default" value="업체회원"></a>
	</div>
	
	<div id="content">
		<form action="logincheck.action" id="myform" method="post">
		
			<div class="form-group form-inline" style="display: inline-block;" >

				
				<table id="table">
					<tr>
						<th>아이디</th>
						<td>
						<div>
							<input type="text" id="user_id" name="user_id" placeholder="UserId"
							required="required" class="form-control">
						</div>
						<td rowspan="2">
							<input type="button" value="로그인" style="height: 70px;" class="btn btn-danger" id="log_check">						
						</td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td>
							<div>
								<input type="password" id="user_pw" name="user_pw" placeholder="UserPw" 
								required="required" class="form-control">
							</div>
						</td>
					</tr>
					
				</table>
			</div>
		</form>
		<div id="under">
			<a href="user_signup.action"><input type="button" value="회원가입" class="btn btn-danger" ></a> 
			<a href="user_find_id.action"><input type="button" value="아이디찾기" class="btn btn-danger"></a> 
			<a href="user_find_pw.action"><input type="button" value="비밀번호찾기" class="btn btn-danger"></a>

		</div>
	</div>

	<footer> 
		<a href="login.action">(유)회사소개</a> 
		서울시 강남구 테헤란로 5길 7 KG타워 10, 11, 12층 유한회사
			알지피코리아 |대표자 : 강신봉 | 통신판매업신고:제
			2011-서울강남-03322호|개인정보담당자:privacy@yogiyo.co.kr|제휴문의:partnership@rgpkorea.co.k
			호스트서비스사업자:(주)심플렉스인터넷 
	</footer>
</div>
</div>
</div>
</div>
</body>
</html>









