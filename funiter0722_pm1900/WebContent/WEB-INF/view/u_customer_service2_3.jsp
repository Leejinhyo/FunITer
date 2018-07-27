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

table th
{
	width: 100px;
}
</style>

</head>
<body>
<div>
<c:import url="first_main_up.jsp"></c:import>

</div>

<div>
	<h3 style="margin-left: 46.5%; display: inline; ">문 의 게 시 판</h3> 
	<input type="button" value="로그아웃" class="btn btn-info" onclick="location.href='logout.action'" style="display: inline; margin-left: 30%; margin-top: 5%; text-align: right;">
</div>

<div id="up">

	<span class="btn btn-success" onclick="location.href='user_customer_service1.action'" >공지사항</span>
	<span class="btn btn-danger" onclick="location.href='user_customer_service2.action'">문의게시판</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service3_1.action'">신고접수</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service4.action'">FAQ</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service5.action'">이용가이드</span>
</div>

<br><br>

<div>
		<div id="content" style="margin-left: 300px;" >
			<span style="font: bold;">문의하고 싶은 사항을 적어주세요.</span>
			<hr>
			<table>
				<tr>
					
					<th>카테고리</th>
					<td>
						<select id="question"  style="height: 50px;">
							<option value="0">이용문의</option>
							<option value="1">거래문의</option>
						</select>
						<span style="float: right;"><input type="checkbox" value="0" id="secret" name="secret"><span style="color:red; float: right;">비밀글 여부</span></span>
						
						
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
	
	<input type="button" value="작성" id="upload" name="upload" onclick="" class="btn btn-primary" style="margin-left: 400px;">
	<input type="button" value="뒤로가기" id="list" name="list" onclick="" class="btn btn-default">
	</div>
</div>

</body>
</html>