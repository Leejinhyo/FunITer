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
		width: 400px;
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
	
	<h1>고객센터</h1>
	<hr>

</div>

<div id="up">

	<span class="btn btn-default"><a href="u_customer_service1.jsp" style="color: gray;" >공지사항</a></span>
	<span class="btn btn-primary"><a href="u_customer_service2.jsp" style="color: white;" >문의게시판</a></span>
	<span class="btn btn-default"><a href="u_customer_service3_1.jsp" style="color: gray;" >신고접수</a></span>
	<span class="btn btn-default"><a href="u_customer_service4.jsp" style="color: gray;" >FAQ</a></span>
	<span class="btn btn-default"><a href="u_customer_service5.jsp" style="color: gray;" >이용가이드</a></span>
</div>

<br><br>

<div>
		<div id="top">
			<select id="search" style="height: 50px;">
				<option value="0">검색분류</option>
				<option value="1">제목</option>
				<option value="2">내용</option>
			</select>
			<input type="text" id="searchData" name="searchData" placeholder="내용을 입력해주세요." style="height: 50px;">
			<input type="button" id="search" name="search" value="검색" class="btn btn-primary">
			<br><br>
		</div>
		
		<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th colspan="6">총 4건</th>
				</tr>
				<tr>
					<th style="width: 80px;">번호</th>
					<th style="width: 200px;">카테고리</th>
					<th style="width: 200px;">작성자</th>
					<th style="width: 500px; text-align: center;">제목</th>
					<th></th>
					<th style="width: 100px;">문의일</th>
				</tr>
				
				<tr>
					<td style="width: 50px;">132</td>
					<td style="width: 100px;">[이용문의]</td>
					<td style="width: 100px;">ipconfig</td>
					<td style="width: 300px; text-align: center;">제가 왜 제재를 받았는지 억울합니다. </td>
					<td>
						<button type="button" class="glyphicon glyphicon-share-alt"></button>
					</td>
					<td style="width: 100px;">문의일</td>
				</tr>
				
				<tr>
					<td style="width: 50px;">132</td>
					<td style="width: 100px;">[이용문의]</td>
					<td style="width: 100px;">ipconfig</td>
					<td style="width: 300px; text-align: center;">제가 왜 제재를 받았는지 억울합니다. </td>
					<td>
						<button type="button" class="glyphicon glyphicon-share-alt"></button>
					</td>
					<td style="width: 100px;">문의일</td>
				</tr>
				
				<tr>
					<td style="width: 50px;">132</td>
					<td style="width: 100px;">[이용문의]</td>
					<td style="width: 100px;">ipconfig</td>
					<td style="width: 300px; text-align: center;">제가 왜 제재를 받았는지 억울합니다. </td>
					<td>
						<button type="button" class="glyphicon glyphicon-share-alt"></button>
					</td>
					<td style="width: 100px;">문의일</td>
				</tr>
				
				<tr>
					<td style="width: 50px;">132</td>
					<td style="width: 100px;">[이용문의]</td>
					<td style="width: 100px;">ipconfig</td>
					<td style="width: 300px; text-align: center;">제가 왜 제재를 받았는지 억울합니다. </td>
					<td>
						<button type="button" class="glyphicon glyphicon-share-alt"></button>
					</td>
					<td style="width: 100px;">문의일</td>
				</tr>
			</table>
			
			<input type="button" value="문의하기" id="request" name="request" class="btn btn-primary">
			
			<a href="#"><span style="float: right;">>>내가 쓴 게시물</span></a>



</div>

</body>
</html>