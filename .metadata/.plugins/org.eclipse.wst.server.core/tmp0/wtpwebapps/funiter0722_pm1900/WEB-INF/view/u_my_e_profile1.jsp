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
	
		
		if ($(".deletebtn").click(function()
		{
			alert("삭제요청");
		}));
		
		if ($(".search").click(function()
		{
			alert("입력");
			
		//	alert($(".searchData").text());
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

	<span class="btn btn-success"><a href="u_my_e_profile1.jsp" style="color: white;" >수신 쪽지함</a></span>
	<span class="btn btn-default"><a href="u_my_e_profile2.jsp" style="color: gray;" >송신 쪽지함</a></span>
	<span class="btn btn-default"><a href="u_my_e_profile3.jsp" style="color: gray;" >개인정보 수정</a></span>
		
</div>
	
		
		<!-- 아래 공간 -->
		<div>
			

		<div>
			<span style="color: green; font-size: 25px;">박초롱</span>님의 수신목록
			<br><br>
			<select id="search">
				<option value="1">아이디</option>
				<option value="2">내용</option>
			</select>
			<input type="text" id="searchData" name="searchData" placeholder="검색어 입력">
			<input type="button" id="search" name="search" value="검색" class="btn btn-primary search">
			<br><br>
			
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th>번호</th>
					<th style="width: 30px;">선택</th>
					<th style="width: 100px;">보낸사람</th>
					<th style="width: 300px;">제목</th>
					<th style="width: 100px;">날짜</th>
					<th style="width: 100px;">삭제</th>
				</tr>
				
				<tr>
					<td style="width: 30px;">3</td>					
					<td style="width: 30px;">
						<input type="checkbox" id="checkNum" name="checkNum">
					</td>
					<td style="width: 100px;">김보근1</td>
					<td style="width: 100px;">이거 네고해주세요.딱봐서 ~</td>
					<td style="width: 100px;">2018/06/19</td>
					<td style="width: 100px;">
						<input type="button" value="삭제" class='deletebtn btn btn-info'> 
					</td>
				</tr>			
			</table>
		
		</div>
		
	</div>
</div>
</div>
</body>
</html>