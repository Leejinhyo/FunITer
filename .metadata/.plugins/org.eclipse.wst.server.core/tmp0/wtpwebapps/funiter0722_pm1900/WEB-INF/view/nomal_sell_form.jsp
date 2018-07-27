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

<div id="home">
	<c:import url="first_main_up.jsp"></c:import>
</div>

<div id="side" style="display: inline-block;">
	<c:import url="u_main_side.jsp"></c:import>
</div>

<div id="contents" style="display: inline-block;">
	
	<!-- 게시글 정보 -->
	<div id="info" style=" display: inline;">
		<input type="image" src="img/mo.jpg" style="width: 300px; height: 300px;">
	</div>
	<div style="display: inline-block; width: 300px;">
		<p>유아용 침대 상태 좋아요</p>
		<p style="color: red;">10,000원</p>
		<p>게시일 : 2018/06/30</p>
		<p>거래가능일 : 2018/06/30 ~ 2018/07/01
		<p>서울시 마포구 서교1동</p>
		<p>반짝</p>
		<input type="button" value="쪽지하기" class="btn btn-info" style="width:250px;">
		<br>
		<span>1</span>
		<span>4</span>
		<span>4</span>
		<br>
		<input type="button" value="신고" class="btn btn-danger">
		<input type="button" value="용달정보" class="btn btn-warning">
		<br>
		<input type="button" value="구매하기" class="btn btn-info" style="width: 130px;">
		<input type="button" value="♡" class="btn btn-info" style="width: 130px;">
	</div>
	
	<!-- 사용자에 의해 변하는 곳.  -->
	<div>
		<input type="image" src=img/mo.jpg style="width: 50px; height: 50px;">
		<input type="image" src=img/mo.jpg style="width: 50px; height: 50px;">
		<input type="image" src=img/mo.jpg style="width: 50px; height: 50px;">
	</div>
	
	<br><br>
	<!-- 판매자가 입력한 곳 -->
	<div>
		<span>내용입력</span>
	
		<h3>옵션정보</h3>
		<br>
			<span style="background-color: yellow;">옵션1</span>
			<input type="checkbox" name="type" value="0">일반침대
			<input type="checkbox" name="type" value="1">돌침대
			<input type="checkbox" name="type" value="2">흙침대
			<input type="checkbox" name="type" value="3">이층침대
			<input type="checkbox" name="type" value="4">이단침대
			<br>
			<span style="background-color: yellow;">옵션2</span>
			<input type="checkbox" name="type" value="0">싱글
			<input type="checkbox" name="type" value="1">더블
			<input type="checkbox" name="type" value="2">퀸
			<input type="checkbox" name="type" value="3">슈퍼싱글
			<input type="checkbox" name="type" value="4">킹
	</div>
	
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