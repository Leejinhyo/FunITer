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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style type="text/css">

body
{
	margin-left: 150px;
	margin-top: 200px;
	width: 600px;
	
}


#content {
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 600px;
	padding: 15px;
	margin: 30px;
}

#content h3 {
	margin: 0px;
	margin-bottom: 15px;
}

#under
{
	margin-left: 150px;
}

#table
{
	margin-left: 60px;
}
</style>

<script type="text/javascript">

	$(document).ready(function()
	{
		$("#next").click(function()
		{
			if ($("#user_pw").val() == "")
			{
				alert("비밀번호를 입력하세요");
				$("#user_pw").focus();
				return;
			}
			else if ($("#user_pw2").val() == "")
			{
				alert("비밀번호를 다시 한 번 입력하세요");
				$("#user_pw2").focus();
				return;
			}
			
			else if($("#user_pw").val().length < 6 || $("#user_pw").val().length > 16)
			{
				alert("비밀번호는 6자 이상 16자 이하로 구성되어야 합니다.");
				$("#user_pw").focus();
				return;
			}
			else if($("#user_pw").val() != $("#user_pw2").val() )
			{
				alert("입력하신 비밀번호가 서로 일치하지 않습니다.");
				$("#user_pw").focus();
				return;
			}
			 
			
			$("#myform").submit();
		});
		
	});
	
</script>

</head>
<body>

<h1>비밀번호 재설정</h1>
<hr>

<div>
	<span style="color: red;">비밀번호 변경</span><br>
	<span style="font: bold;">다른 아이디나 사이트에서 사용한 적 없는 안전한 비밀번호로 변경해주세요. </span>
	
	<div id="content">
	<form action="user_changepw.action" method="post" id="myform">
	<c:choose>
		<c:when test="${lists.user_code==null }">
		<table>
			<tr>
				<th>
				<span>사용자정보 없음.</span>
				</th>
			</tr>
		</table>
		
		
		<div id="under">
			<a href='user_login.action' class="btn btn-info">로그인페이지로 이동</a>
		</div>
		
		
		</c:when>
		
		<c:otherwise>
		<table>
			<tr>
				<th>
					<span style="color: blue;">${lists.user_name }</span>님의 새 비밀번호 입력
					<input type="text" id="user_code" name="user_code" value="${lists.user_code }" style="display: none;">
				</th>
					<td> 
						<input type="text" id="user_pw" name="user_pw" style="width: 150px;"> 
					</td>
				<tr>
					<th>비밀번호 확인</th>
					<td> 
						<input type="text" id="user_pw2" name="user_pw2" style="width: 150px;"> 
					</td>
				</tr>
		</table>	
		<span style="color: red;">영문, 숫자, 특수문자를 함께 사용하여(6자리 이상 16자 이하) 구성하시면 더 안전합니다!</span>
		
		
		<div id="under">
			<input type="button" id="next" name="next" value="확인" class="btn btn-info" style="width: 200px;">
		</div>
		
		</c:otherwise>
	</c:choose>
	
	</form>
	</div>
</div>

</body>
</html>