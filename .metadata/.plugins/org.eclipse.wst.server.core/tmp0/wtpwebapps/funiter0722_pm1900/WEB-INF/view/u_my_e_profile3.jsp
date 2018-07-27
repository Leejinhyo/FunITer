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

#content {
	border: 1px solid #ccc;
	border-radius: 5px;
	width:1500px;
	padding: 15px;
	margin: 30px;
}

#content h3 {
	margin: 0px;
	margin-bottom: 15px;
}

#side {
	margin-top: 0px;
}



</style>
<script type="text/javascript">
	
	$(document).ready(function()
	{
		if ($(".updatebtn").click(function()
		{
			alert("비밀번호 일치하는지 확인 후 수정");
			$("#updateform").submit();
			
		}));
		
		
		
		
	});

</script>
</head>
<body>
<div>
<c:import url="first_main_up.jsp"></c:import>

</div>


<!-- 전체 공간 -->
<div>
	<!-- 왼쪽공간. -->
	<div style="display: inline-block;">
		<c:import url="u_my_side.jsp"></c:import>
	</div>
	<!-- 오른쪽공간 -->
	<div style= "display: inline-block;">
		<h1 class="glyphicon glyphicon-tags">개인정보</h1>
		<hr>
		
<div id="up">

	<span class="btn btn-default"><a href="u_my_e_profile1.jsp" style="color: gray;" >수신 쪽지함</a></span>
	<span class="btn btn-default"><a href="u_my_e_profile2.jsp" style="color: gray;" >송신 쪽지함</a></span>
	<span class="btn btn-success"><a href="u_my_e_profile3.jsp" style="color: white;" >개인정보 수정</a></span>
		
</div>
		<!-- 아래 공간 -->
		<div>
		
		<form action="u_my_e_profile4.action" method="get" id="updateform">
			<p>개인정보를 수정하기 위해서 다시 한번 비밀번호를 입력해 주십시오. </p>
			
			<span>비밀번호</span>
			<input type="password" id="pwCheck" name="pwCheck">
			<input type="button" value="입력" id="enter" name="enter" class="btn btn-info"> 
			<br><br>
			
			<input type="button" value="수정" id="update" name="update" class="btn btn-info updatebtn" style="width: 150px;">
			<input type="button" value="탈퇴" id="out" name="out" class="btn btn-danger" style="width: 150px;" onclick="u_out.jsp">
			
		</form>
		
		</div>
</div>
</div>
</body>
</html>