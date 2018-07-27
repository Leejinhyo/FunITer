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
		
		if($(".update_btn").click(function()
		{
			alert("수정버튼");
		}));
		
		if($(".delete_btn").click(function()
		{
			alert("삭제버튼");
		}));
		if($(".enter_btn").click(function()
		{
			alert("배송정보 입력버튼");
		}));
	
		if($(".claim").click(function()
		{
			alert("신고 버튼");
		}));
		
		if($(".cancel").click(function()
		{
			alert("취소버튼");
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
			<h3 class="glyphicon glyphicon-tags">판매내역</h3>
			<hr>
		</div>	
		
		<!-- 아래 공간 -->
		<div>
			<span style="color: green; font-size: 25px;">일반판매 등록 상품 관리</span>
			
			
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th style="width: 50px;">번호</th>
					<th style="width: 100px;">게시글 번호</th>
					<th style="width: 100px;">거래분류</th>
					<th style="width: 130px;">소분류</th>
					<th style="width: 250px;">제목</th>
					<th style="width: 130px;">게시글 작성일</th>
					<th style="width: 140px;">예약 판매 기간</th>
					<th style="width: 140px;">상품 판매 가격</th>
					<th style="width: 130px;">수정 및 삭제</th>
				</tr>
				<c:if test="${check==1 }">
					<tr>
						<td colspan="16" style="text-align: center">판매중인 내역이 없습니다!</td>
					</tr>
				</c:if>
				<c:if test="${check==0}">
					<c:forEach var="selllist_dto" items="${selllist_dto }">	
						<tr>
							<td style="width: 50px;">1</td>
							<td style="width: 100px;">${selllist_dto.nm_article_code }</td>
							<td style="width: 100px;">일반</td>
							<td style="width: 130px;">${selllist_dto.s_category_name }</td>
							<td style="width: 250px;">
							<a href="nm_sell_form.action?nm_article_code=${selllist_dto.nm_article_code }">${selllist_dto.nm_subject }</a>
							</td>
							<td style="width: 130px;">${selllist_dto.nm_write_d }</td>
							<c:if test="${selllist_dto.book_start_d==null }">
							<td>-</td>							-
							</c:if>
							<c:if test="${selllist_dto.book_start_d!=null }">
							<td style="width: 140px;">
							${selllist_dto.book_start_d }
							<br>
							-${selllist_dto.book_end_d }
							</td>
							</c:if>
							<td style="width: 140px;">${selllist_dto.nm_price }</td>
							<td style="width: 130px;">
								<input type="button" class="update_btn btn btn-info" name="update_btn" value="수정">
								<input type="button" class="delete_btn btn btn-info" name="delete_btn" value="삭제">
							</td>
						</tr>
					</c:forEach>
				</c:if>
			</table>
		</div>
		
		<div>
			<span style="color: green; font-size: 25px;">일반판매 진행 상황</span>
			<table class="table table-condensed table-striped table-hover" >
				<tr>
					<th style="width: 10px;">번호</th>
					<th style="width: 100px;">게시글 번호</th>
					<th style="width: 100px;">주문번호</th>
					<th style="width: 100px;">거래분류</th>
					<th style="width: 100px;">대분류</th>
					<th style="width: 100px;">소분류</th>
					<th style="width: 100px;">제목</th>
					<th style="width: 100px;">게시글 작성일</th>
					<th style="width: 100px;">거래시작일</th>
					<th style="width: 100px;">예약확정일</th>
					<th style="width: 100px;">거래상태</th>
					<th style="width: 100px;">상품가격</th>
					<th style="width: 100px;">배송방법</th>
					<th style="width: 100px;">배송정보</th>
					<th style="width: 100px;">배송일</th>
					<th style="width: 100px;">신고/취소</th>
					<th style="width: 100px;">상태변경일</th>
				</tr>
				
				<tr>
					<td style="width: 10px;">3</td>
					<td style="width: 100px;">3215</td>
					<td style="width: 100px;">12574</td>
					<td style="width: 100px;">일반(예약)</td>
					<td style="width: 100px;">거실가구</td>
					<td style="width: 100px;">소파</td>
					<td style="width: 100px;">소파 팔아요</td>
					<td style="width: 100px;">2018/06/18</td>
					<td style="width: 100px;">2018/06/20</td>
					<td style="width: 100px;">2018/06/25</td>
					<td style="width: 100px;">판매중</td>
					<td style="width: 100px;">40,000</td>
					<td style="width: 100px;">직거래</td>
					<td style="width: 100px;">
					<input type="button" value="입력" class="enter_btn btn btn-info" id="enter" name="enter">
					</td>
					<td style="width: 100px;">배송일</td>
					<td style="width: 100px;">
						<input type="button" value="신고" class="claim btn btn-info" id="claim" name="claim" style="width: 40px; text-align: center">
						<input type="button" value="취소" class="cancel btn btn-info" id="cancel" name="cancel" style="width: 40px; text-align: center">
					</td>
					<td style="width: 100px;">상태변경일</td>
				</tr>
			
			
			</table>
		</div>

		
		
		
		
	</div>
</div>
</body>
</html>