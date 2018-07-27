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
		if ($(".delete").click(function()
		{
			alert("삭제버튼");
			
		}));

		if ($(".enter_btn").click(function()
		{
			alert("배송정보입력버튼");
		
		}));
		
		if ($(".claim_btn").click(function()
		{
			alert("신고버튼");
		
		}));		

		if ($(".cancel_btn").click(function()
		{
			alert("취소버튼");
		
		}));		
						
		
		
	});


</script>
</head>
<body>

<div id="home">
	<c:import url="u_main_home.jsp"></c:import>
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
			<h4 class="glyphicon glyphicon-tags">프리미엄 판매내역</h4>
			<hr>
		</div>	
		
		<!-- 아래 공간 -->
		<div>
			<h4 class="glyphicon glyphicon-tags">프리미엄 등록상품 관리</h4>

		<div>
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th style="width: 30px;">번호</th>
					<th style="width: 100px;">게시글번호</th>
					<th style="width: 100px;">상품분류</th>
					<th style="width: 100px;">제목</th>
					<th style="width: 100px;">게시글 작성일</th>
					<th style="width: 100px;">상품가격</th>
					<th style="width: 100px;">삭제</th>
				</tr>
				
				<tr>
					<td style="width: 30px;">1</td>
					<td style="width: 100px;">12357</td>
					<td style="width: 100px;">아동가구/유아침대</td>
					<td style="width: 100px;">유아침대 팔아요</td>
					<td style="width: 100px;">2018/06/18</td>
					<td style="width: 100px;">40,000원</td>
					<td style="width: 100px;">
						<input type="button" id="form" name="form" class="glyphicon glyphicon-trash delete" value="삭제">
					</td>
				</tr>			
			</table>
		</div>

	</div>
	
			<!-- 아래 공간 -->
		<div>
			<h4 class="glyphicon glyphicon-tags">프리미엄 판매 진행 상황</h4>

		<div>
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th style="width: 30px;">번호</th>
					<th style="width: 100px;">게시글번호</th>
					<th style="width: 100px;">주문번호</th>
					<th style="width: 100px;">상품분류</th>
					<th style="width: 100px;">제목</th>
					<th style="width: 100px;">게시글작성일</th>
					<th style="width: 150px;">거래시작일</th>
					<th style="width: 100px;">거래상태</th>
					<th style="width: 200px;">상품가격</th>
					<th style="width: 100px;">배송방법</th>
					<th style="width: 100px;">배송정보</th>
					<th style="width: 100px;">배송일</th>
					<th style="width: 100px;">배송정보</th>
					<th style="width: 100px;">신고/취소</th>
					<th style="width: 100px;">상태변경일</th>
				</tr>
				
				<tr>
					<td style="width: 30px;">1</td>
					<td style="width: 100px;">12357</td>
					<td style="width: 100px;">4531</td>
					<td style="width: 100px;">아동가구/유아침대</td>
					<td style="width: 100px;">유아침대 팔아요</td>
					<td style="width: 100px;">2018/06/18</td>
					<td style="width: 100px;">2018/06/18</td>
					<td style="width: 100px;">판매중</td>
					<td style="width: 100px;">40,000원</td>
					<td style="width: 100px;">직거래</td>
					<td style="width: 100px;">
						<input type="button" class="enter_btn btn btn-info" value="입력" id="enter" name="enter">
					</td>
					<td style="width: 100px;">2018/06/21</td>
					<td style="width: 100px;">
						<input type="button" class="claim_btn btn btn-info" value="신고" id="claim" name="claim">
						<input type="button" class="cancel_btn btn btn-info" value="취소" id="cancel" name="cancel">
					</td>
					<td style="width: 100px;">2018/06/21</td>
				</tr>			
			</table>
		</div>

	</div>
	
	
	
</div>
</div>
</body>
</html>