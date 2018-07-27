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

</style>
</head>
<body>
<div>
<c:import url="first_main_up.jsp"></c:import>

</div>


<div id="side" style="display: inline-block;">
	<c:import url="u_main_side.jsp"></c:import>
</div>

<div id="contents" style="display: inline-block;">
	<!-- 
	
	제목, 가격, 작성일, 예약시작일, 예약종료일
	내용, 옵션1,2 , 주소, 자세한주소, 조회수
	, 북마크갯수, 댓글수
	NM_SUBJECT, NM_PRICE, NM_WRITE_D, NM_CONTENT, OPTION1, OPTION2
	, ADDR, DETAIL_ADDR, HITCOUNT, USER_CODE, S_CATE_NAME, L_CATE_NAME
	
	START_D, END_D
	
	MARK_COUNT
	
	COMM_COUNT
	
	 -->
<!-- 게시글 정보 -->
<form action="nm_buy_form.action" id="myform">
	<input type="text" id="nm_article_code" name="nm_article_code" value="${nm_article_code }" style="display: none;">
	<div id="info" style=" display: inline;"> 
		<input type="image" src="${dto.pic1 }" style="width: 300px; height: 300px;">
	</div>
	<div style="display: inline-block; width: 300px;">
		<p>제목 : ${dto.nm_subject }</p>
		<p style="color: red; float: right; font: bold;">가격 : ${dto.nm_price }원</p>
		<p>게시일 : ${dto.nm_write_d }</p>
			<c:if test="${dto.end_d!=null }">
			<c:choose>
				<c:when test="${(dto.end_d).equals('0001-01-01')}">
					<span></span>
				</c:when>
				<c:otherwise>
					<span style="font-size: 15px;"class="glyphicon glyphicon-calendar">
					<span>거래가능일 : ${dto.start_d } ~ ${dto.end_d }</span></span>
				</c:otherwise>
			</c:choose>
			</c:if>
			
		<p>${dto.addr }</p>
		<input type="text" id="user_code" name="user_code" value="${dto.user_code }" style="display: none;">
		<p style="font-size: 30px;" class="glyphicon glyphicon-user">${dto.user_id }</p>
		<input type="button" value="쪽지하기" class="btn btn-info glyphicon glyphicon-envelope" style="width:250px;">
		<br>
		<span class="glyphicon glyphicon-star" style="font-size: 25px; padding-left: 0px;">${dto.nm_mark  }</span>
		<span class="glyphicon glyphicon-comment" style="font-size: 25px; padding-left: 50px;">${dto.comm_count }</span>
		<span class="glyphicon glyphicon-eye-open" style="font-size: 25px; padding-left: 80px;">${dto.hitcount }</span>
		<br>
		<span style="color: red; font-size: 30px; float: "class="glyphicon glyphicon-hdd"></span>
		<input type="button" value="신고" class="btn btn-danger">
		<span style="color: red; font-size: 30px;"class="glyphicon glyphicon-plane"></span>
		<input type="button" value="용달정보" class="btn btn-warning ">
		<br>
		<c:if test="${nm_buy_whether!=0 }">
			<input type="button" value="구매하기" class="btn btn-default" style="width: 130px;" disabled="disabled" >
		</c:if>
		<c:if test="${nm_buy_whether==0  }">
			<input type="submit" value="구매하기" class="btn btn-info" style="width: 130px;">
		</c:if>
		<input type="button" value="♡" class="btn btn-info" style="width: 130px;">
	</div>
	
	<!-- 사용자에 의해 변하는 곳.  -->
	<div>
		<input type="image" src=${dto.pic2 } style="width: 50px; height: 50px;">
		<input type="image" src=${dto.pic3 } style="width: 50px; height: 50px;">
		<input type="image" src=${dto.pic4 } style="width: 50px; height: 50px;">
	</div>
	
	<br><br>
	<!-- 판매자가 입력한 곳 -->
	<div>
		<span>${dto.nm_content }</span>
		<h3>사이즈 정보 ${dto.nm_size }</h3>
		
		<h3>옵션정보</h3>
		<br>
			<span style="background-color: yellow;">옵션1</span>
			<span>${dto.option1 }</span>
			<br>
			<span style="background-color: yellow;">옵션2</span>
			<span>${dto.option2 }</span>
	</div>
	</form>
	<!-- 댓글영역 -->
	<div>
		<p style="font-size: 15px; font: bold">댓글</p>
		<hr>
		<p>김보근(leader) 2018/06/14/15:27<p>
		<p>서랍장안에 바지 많이 넣을 수 있나요??</p>
		
		<p>이름(아이디) 날짜 시간<p>
		<p>내용</p>
	
		<input type="text" id="reply" name="reply" style="width:500px;">
		<input type="button" id="send" name="send" class="btn btn-default" value="등록">
	</div>
	
	
	
</div>

</body>
</html>