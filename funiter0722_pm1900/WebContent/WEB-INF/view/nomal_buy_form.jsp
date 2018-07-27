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

table th
{
	width: 250px;
}
table td
{
	width: 600px;
}

.btn 
{
	vertical-align: middle;
}

</style>
</head>
<body>

<div id="side">
	<c:import url="u_main_home.jsp"></c:import>
</div>

<div>
	<h1>구매하기</h1>
	<hr>
</div>

<div id="content">
	<form action="">
	
		<div>
			<span style="font-size: 30px;">판매자</span>
			<table>
				<tr>
					<th>이름</th>
					<td>홍길동</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>010-1234-9487</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>사용자 정보 주소(어디까지 받아올지 )</td>
				</tr>
				<tr>
					<th>예약가능 시간</th>
					<td>
						2018-06-01~2018-07-01
					</td>
				</tr>
			</table>
			
		</div>		
		
		<div>
			<span style="font-size: 30px;">구매자</span>
			<button type="button" value="용달업체 정보보기"></button>
			<table>
				<tr>
					<th>이름</th>
					<td>박초롱</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>010-2947-6354</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>사용자 정보 주소</td>
				</tr>
				<tr>
					<th>상세주소</th>
					<td>
						<input type="text" name="detail_addr" id="detail_addr" value="(사용자정보)" placeholder="배송지를 입력하세요">
					</td>
				</tr>
				<tr>
					<th>예약일선택</th>
					<td>
						<input type="text" name="reserve_date" id="reserve_date">
					</td>
				</tr>
				<tr>
					<th>구매방법 선택</th>
					<td>
						<input type="radio" name="d_type" id="d_type" value="0">직거래
						<input type="radio" name="d_type" id="d_type" value="1">택배
						<input type="radio" name="d_type" id="d_type" value="2">용달업체
					</td>
				</tr>
			</table>
		</div>			
		<hr>
		
		<div>
			<span>입금하실 계좌</span>
			<table>
				<tr>
					<th>은행명</th>
					<td>
						<select id="bankName">
							<option value="1">신한은행</option>
							<option value="2">농협은행</option>
							<option value="3">국민은행</option>
						</select>
						<input type="text" id="account" name="account" placeholder="안전거래에 의해 회사계좌에 입금바랍니다. ">
						<p>위 계좌에 총 <span style="color: red;">67,000</span>원을 24시간 내에 입금하셔야 합니다. </p>						
					</td>
				</tr>
			
			</table>
		</div>	
			
			<button type="button" value="nomal_register" class="btn btn-info">구매하기</button>
			<button type="button" value="register_cancel" class="btn btn-info">취소하기</button>	
	</form>
</div>


</body>
</html>