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
<title>Del_finded_info</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<style type="text/css">
#content 
{
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 700px;
	padding: 15px;
	margin: auto;
	
	text-align: center;
}

#content h3 {
	margin: 0px;
	margin-bottom: 15px;
	text-align: center;
}

#under
{
	vertical-align: middle;
}

table th
{
	text-align:  center;
	width: 150px;
}
</style>
<script type="text/javascript">
	$(document).ready(function()
	{
		$("#next").click(function()
		{
			if($("#new_pw1").val().length < 6 || $("#new_pw1").val().length > 16)
			{
				alert("비밀번호는 6자 이상 16자 이하로 구성되어야 합니다.");
				return;
			}
			else if($("#new_pw1").val() != $("#new_pw2").val() )
			{
				alert("입력하신 비밀번호가 서로 일치하지 않습니다.");
				return;
			}
			
			
		});
		
	});
	
</script>
</head>
<body>

<h3 style="text-align: center;">비밀번호 재설정</h3>
<hr>

<div>
	<div id="content">
	<span style="color: red;">비밀번호 변경</span><br>
	<span style="font: bold;">다른 아이디나 사이트에서 사용한 적 없는 안전한 비밀번호로 변경해주세요. </span>
	

	<table>
		<tr>
			<th>새 비밀번호</th>
			<td> 
				<input type="password" id="new_pw1" name="new_pw1" style="width: 150px;"> 
			</td>
		<tr>
			<th>비밀번호 확인</th>
			<td> 
				<input type="password" id="new_pw2" name="new_pw2" style="width: 150px;"> 
			</td>
	</table>
		<br>
		<span style="color: red;">영문, 숫자, 특수문자를 함께 사용하여(6자리 이상 16자 이하) 구성하시면 더 안전합니다!</span>
		
		<div id="under">
			<input type="button" id="next" name="next" value="확인" class="btn btn-info" style="width: 200px; margin-top: 9px;">
		</div>

	</div>
</div>

</body>
</html>