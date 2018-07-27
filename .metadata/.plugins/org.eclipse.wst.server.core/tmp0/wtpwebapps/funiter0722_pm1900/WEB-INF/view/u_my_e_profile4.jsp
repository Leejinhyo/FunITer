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


#content tr td
{
	width: 800px;
}

table th
{
	width: 200px;
}


</style>
<script type="text/javascript">
	$(document).ready(function()
	{
		if ($(".save").click(function()
		{
			
			alert("정보 입력해주고 저장");
			
			$("#myform").submit();
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
		<h1 class="glyphicon glyphicon-tags">개인정보</h1>
		<hr>
		
		<!-- 아래 공간 -->
		<div id=content style="width: 800px;">
		
		<form action="u_my_e_profile3.jsp" method="post" id="myform">
			<table>
				<tr>
					<th>비밀번호*</th>
					<td><input type="text" id="userPw1" name="userPw1"
						style="width: 200px;"></td>
				</tr>
				<tr>
					<th>비밀번호 확인*</th>
					<td><input type="text" id="userPw2" name="userPw2"
						style="width: 200px;"></td>
				</tr>
				<tr>
					<th>이름*</th>
					<td><input type="text" id="userName" name="userName"
						style="width: 200px;"></td>
				</tr>
				<tr>
					<th>주소*</th>
					<td><input type="text" id="userAddr1" name="userAddr1"
						style="width: 200px;"> <input type="button" id="addrCheck"
						name="addrChecek" value="찾아보기" class="btn" style="height: 30px;"></td>
				</tr>
				<tr>
					<th>상세 주소</th>
					<td><input type="text" id="userAddr2" name="userAddr2"
						style="width: 200px;"></td>
				</tr>
				<tr>
					<th>휴대폰 번호</th>
					<td><select id="phone1">
							<option value="010">▼010</option>
							<option value="011">▼011</option>
							<option value="016">▼016</option>
							<option value="017">▼017</option>
					</select> ─ <input type="text" id="phone2" name="phone2"
						style="width: 70px;"> ─ <input type="text" id="phone3"
						name="phone3" style="width: 70px;"> <input type="button"
						value="인증번호 전송" class="btn" style="height: 30px;"></td>
				</tr>
				<tr>
					<th>인증번호 입력*</th>
					<td><input type="text" id="recognize" name="recognize">
						<input type="button" id="recCheck" name="recCheck" value="확인" class="btn" style="height: 30px;">
						<span>인증번호가 오지 않을 시 클릭하세요.</span> 
						<input type="button" id="again"	name="again" value="재발송" class="btn" style="height: 30px;"></td>
				</tr>
				<tr>
					<th>계좌번호 입력*</th>
					<td><select id="bankName">
							<option value="1">신한은행</option>
							<option value="2">농협은행</option>
							<option value="3">국민은행</option>
					</select> <input type="text" id="bankAccount" name="bankAccount"></td>
				</tr>
				<tr>
					<th>관심상품1</th>
					<td><select id="l_cate">
							<option value="1">대분류1</option>
							<option value="2">대분류2</option>
							<option value="3">대분류3</option>
							<option value="4">대분류4</option>
					</select> <select id="s_cate">
							<option value="1">소분류1</option>
							<option value="2">소분류2</option>
							<option value="3">소분류3</option>
							<option value="4">소분류4</option>

					</select></td>
				</tr>

				<tr>
					<th>관심상품2</th>
					<td><select id="favor1">
							<option value="1">대분류1</option>
							<option value="2">대분류2</option>
							<option value="3">대분류3</option>
							<option value="4">대분류4</option>
					</select> <select id="s_cate">
							<option value="1">소분류1</option>
							<option value="2">소분류2</option>
							<option value="3">소분류3</option>
							<option value="4">소분류4</option>

					</select></td>
				</tr>
				<tr>
					<th>관심상품3</th>
					<td><select id="favor1">
							<option value="1">대분류1</option>
							<option value="2">대분류2</option>
							<option value="3">대분류3</option>
							<option value="4">대분류4</option>
					</select> <select id="s_cate">
							<option value="1">소분류1</option>
							<option value="2">소분류2</option>
							<option value="3">소분류3</option>
							<option value="4">소분류4</option>

					</select></td>

				</tr>
				
			</table>
			
				<input type="button" value="저장" class="save btn btn-info" style="margin-left: 150px; width: 200px;">
				<input type="button" value="취소" class="cancel btn btn-info" style="width: 200px;" onclick="location.href='u_my_e_profile3.jsp'">
			
		</form>
		
		</div>
</div>
</div>
</body>
</html>