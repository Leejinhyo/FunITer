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

	#content
	{
		border: 1px solid #ccc;
		border-radius: 5px;
		width: 700px;
		height : 500px;
		padding: 15px;
		margin: 30px;
	}
	
	#content h3
	{
		margin: 0px; 
		margin-bottom: 15px;
	}


#up
{
	font-size: 15px;
	margin-left: 100px;
}

#top
{
	margin-left: 300px;
}

.btn
{
	font-size: 30px;
	width: 200px;
}
</style>

</head>
<body>
<div>
<c:import url="first_main_up.jsp"></c:import>

</div>


<div>
	<h3 style="margin-left: 46.5%; display: inline; ">공 지 사 항</h3> 
	<input type="button" value="로그아웃" class="btn btn-info" onclick="location.href='logout.action'" style="display: inline; margin-left: 30%; margin-top: 5%; text-align: right;">
</div>
<div id="up">

	<span class="btn btn-danger" onclick="location.href='user_customer_service1.action'" >공지사항</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service2.action'">문의게시판</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service3_1.action'">신고접수</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service4.action'">FAQ</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service5.action'">이용가이드</span>
</div>


<br><br>

<div>
		
		<div id="content" style="margin-left: 300px;" >
			<h4>[공지] 현충일 전 서비스 휴무 안내</h4>
			<hr>
			<h4>게시일 | 2018/06/04</h4>
			<hr>
			<h4>본문</h4>
			<hr>
			안녕하세요? 팔고가구사고가구 입니다.

				현충일 휴무와 관하여 안내사항을 알려드립니다.
				공휴일인 현중일에는 전화 업무 및 안전거래서비스 입금확인과 송금이 진행되지 않을 예정이므로 이용에 참고해 주시기 바랍니다.
			<hr>
	</div>
	<input type="button" value="목록으로" id="list" name="list" onclick="" class="btn btn-primary" style="margin-left: 580px;">


</div>

</body>
</html>