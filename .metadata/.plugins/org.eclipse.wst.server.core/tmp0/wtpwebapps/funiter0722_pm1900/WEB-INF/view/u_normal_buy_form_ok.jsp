<%@page import="com.test.mybatis.NM_OrderDTO"%>
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
<script type="text/javascript">
	
	

</script>
</head>
<body>

<div id="side">
	<c:import url="u_main_home.jsp"></c:import>
</div>

<div>
	<h1>구매내역 확인</h1>
	<hr>
</div>

<div id="content">
		<div>
			<p>주문번호 : ${nm_order.order_code }</p>
			<span style="font-size: 30px;">판매자</span>
			<table>
				<tr>
					<th>이름</th>
					<td>${seller.user_name }<input type="text" value="${seller.user_code }" id="seller" name="seller" style="display: none;"></td>
					<td>
					</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${seller.user_tel }</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>${seller.user_addr }</td>
				</tr>
				<c:if test="${nm_dto.start_d==null}">
				</c:if>
				<c:if test="${nm_dto.start_d!=null }">
				<tr>
					<th>예약가능 시간</th>
					<td>
						<span>${nm_dto.start_d }</span>~<span>${nm_dto.end_d }</span>
					</td>
				</tr>
				</c:if>
			</table>
			
		</div>		
		
		<div>
			<span style="font-size: 30px;">구매자</span>
			<button type="button" style="float: right;">용달업체 정보보기</button>
			<table>
				<tr>
					<th>이름</th>
					<td>${buyer.user_name }<input type="text" value="${buyer.user_code }" id="buyer" name="buyer" style="display: none;"></td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${buyer.user_tel }</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>${buyer.user_addr }</td>
				</tr>
				<tr>
					<th>상세주소</th>
					<td>
					${buyer.user_detail_addr }
					</td>
				</tr>
				<tr>
					<th>예약일</th>
					<td>
						${book_d }
					</td>
				</tr>
				<tr>
					<th>구매방법 선택</th>
					<td>
						${del_way_name }
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
						${account_dto.bank_name }은행
						<input type="text" value="${account_dto.bank_code }" id="bank_code" name="bank_code" style="display: none;">
					</td>
					<tr>
						<th colspan="2">
							<p>계좌번호 : ${account_dto.account_num }</p>
						<p>위 계좌에 총 <span style="color: red;">${nm_dto.nm_price }</span>원을 ${nm_order.last_d }시간 내에 입금하셔야 합니다. </p>						
						</th>
					</tr>
			
			</table>
		</div>	
			
			<button type="button" value="nomal_register" class="btn btn-info" onclick="location.href='u_my_b_buylist.action'">마이페이지</button>
			<button type="button" value="register_cancel" class="btn btn-info" onclick="location.href='nm_sell_form.action?nm_article_code=${nm_order.nm_article_code}'">계속 쇼핑하기</button>	
</div>


</body>
</html>