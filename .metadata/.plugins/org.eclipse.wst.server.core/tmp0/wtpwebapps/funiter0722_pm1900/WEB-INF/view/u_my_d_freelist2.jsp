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
		if ($(".buycancel").click(function()
		{
			alert("구매취소버튼");
		}));
		if ($(".receivebtn").click(function()
		{
			alert("수령버튼");
		}));
		if ($(".claimbtn").click(function()
		{
			alert("신고버튼");
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
			<h4 class="glyphicon glyphicon-tags">나의 나눔받은 내역</h4>
			<hr>
		</div>	
		
		<!-- 아래 공간 -->
		<div>
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th style="width: 30px;">번호</th>
					<th style="width: 100px;">주문번호</th>
					<th style="width: 100px;">게시판번호</th>
					<th style="width: 100px;">상품분류</th>
					<th style="width: 100px;">제목</th>
					<th style="width: 100px;">배송방법</th>
					<th style="width: 100px;">거래시작일</th>
					<th style="width: 100px;">거래상태</th>
					<th style="width: 100px;">배송정보</th>
					<th style="width: 100px;">배송일</th>
					<th style="width: 100px;">구매취소</th>
					<th style="width: 100px;">수령/신고</th>
					<th style="width: 100px;">상태변경일</th>
				</tr>
				
				<tr>
					<td style="width: 30px;">1</td>
					<td style="width: 100px;">12357</td>
					<td style="width: 100px;">47357</td>
					<td style="width: 100px;">침실가구</td>
					<td style="width: 100px;">유아침대 팔아요</td>
					<td style="width: 100px;">직거래</td>
					<td style="width: 100px;">2018/06/18</td>
					<td style="width: 100px;">배송대기</td>
					<td style="width: 100px;">우체국17-058-453</td>
					<td style="width: 100px;">2018-01-26</td>
					<td style="width: 100px;">
						<input type="button" id="cancel" name="cancel" value="취소" class="btn btn-info buycancel">
					</td>
					<td style="width: 200px;">
						<input type="button" id="receive" name="receive" value="수령" class="btn btn-info receivebtn">
						<input type="button" id="claim" name="claim" value="신고" class="btn btn-info claimbtn">
					</td>
					<td style="width: 100px;">2018/01/26</td>
				</tr>			
			</table>
		</div>


	</div>

</div>
</body>
</html>