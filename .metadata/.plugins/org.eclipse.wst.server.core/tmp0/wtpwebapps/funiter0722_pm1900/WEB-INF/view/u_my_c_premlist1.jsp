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
		if ($(".myform").click(function()
		{
			alert("신청서클릭");	
		}));
		
		if ($(".cancel_req").click(function()
		{
			alert("출장취소요청");	
		}));

		if ($(".agree").click(function()
		{
			alert("승인버튼");	
		}));
		if ($(".disagree").click(function()
		{
			alert("거절버튼");	
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
			<h4 class="glyphicon glyphicon-tags">프리미엄 신청 및 진행상황</h4>
			<hr>
		</div>	
		
		<!-- 아래 공간 -->
		<div>
			<h4 class="glyphicon glyphicon-tags">프리미엄 신청</h4>

		<div>
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th style="width: 30px;">번호</th>
					<th style="width: 100px;">접수번호</th>
					<th style="width: 100px;">대분류</th>
					<th style="width: 100px;">소분류</th>
					<th style="width: 100px;">프리미엄 신청일</th>
					<th style="width: 100px;">나의신청서</th>
					<th style="width: 100px;">출장예정일</th>
					<th style="width: 150px;">출장취소</th>
					<th style="width: 100px;">신청 접수 결과</th>
					<th style="width: 100px;">접수결정일</th>
				</tr>
				
				<tr>
					<td style="width: 30px;">1</td>
					<td style="width: 100px;">12357</td>
					<td style="width: 100px;">침실가구</td>
					<td style="width: 100px;">침대</td>
					<td style="width: 100px;">2018/06/20</td>
					<td style="width: 100px;">
						<input type="button" value="★" id="form" name="form" class="myform">
					</td>
					<td style="width: 100px;">2018/06/25<span>오후</span></td>
					<td style="width: 100px;">
						<input type="button" value="취소" id="cancel" name="cancel" class="cancel_req">
					</td>
					<td style="width: 150px; color: red;">접수불가</td>
					<td style="width: 100px;">2018/01/27</td>
				</tr>			
			</table>
		</div>

	</div>
	
			<!-- 아래 공간 -->
		<div>
			<h4 class="glyphicon glyphicon-tags">프리미엄 진행상황</h4>

		<div>
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th style="width: 30px;">번호</th>
					<th style="width: 100px;">접수번호</th>
					<th style="width: 100px;">대분류</th>
					<th style="width: 100px;">소분류</th>
					<th style="width: 100px;">나의신청서</th>
					<th style="width: 100px;">출장일</th>
					<th style="width: 150px;">출장결과</th>
					<th style="width: 100px;">산출 상품 가격</th>
					<th style="width: 200px;">승인/거절</th>
					<th style="width: 100px;">진행상황</th>
				</tr>
				
				<tr>
					<td style="width: 30px;">1</td>
					<td style="width: 100px;">12357</td>
					<td style="width: 100px;">침실가구</td>
					<td style="width: 100px;">침대</td>
					<td style="width: 100px;">
						<input type="button" value="★" id="form" name="form" class="myform" >
					</td>
					<td style="width: 100px;">2018/06/25<span>오후</span></td>
					<td style="width: 100px;">판매가능</td>
					<td style="width: 100px;">750,000원</td>
					<td style="width: 200px;">
						<input type="button" value="승인" id="agree" name="agree" class="agree btn btn=warning" style="width: 70px;">
						<input type="button" value="거절" id="disagree" name="disagree" class="disagree btn btn=warning" style="width: 70px;">
					</td>
					<td style="width: 150px; color: red;">게시글 등록</td>
				</tr>			
			</table>
		</div>

	</div>
	
	
	
</div>
</div>
</body>
</html>