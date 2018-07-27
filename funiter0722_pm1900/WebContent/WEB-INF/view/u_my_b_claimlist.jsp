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
			<h3 class="glyphicon glyphicon-tags">나의 거래중 신고한 내역</h3>
			<hr>
		</div>	
		
		<!-- 아래 공간 -->
		<div>
			<span style="color: green; font-size: 25px;">구매중 신고 내역(일반, 프리미엄)</span>
			
			
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th style="width: 50px;">번호</th>
					<th style="width: 100px;">신고번호</th>
					<th style="width: 100px;">주문번호</th>
					<th style="width: 100px;">거래분류</th>
					<th style="width: 100px;">제목</th>
					<th style="width: 100px;">거래시작일</th>
					<th style="width: 100px;">신고일</th>
					<th style="width: 100px;">신고사유</th>
					<th style="width: 100px;">판매자(피신고자)</th>
					<th style="width: 100px;">신고결과</th>
				</tr>
				<tr>
					<td style="width: 50px;">3</td>
					<td style="width: 100px;">3563</td>
					<td style="width: 100px;">2345</td>
					<td style="width: 100px;">일반</td>
					<td style="width: 100px;">유아침대팔아요</td>
					<td style="width: 100px;">2018/06/16</td>
					<td style="width: 100px;">2018/06/24</td>
					<td style="width: 100px;">제품하자</td>
					<td style="width: 100px;">김보근</td>
					<td style="width: 100px;">판매자증빙성공</td>
				</tr>
				
			</table>
		</div>
		<!-- ※ 구매중 신고 내역(무료나눔) -->	
		<div>
			<span style="color: green; font-size: 25px;">구매중 신고 내역(무료나눔)</span>
			
			
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th style="width: 50px;">번호</th>
					<th style="width: 100px;">신고번호</th>
					<th style="width: 100px;">주문번호</th>
					<th style="width: 100px;">제목</th>
					<th style="width: 100px;">거래시작일</th>
					<th style="width: 100px;">신고일</th>
					<th style="width: 100px;">신고사유</th>
					<th style="width: 100px;">판매자</th>
					<th style="width: 100px;">신고결과</th>
				</tr>
				<tr>
					<td style="width: 50px;">3</td>
					<td style="width: 100px;">3563</td>
					<td style="width: 100px;">2345</td>
					<td style="width: 100px;">유아침대팔아요</td>
					<td style="width: 100px;">2018/06/16</td>
					<td style="width: 100px;">2018/06/24</td>
					<td style="width: 100px;">배송지연</td>
					<td style="width: 100px;">김보근</td>
					<td style="width: 100px;">판매자증빙성공</td>
				</tr>
				
			</table>
		</div>
		<!-- ※ 판매중 신고 내역(무료나눔) -->	
		<div>
			<span style="color: green; font-size: 25px;">판매중 신고 내역(일반, 프리미엄)</span>
			
			
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th style="width: 50px;">번호</th>
					<th style="width: 100px;">신고번호</th>
					<th style="width: 100px;">주문번호</th>
					<th style="width: 100px;">거래분류</th>
					<th style="width: 100px;">제목</th>
					<th style="width: 100px;">거래시작일</th>
					<th style="width: 100px;">신고일</th>
					<th style="width: 100px;">신고사유</th>
					<th style="width: 100px;">구매자</th>
					<th style="width: 100px;">신고결과</th>
				</tr>
				<tr>
					<td style="width: 50px;">3</td>
					<td style="width: 100px;">3563</td>
					<td style="width: 100px;">2345</td>
					<td style="width: 100px;">프리미엄</td>
					<td style="width: 100px;">유아침대 팔아요</td>
					<td style="width: 100px;">2018/06/16</td>
					<td style="width: 100px;">2018/06/19</td>
					<td style="width: 100px;">약속불이행</td>
					<td style="width: 100px;">김보근</td>
					<td style="width: 100px;">판매자 증빙</td>
				</tr>
				
			</table>
		</div>
		<!-- ※ 판매중 신고 내역(무료나눔) -->	
		<div>
			<span style="color: green; font-size: 25px;">판매중 신고 내역(무료나눔)</span>
			
			
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th style="width: 50px;">번호</th>
					<th style="width: 100px;">신고번호</th>
					<th style="width: 100px;">주문번호</th>
					<th style="width: 100px;">제목</th>
					<th style="width: 100px;">거래시작일</th>
					<th style="width: 100px;">신고일</th>
					<th style="width: 100px;">신고사유</th>
					<th style="width: 100px;">구매자</th>
					<th style="width: 100px;">신고결과</th>
				</tr>
				<tr>
					<td style="width: 50px;">3</td>
					<td style="width: 100px;">3563</td>
					<td style="width: 100px;">2345</td>
					<td style="width: 100px;">유아침대 팔아요</td>
					<td style="width: 100px;">2018/06/16</td>
					<td style="width: 100px;">2018/06/19</td>
					<td style="width: 100px;">약속불이행</td>
					<td style="width: 100px;">김보근</td>
					<td style="width: 100px;">판매자 증빙</td>
				</tr>
				
			</table>
		</div>
		
		
		
		
	</div>
</div>
</body>
</html>