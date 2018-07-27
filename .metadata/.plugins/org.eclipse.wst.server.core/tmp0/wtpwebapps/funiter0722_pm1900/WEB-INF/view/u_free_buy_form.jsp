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



</style>
<script type="text/javascript">

	$(document).ready(function()
	{
		
		$("#register").click(function()
		{
			/* if($("#del_way_code").val()))
			{
				alert("구매방법을 선택해주세요!");
				return;
			}//--유효성 검사 해야함. 
			 */
			 //alert("제출");
			
			$("#content").submit();
		});
		
		
		
		
	});
	

</script>

</head>
<body>

<div id="home">
	<c:import url="u_main_home.jsp"></c:import>
</div>

<c:if test="${check==1 }">
	${str }
	<button class="btn btn-warning" onclick="location.href='free_sell_form.action?fr_article_code=${fr_article_code}'">뒤로가기</button>
</c:if>

<c:if test="${check==0 }">
<div style= "display: inline-block;">
	<div>
	
		<h1 class="glyphicon glyphicon-shopping-cart">구매하기</h1>
		<hr>
	</div>
	
	<form action="free_buy_ok.action" id="content" style="width: 700px;" method="GET">
	
		<div>
			<span class="glyphicon glyphicon-user" style="font-size: 30px;">판매자</span>
			<table>
				<tr>
					<th>이름</th>
					<td>${seller.user_name }</td>
				</tr>
				<tr>
					<th>전화번호</th>
					<td>${seller.user_tel }</td>
				</tr>
				<tr>
					<th>주소</th>
					<td>${seller.user_addr }</td>
				</tr>
			</table>
			
		</div>		
		
		<div>
			<span class="glyphicon glyphicon-user" style="font-size: 30px;">구매자</span>
			<input type="button" value="용달업체 정보보기" style="float: right">
			<table>
				<tr>
					<th>이름</th>
					<td>${buyer.user_name }</td>
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
						<input type="text" name="detail_addr" id="detail_addr" value="${buyer.user_detail_addr }" placeholder="배송지를 입력하세요"  style="width: 300px;">
					</td>
				</tr>
				<tr>
					<th>구매방법 선택</th>
					<td>
						<%-- <c:forEach var="del_way_dto" items="${del_way_dto }">
							<input type="radio" name="del_way_code" id="del_way_code" value="${del_way_dto.del_way_code }">${del_way_dto.del_way_name }	
						</c:forEach> --%>
					</td>
				</tr>
			</table>
		</div>			
		<hr>
		
		<div>
			<p style="color: red; float: right;">거래가 정상으로 종료되면 최대 15일내로 환급!!</p>
			<br>
			<span style="width: 30px;">입금하실 계좌</span>
			<table>
				<tr>
					<th>은행명</th>
					<td>
						<select id="bank_code">
							<option value="0">은행선택</option>
							<c:forEach var="bank_dto" items="${bank_dto }">
								<option value="${bank_dto.bank_code }">${bank_dto.bank_name }</option>
							</c:forEach>
						</select>
					</td>
					<tr>
						<th colspan="2">
							<p>위 계좌에 보증금 <span style="color: red;">5,000</span>원을 24시간 내에 입금하셔야 합니다. </p>
						</th>						
					</tr>			
			</table>
		</div>	
			
			<button type="button" id="register" value="nomal_register" class="btn btn-info" style="margin-left: 250px;">구매하기</button>
			<button type="button" value="register_cancel" class="btn btn-info">취소하기</button>	
	</form>
	</div>
	</c:if>



</body>
</html>