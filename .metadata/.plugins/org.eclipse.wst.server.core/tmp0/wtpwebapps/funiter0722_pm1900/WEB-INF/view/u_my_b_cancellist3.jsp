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
<div id="up">

	<span class="btn btn-default"><a href="u_my_b_cancel.jsp" style="color: gray;">취소 모아보기</a></span>
	<span class="btn btn-default"><a href="u_my_b_cancellist1.jsp" style="color: gray;" >취소한 내역_종합</a></span>
	<span class="btn btn-default"><a href="u_my_b_cancellist2.jsp" style="color: gray;" >취소한 내역_예약</a></span>
	<span class="btn btn-success"><a href="u_my_b_cancellist3.jsp" style="color: white;" >판매취소된 내역</a></span>
	<span class="btn btn-default"><a href="u_my_b_cancellist4.jsp" style="color: gray;" >구매취소된 내역</a></span>
		
</div>
		
		<div>
			<h3 class="glyphicon glyphicon-tags">판매취소된 내역</h3>
			<hr>
		</div>	
		
		<!-- 아래 공간 -->
		<div>
			

		<div>
			<h2>종합 거래</h2>
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th style="width: 30px;">번호</th>
					<th style="width: 100px;">취소번호</th>
					<th style="width: 100px;">주문번호</th>
					<th style="width: 100px;">거래분류</th>
					<th style="width: 100px;">제목</th>
					<th style="width: 100px;">결제일</th>
					<th style="width: 100px;">취소신청일</th>
					<th style="width: 100px;">취소사유</th>
					<th style="width: 100px;">취소일</th>
				</tr>
				
				<tr>
					<td style="width: 30px;">3</td>
					<td style="width: 100px;">3215</td>
					<td style="width: 100px;">5724</td>
					<td style="width: 100px;">일반</td>
					<td style="width: 100px;">유아침대 팔아요</td>
					<td style="width: 100px;">2018/06/18</td>
					<td style="width: 100px;">2018/06/20</td>
					<td style="width: 100px;">잘못 판매 올림</td>
					<td style="width: 100px;">2018/06/21</td>
				</tr>			
			</table>
		</div>

		<div>
			<h2>예약 거래</h2>
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th style="width: 30px;">번호</th>
					<th style="width: 100px;">취소번호</th>
					<th style="width: 100px;">주문번호</th>
					<th style="width: 100px;">제목</th>
					<th style="width: 100px;">판매금액</th>
					<th style="width: 100px;">거래시작일</th>
					<th style="width: 100px;">예약일</th>
					<th style="width: 100px;">취소신청일</th>
					<th style="width: 100px;">취소사유</th>
					<th style="width: 100px;">잔여일수</th>
					<th style="width: 100px;">위약금액</th>
					<th style="width: 100px;">처리일</th>
				</tr>
				
				<tr>
					<td style="width: 30px;">3</td>
					<td style="width: 100px;">3215</td>
					<td style="width: 100px;">5724</td>
					<td style="width: 100px;">유아침대 팔아요</td>
					<td style="width: 100px;">10,000원</td>
					<td style="width: 100px;">2018/06/18</td>
					<td style="width: 100px;">2018/06/20</td>
					<td style="width: 100px;">2018/06/18</td>
					<td style="width: 100px;">잘못 구매함</td>
					<td style="width: 100px;">2</td>
					<td style="width: 100px;">5,000원</td>
					<td style="width: 100px;">2018/06/18</td>
				</tr>			
			</table>
		</div>
		
		
		
	</div>
</div>
</div>
</body>
</html>