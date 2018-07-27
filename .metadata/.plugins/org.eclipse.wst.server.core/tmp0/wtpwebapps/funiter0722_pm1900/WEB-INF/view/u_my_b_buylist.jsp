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
		if ($(".insert_btn").click(function()
		{
			alert("입금완료처리가 됩니다. ");
		}));
		
		if ($(".buy_cancel").click(function()
		{
			alert("구매취소 요청. ");
		}));
		
		if ($(".receive_btn").click(function()
		{
			alert("수령버튼 ");
		}));
		
		if ($(".claim_btn").click(function()
		{
			alert("신고버튼 ");
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
			<h3 class="glyphicon glyphicon-tags" style="font-size: 25px;">구매내역</h3>
			<hr>
		</div>	
		
		<!-- 아래 공간 -->
		<div>
			<span style="color: red;">구매하신 후 [입금]버튼을 1일 이내 클릭하셔야 정상결제가 완료됩니다.</span>
			

		<div>
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th style="width: 30px;">번호</th>
					<th style="width: 100px;">주문번호</th>
					<th style="width: 100px;">게시판번호</th>
					<th style="width: 100px;">거래분류</th>
					<th style="width: 100px;">소분류</th>
					<th style="width: 100px;">제목</th>
					<th style="width: 100px;">예약일</th>
					<th style="width: 100px;">배송방법</th>
					<th style="width: 100px;">결제금액</th>
					<th style="width: 100px;">거래시작일</th>
					<th style="width: 100px;">거래상태</th>
					<th style="width: 100px;">배송정보</th>
					<th style="width: 100px;">배송일</th>
					<th style="width: 100px;">구매취소</th>
					<th style="width: 100px;">수령/신고</th>
					<th style="width: 100px;">상태변경일</th>
				</tr>
				<c:if test="${check==1 }">
					<tr>
						<td colspan="16" style="text-align: center">구매중인 내역이 없습니다!</td>
					</tr>
				</c:if>
				<c:if test="${check==0}">
					<c:forEach var="buylist_dto" items="${buylist_dto }">				
					<tr>
						<td style="width: 30px;">${buylist_dto.rownum }</td>
						<td style="width: 100px;">${buylist_dto.order_code }</td>
						<td style="width: 100px;">${buylist_dto.nm_article_code }</td>
						<td style="width: 100px;">일반(예약)</td>
						<td style="width: 100px;">${buylist_dto.s_category_name }</td>
						<td style="width: 100px;">
						<a href="nm_sell_form.action?nm_article_code=${buylist_dto.nm_article_code }">
						${buylist_dto.nm_subject }
						</a>
						</td>
						<td style="width: 100px;">${buylist_dto.booked_d }</td>
						<td style="width: 100px;">${buylist_dto.del_way_name }</td>
						<td style="width: 100px;">${buylist_dto.nm_price }</td>
						<td style="width: 100px;">${buylist_dto.nm_order_d }~${buylist_dto.last_d }</td>
						<td style="width: 100px;">
							<c:if test="${buylist_dto.limit_day==1 }">
								<input type="button" value="입금" class="insert_btn btn btn-default" id="insert" name="insert" disabled="disabled">
							</c:if>
							<c:if test="${buylist_dto.limit_day==0 }">
								<input type="button" value="입금" class="insert_btn btn btn-info" id="insert" name="insert">
							</c:if>
						</td>
						<td style="width: 100px;">우체국 17-058-453</td>
						<td style="width: 100px;">2108/01/26</td>
						<td style="width: 100px;">
							<input type="button" value="취소" id="buy_cancel" name="buy_cancel" class="buy_cancel btn btn-info">
						</td>
						<td style="width: 100px;">
							<input type="button" value="수령" class="receive_btn btn btn-info" id="receive" name="receive" style="width: 40px; text-align: center">
							<input type="button" value="신고" class="claim_btn btn btn-info" id="claim" name="claim" style="width: 40px; text-align: center">
						</td>
						<td style="width: 100px;">상태변경일</td>
					</tr>
				</c:forEach>
			</c:if>
			</table>
		</div>

		
		
		
		
	</div>
</div>
</div>
</body>
</html>