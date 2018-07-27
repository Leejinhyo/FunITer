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
		if ($(".agree_btn").click(function()
		{
			alert("승인버튼");
			
		}));

		if ($(".disagree_btn").click(function()
		{
			alert("거절버튼");
			
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
		
		
		
		<div>
			<h3 class="glyphicon glyphicon-tags">구매취소 요청 내역</h3>
			<hr>
		</div>	
		
		<!-- 아래 공간 -->
		<div>
			

		<div>
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th style="width: 30px;">번호</th>
					<th style="width: 100px;">주문번호</th>
					<th style="width: 100px;">거래분류</th>
					<th style="width: 100px;">제목</th>
					<th style="width: 100px;">거래시작일</th>
					<th style="width: 100px;">취소신청일</th>
					<th style="width: 100px;">취소사유</th>
					<th style="width: 150px;">응답</th>
					<th style="width: 100px;">응답한 상태</th>
					<th style="width: 100px;">응답일자</th>
				</tr>
				
				<tr>
					<td style="width: 30px;">3</td>
					<td style="width: 100px;">3215</td>
					<td style="width: 100px;">일반</td>
					<td style="width: 100px;">유아침대 팔아요</td>
					<td style="width: 100px;">2018/06/18</td>
					<td style="width: 100px;">2018/06/20</td>
					<td style="width: 100px;">잘못 판매올림</td>
					<td style="width: 150px;">
						<input type="button" value="승인" class="agree_btn btn btn-info" id="agree" name="agree" style="50px;">
						<input type="button" value="거절" class="disagree_btn btn btn-warning" id="disagree" name="disagree" style="50px;">
					</td>
					<td style="width: 100px;">대기</td>
					<td style="width: 100px;">2018/01/27</td>
				</tr>			
			</table>
		</div>

		
		
		
		
	</div>
</div>
</div>
</body>
</html>