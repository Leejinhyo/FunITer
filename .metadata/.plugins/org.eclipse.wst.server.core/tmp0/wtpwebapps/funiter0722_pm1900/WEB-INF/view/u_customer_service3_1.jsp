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
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
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

table th
{
	width: 100px;
}

div span 
{	
	margin-right: 20px; 
	width: 200px; 
	height: 40px;
}
</style>


</head>

<body>

<div>
	<c:import url="first_main_up.jsp"></c:import>
</div>

<br><br>

<div>
	<h3 style="margin-left: 46.5%; display: inline; ">신 고 접 수</h3> 
	<input type="button" value="로그아웃" class="btn btn-info" onclick="location.href='logout.action'" style="display: inline; margin-left: 30%; margin-top: 5%; text-align: right;">
</div>

<div id="up" style="margin-left: 24%;">
	<span class="btn btn-success" onclick="location.href='user_customer_service1.action'" >공지사항</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service2.action'">문의게시판</span>
	<span class="btn btn-danger" onclick="location.href='user_customer_service3_1.action'">신고접수</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service4.action'">FAQ</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service5.action'">이용가이드</span>
</div>


<br><br>

<div>
		<div id="content" style="margin-left: 300px;" >
			<span style="font: bold;">신고 내용 작성.</span>
			<hr>
			<table>
				<tr>
					
					<th>카테고리</th>
					<td>
						<span ><input type="radio" id="cate" name="cate">회원신고</span>
					</td>	
				</tr>
				<tr>
					<th>제목</th>
					<td>
						<input type="text" id="subject" name="subject">
					</td>
				</tr>
				<tr>
					<th>본문</th>
					<td>
						<textarea rows="10" cols="40"></textarea>
					</td>
				</tr>
				<tr>
					<th>
					</th>
				</tr>
				<tr>
					<th>
					</th>
				</tr>
			</table>
	</div>
	

	
	<div>
	
	
	<input type="button" value="고객센터 첫 페이지" id="list" name="list" onclick="" class="btn btn-default" style="margin-left: 400px;">
	<input type="button" value="제출하기" id="upload" name="upload" onclick="" class="btn btn-primary">
	</div>
</div>

</body>
</html>