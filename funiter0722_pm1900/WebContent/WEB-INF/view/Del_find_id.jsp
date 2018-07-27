<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Del_find_id.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/bootstrap-theme.min.css">


<style type="text/css">
#content {
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 800px;
	padding: 15px;
	margin: 30px;
}

#content h3 {
	margin: 0px;
	margin-bottom: 15px;
}

#under
{
	margin-top: 15px;
	text-align: center;
}

table th
{
	text-align:  center;
	width: 200px;
	
}
</style>

</head>
<body>

<div class="container">
<div class="outer">
<div class="inner">
<div class="centered">
<h3>아이디 찾기</h3>
<hr>

<div>
	<span style="color: red;">회원정보에 등록한 휴대전화로 인증</span><br>
	<span style="font: bold;">회원정보에 등록한 휴대폰 번호와 입력한 번호가 같아야 인증번호를 받을 수 있습니다. </span>
	
	<div id="content">
	<table>
		<tr>
			<th>이름*</th>
			<td>
				<input type="text" id="delowner" name="del_owner">
			</td>
		</tr>
		<tr>
			<th>휴대폰 번호</th>
			<td><select id="phone1">
					<option value="010">▼010</option>
					<option value="011">▼011</option>
					<option value="016">▼016</option>
					<option value="017">▼017</option>
			</select> ─ 
			<input type="text" id="phone2" name="phone2" style="width: 70px;"> 
			─ 
			<input type="text" id="phone3" name="phone3" style="width: 70px;"> 
			<input type="button" value="인증번호 전송" class="btn" style="height: 30px;">
			</td>
		</tr>
		<tr>
			<th>인증번호 입력</th>
			<td>
				<input type="text" id="recognize" name="recognize" placeholder="인증번호 6자리 숫자 입력">
				<span>인증번호가 오지 않나요?</span>
				<input type="button" id="again"	name="again" value="재발송" class="btn" style="height: 30px;">
			</td>
		</tr>
	</table>
		
		<div id="under">
			<input type="button" id="next" name="next" value="다음" class="btn btn-info" style="width: 200px;">
			<input type="button" id="cancel" name="cancel" value="취소" class="btn btn-info" style="width: 200px;">
		</div>
		
		<div id="footer">
			<p>▶아직 업체등록을 하지 않으셨다면 온라인 업체등록신청을 진행해주세요. <a href="">업체 등록하기</a></p>
		</div>
		
	</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>

