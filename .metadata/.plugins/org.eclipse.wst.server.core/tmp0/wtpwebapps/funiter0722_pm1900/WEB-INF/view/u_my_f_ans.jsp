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
		<h1 class="glyphicon glyphicon-tags">문의사항</h1>
		<hr>
		
		<!-- 아래 공간 -->
		<div>
			

		<div>
			<span style="color: green; font-size: 25px;">박초롱</span>님의 문의목록
			<br><br>
		<!-- 아래 공간 -->
		<div>
			
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th colspan="5">총 4건</th>
				</tr>
				<tr>
					<th style="width: 50px;">번호</th>
					<th style="width: 100px;">문의번호</th>
					<th style="width: 150px;">카테고리</th>
					<th style="width: 200px;">제목</th>
					<th style="width: 130px;">문의일자</th>
				</tr>
				
				<tr>
					<td>1</td>
					<td>1257</td>
					<td>[거래문의]</td>
					<td>
					<a href="u_customer_service2_2.jsp">무료나눔 게시판 1432번 게시글 삭제 처리 완료</a>
					<button type="button" class="glyphicon glyphicon-share-alt"></button>	
					</td>
					
					<td>2018.06.11</td>
				</tr>
				<tr>
					<td>1</td>
					<td>1257</td>
					<td>[거래문의]</td>
					<td>
					<a href="u_customer_service2_1.jsp">무료나눔 게시판 1432번 게시글 삭제 처리 완료</a>
					</td>
					<td>2018.06.11</td>
				</tr>
				<tr>
					<td>1</td>
					<td>1257</td>
					<td>[거래문의]</td>
					<td>
					<a href="u_customer_service2_1.jsp">무료나눔 게시판 1432번 게시글 삭제 처리 완료</a>
					</td>
					<td>2018.06.11</td>
				</tr>
				<tr>
					<td>1</td>
					<td>1257</td>
					<td>[거래문의]</td>
					<td>
					<a href="u_customer_service2_1.jsp">무료나눔 게시판 1432번 게시글 삭제 처리 완료</a>
					</td>
					<td>2018.06.11</td>
				</tr>
			</table>
		</div>
	</div>
		
	</div>
</div>
</div>
</body>
</html>