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
<title>Del_update_login.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	function delupdatelogin()
	{
		 $("#loginform").submit();
	}
	
	function delremove()
	{
			if ($("#delId").val()== "")
			{
				alert("삭제 전 본인 확인을 위해 로그인해주시기 바랍니다.");
				return;
			}
			else
			{
				//alert("아니여기");
				if (confirm("모든 정보가 삭제됩니다. 정말로 탈퇴를 진행하시겠습니까?") == true)
				{    
					//확인
					var form = document.loginform;
					form.action = "delremove.action";
					form.submit();
				}
				else
				{   //취소
				    return;
				}
			} 
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

#under 
{
	text-align: center;
	
}

html, body {width: 100%; height: 100%;}
		.container {width: 70%; height: 70%; margin: 40px auto; }
		.outer {display: table; width: 100%; height: 100%; }
		.inner {display:table-cell; vertical-align: middle; text-align: center;}
		.centered {position: relative; display: inline-block; width: 50%; height: 30%; padding: 1em; text-align:left;}
</style>

</head>
<body>

<div class="container">
<div class="outer">
<div class="inner">
<div class="centered">
	

	<div style="margin-left: 120px;">
		<c:import url="Del_mypage_import.jsp"></c:import>
	</div>
	
	<div>
		<h3>업체 가입 정보 수정</h3>
		<hr>
	</div>
	<div id="content">
		<form action="delupdatelogincheck.action" id="loginform" name="loginform" method="post">
			<p>다시 한 번 로그인 후 이용가능합니다.</p>

			<div class="form-group form-inline" style="width: 300px;">
				<div class="input-group">
					<div class="input-group-addon" style="width: 80px">아이디</div>
					<input type="text" id="delId" name="del_id" placeholder="아이디를 입력하세요"
						required="required" class="form-control">
				</div>

				<div class="input-group">
					<div class="input-group-addon" style="width: 80px">비밀번호</div>
					<input type="password" id="delPw" name="del_pw" placeholder="비밀번호를 입력하세요"
						required="required" class="form-control">
				</div>
			</div>

			<div id="under">
				<input type="submit" value="정보 수정" class="btn btn-danger" onclick="delupdatelogin()"> 
				<input type="button" value="회원 탈퇴" class="btn btn-default" onclick="delremove()"> 
			</div>	
		</form>

	</div>

	<footer> (유)회사소개 서울시 강남구 테헤란로 5길 7 KG타워 10, 11, 12층 유한회사
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









