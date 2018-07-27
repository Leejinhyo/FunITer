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
	
	<!-- 게시글 정보 -->
	<div id="info" style=" display: inline;">
		<input type="image" src="img/mo.jpg" style="width: 300px; height: 300px;">
	</div>
	<div style="display: inline-block; width: 300px;">
		<p style="font-size: 15px; font: bold; margin-left: 15px;">유아용 침대 상태 좋아요</p>
		<p style="color: red; float: right; font: bold;">10,000원</p>
		<p>게시일 : 2018/06/30</p>
		<span style="font-size: 15px;"class="glyphicon glyphicon-calendar"><span>거래가능일 : 2018/06/30 ~ 2018/07/01</span></span>
		
		<p>서울시 마포구 서교1동</p>
		<p style="font-size: 30px;" class="glyphicon glyphicon-user">반짝</p>
		<input type="button" value="쪽지하기" class="btn btn-info glyphicon glyphicon-envelope" style="width:250px;">
		<br>
		<span class="glyphicon glyphicon-star" style="font-size: 25px; padding-left: 0px;">1</span>
		<span class="glyphicon glyphicon-comment" style="font-size: 25px; padding-left: 50px;">4</span>
		<span class="glyphicon glyphicon-eye-open" style="font-size: 25px; padding-left: 80px;">4</span>
		<br>
		<span style="color: red; font-size: 30px; float: "class="glyphicon glyphicon-hdd"></span>
		<input type="button" value="신고" class="btn btn-danger">
		<span style="color: red; font-size: 30px;"class="glyphicon glyphicon-plane"></span>
		<input type="button" value="용달정보" class="btn btn-warning ">
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
	<span>상세내용 기입</span>

	<p style="font: bold; margin-left: 250px; font-size: 15px;">[점검내역]</p>
	
	<form action=".action" id="send_form">
		<table>
			<tr>
				<th>사용기한</th>
					<td>
						<input type="checkbox" value="0~2년에 점수 입력" class="use_date">0~2년
					</td>
					
					<td>
						<input type="checkbox" value="2~5년에 점수 입력" class="use_date">2~5년
					</td>
					
					<td>
						<input type="checkbox" value="5~10년에 점수 입력" class="use_date">5~10년
					</td>
					
					<td>
						<input type="checkbox" value="10~15년에 점수 입력" class="use_date">10~15년
					</td>
					<td>
						<input type="checkbox" value="15년이상에 점수 입력" class="use_date">15년이상
					</td>
			</tr>
		
			<tr>
				<th>실 사용기한</th>
					<td>
						<input type="checkbox" value="0~2년에 점수 입력" class="r_use_date">0~2년
					</td>
					
					<td>
						<input type="checkbox" value="2~5년에 점수 입력" class="r_use_date">2~5년
					</td>
					
					<td>
						<input type="checkbox" value="5~10년에 점수 입력" class="r_use_date">5~10년
					</td>
					
					<td>
						<input type="checkbox" value="10~15년에 점수 입력" class="r_use_date">10~15년
					</td>
					<td>
						<input type="checkbox" value="15년이상에 점수 입력" class="r_use_date">15년이상
					</td>
			</tr>
			
			<tr>
				<th>변색여부</th>
					<td>
						<input type="checkbox" value="해당없음에 점수 입력" class="c_discolor">해당없음
					</td>
					
					<td>
						<input type="checkbox" value="상에 점수 입력" class="c_discolor">상
					</td>
					
					<td>
						<input type="checkbox" value="중년에 점수 입력" class="c_discolor">중
					</td>
					
					<td>
						<input type="checkbox" value="하년에 점수 입력" class="c_discolor">하
					</td>	
			</tr>
			
			<tr>
				<th>곰팡이 여부</th>
					<td>
						<input type="checkbox" value="해당없음에 점수 입력" class="c_mold">해당없음
					</td>
					
					<td>
						<input type="checkbox" value="상에 점수 입력" class="c_mold">상
					</td>
					
					<td>
						<input type="checkbox" value="중년에 점수 입력" class="c_mold">중
					</td>
					
					<td>
						<input type="checkbox" value="하년에 점수 입력" class="c_mold">하
					</td>	
			</tr>
			
			<tr>
				<th>가죽상태</th>
					<td>
						<input type="checkbox" value="해당없음에 점수 입력" class="c_skin">해당없음
					</td>
					
					<td>
						<input type="checkbox" value="상에 점수 입력" class="c_skin">상
					</td>
					
					<td>
						<input type="checkbox" value="중년에 점수 입력" class="c_skin">중
					</td>
					
					<td>
						<input type="checkbox" value="하년에 점수 입력" class="c_skin">하
					</td>	
			</tr>
			
			<tr>
				<th>흠집여부</th>
					<td>
						<input type="checkbox" value="해당없음에 점수 입력" class="c_scratch">해당없음
					</td>
					
					<td>
						<input type="checkbox" value="상에 점수 입력" class="c_scratch">상
					</td>
					
					<td>
						<input type="checkbox" value="중년에 점수 입력" class="c_scratch">중
					</td>
					
					<td>
						<input type="checkbox" value="하년에 점수 입력" class="c_scratch">하
					</td>	
			</tr>
			
			<tr>
				<th>표면상태</th>
					<td>
						<input type="checkbox" value="해당없음에 점수 입력" class="c_surface">해당없음
					</td>
					
					<td>
						<input type="checkbox" value="상에 점수 입력" class="c_surface">상
					</td>
					
					<td>
						<input type="checkbox" value="중년에 점수 입력" class="c_surface">중
					</td>
					
					<td>
						<input type="checkbox" value="하년에 점수 입력" class="c_surface">하
					</td>	
			</tr>
			
			<tr>
				<th>연결이상여부</th>
					<td>
						<input type="checkbox" value="해당없음에 점수 입력" class="c_connection">해당없음
					</td>
					
					<td>
						<input type="checkbox" value="상에 점수 입력" class="c_connection">상
					</td>
					
					<td>
						<input type="checkbox" value="중년에 점수 입력" class="c_connection">중
					</td>
					
					<td>
						<input type="checkbox" value="하년에 점수 입력" class="c_connection">하
					</td>	
			</tr>
			
			<tr>
				<th>부품 완전도</th>
					<td>
						<input type="checkbox" value="해당없음에 점수 입력" class="c_component">해당없음
					</td>
					
					<td>
						<input type="checkbox" value="상에 점수 입력" class="c_component">상
					</td>
					
					<td>
						<input type="checkbox" value="중년에 점수 입력" class="c_component">중
					</td>
					
					<td>
						<input type="checkbox" value="하년에 점수 입력" class="c_component">하
					</td>	
			</tr>
			
			<tr>
				<th>부식여부</th>
					<td>
						<input type="checkbox" value="해당없음에 점수 입력" class="c_corrosion ">해당없음
					</td>
					
					<td>
						<input type="checkbox" value="상에 점수 입력" class="c_corrosion">상
					</td>
					
					<td>
						<input type="checkbox" value="중년에 점수 입력" class="c_corrosion">중
					</td>
					
					<td>
						<input type="checkbox" value="하년에 점수 입력" class="c_corrosion">하
					</td>	
			</tr>
			
			<tr>
				<th>뒤틀림 여부</th>
					<td>
						<input type="checkbox" value="해당없음에 점수 입력" class="c_twist">해당없음
					</td>
					
					<td>
						<input type="checkbox" value="상에 점수 입력" class="c_twist">상
					</td>
					
					<td>
						<input type="checkbox" value="중년에 점수 입력" class="c_twist">중
					</td>
					
					<td>
						<input type="checkbox" value="하년에 점수 입력" class="c_twist">하
					</td>	
			</tr>
			
			<tr>
				<th>사용감</th>
					<td>
						<input type="checkbox" value="해당없음에 점수 입력" class="c_use">해당없음
					</td>
					
					<td>
						<input type="checkbox" value="상에 점수 입력" class="c_use">상
					</td>
					
					<td>
						<input type="checkbox" value="중년에 점수 입력" class="c_use">중
					</td>
					
					<td>
						<input type="checkbox" value="하년에 점수 입력" class="c_use">하
					</td>	
			</tr>	
		
			
			<tr>
				<th>특이사항</th>
					<td colspan="7">
						<textarea rows="5" cols="150" id="u_report" readonly="readonly">내용을 입력해주세요</textarea>
					</td>
			</tr>
			
			
			<tr>
				<th>반영점수</th>
					<td>
					<input type="text" id="input_score" name="input_score" value="78점" >점
					</td>
			</tr>
			
			<tr>
				<th>최종판매가격</th>
					<td>
						<input type="text" id="result_score" name="result_score" value="780,000원">점
					</td>
			</tr>
		</table>
</form>
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