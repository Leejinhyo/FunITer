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
<script type="text/javascript">

	function sendIt()
	{
		$("#myform").submit();
	
	}

</script>

</head>
<body>

<div>
<c:import url="first_main_up.jsp"></c:import>

</div>


<div id="side" style="display: inline-block;">
	<c:import url="u_main_side.jsp"></c:import>
</div>

<div id="contents" style="display: inline-block;">
<form action="free_buy_form.action" name="myform" id="myform">
	<!-- 게시글 정보 : 이미지  -->
	
		<div id="info" style=" display: inline;">
		<input type="image" src="${fdto.pic1}" style="width: 300px; height: 300px;">
		<input type="image" src="${fdto.pic2}" style="width: 300px; height: 300px;">
		<input type="image" src="${fdto.pic3}" style="width: 300px; height: 300px;">
		<input type="image" src="${fdto.pic4}" style="width: 300px; height: 300px;">
	</div>
	
	<!-- 게시글 정보 : 내용 -->
			
		<div style="display: inline-block; width: 300px;">
			<p style="font: bold; font-size: 15px;">${fdto.fr_subject }</p>
			<input type="text" name="fr_article_code" id="fr_article_code" value="${fdto.fr_article_code }" style="display: none;">
			<p style="color: red; float: right; font: bold;">0원</p>
			<p>게시일 : ${fdto.fr_write_d}</p>
			
			<p>주소 : ${fdto.user_addr}</p>
			<p style="font-size: 30px;" class="glyphicon glyphicon-user">${fdto.user_id }</p>
			<input type="text" name="user_code" id="user_code" value=${fdto.user_code }  style="display: none;">
			<input type="button" value="쪽지하기" class="btn btn-info glyphicon glyphicon-envelope" style="width:250px;">
			<br>
			<span class="glyphicon glyphicon-star" style="font-size: 25px; padding-left: 0px;">${fdto.fr_mark }</span>
			<span class="glyphicon glyphicon-comment" style="font-size: 25px; padding-left: 50px;">4</span>
			<span class="glyphicon glyphicon-eye-open" style="font-size: 25px; padding-left: 80px;">${fdto.fr_hitcount }</span>
			<br>
			<span style="color: red; font-size: 30px; float: "class="glyphicon glyphicon-hdd"></span>
			<input type="button" value="신고" class="btn btn-danger">
			<span style="color: red; font-size: 30px;"class="glyphicon glyphicon-plane"></span>
			<input type="button" value="용달정보" class="btn btn-warning ">
			<br>
			<input type="button" value="구매하기" class="btn btn-info" style="width: 130px;" onclick="sendIt();">
			<input type="button" value="♡" class="btn btn-info" style="width: 130px;">
		</div>
		
		<!-- 사용자에 의해 변하는 곳.  -->
	
	<br><br>
	<!-- 판매자가 입력한 곳 -->
	<div>
		<span>${fdto.fr_content }</span>
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