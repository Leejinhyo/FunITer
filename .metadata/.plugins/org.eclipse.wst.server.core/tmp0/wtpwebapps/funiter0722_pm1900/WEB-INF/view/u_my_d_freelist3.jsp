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
		
		<div>
			<h4 class="glyphicon glyphicon-tags">무료나눔 보증금 환급 내역</h4>
			<hr>
		</div>	
		
		<!-- 아래 공간 -->
		<div>
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th style="width: 30px;">번호</th>
					<th style="width: 100px;">주문번호</th>
					<th style="width: 100px;">대분류</th>
					<th style="width: 100px;">제목</th>
					<th style="width: 100px;">구매일</th>
					<th style="width: 100px;">배송일</th>
					<th style="width: 100px;">수령일</th>
					<th style="width: 100px;">환급금액</th>
					<th style="width: 100px;">환급일</th>
				</tr>
				
				<tr>
					<td style="width: 30px;">1</td>
					<td style="width: 100px;">12357</td>
					<td style="width: 100px;">침실가구</td>
					<td style="width: 100px;">유아침대 팔아요</td>
					<td style="width: 100px;">2018/06/18</td>
					<td style="width: 100px;">2018/06/19</td>
					<td style="width: 100px;">2018/06/20</td>
					<td style="width: 100px;">5,000원</td>
					<td style="width: 100px;">201806/24</td>
				</tr>			
			</table>
		</div>


	</div>

</div>
</body>
</html>