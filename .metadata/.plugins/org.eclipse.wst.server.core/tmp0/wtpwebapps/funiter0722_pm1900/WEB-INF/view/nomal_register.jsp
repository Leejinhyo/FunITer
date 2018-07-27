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
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
<link href="css/sb-admin.css" rel="stylesheet">

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
#myform
{
	vertical-align: middle;
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
	width: 100px;
	text-align: center;
}
table th td
{
	width: 600px;
}

.btn 
{
	vertical-align: middle;
	text-align: center;
}

</style>

<script type="text/javascript">

	$(document).ready(function()
	{
		alert("test");
		$("#send").click(function()
		{
			if($("#subject").val()==null)
			{
				alert("제목을 입력해주세요~!!!");
				return false;
			}	
		});
		
		
		$("nmRegister").submit();
	});

</script>
</head>
<body>

<div id="side">
	<c:import url="first_main_up.jsp"></c:import>
</div>

<div>
	<h1>게시물 등록</h1>
	<hr>
</div>

<div id="myform">
	<form action="nmregister.action" method="GET" id="nmRegister">
		<table>
			<tr>
				<th>제목</th>
				<td>
					<input class="form-control" type="text" id="subject" name="subject" placeholder="40글자 이내로 작성해주세요.">
				</td>
			</tr>
			<tr>
				<th>판매가격</th>
				<td>
					<input type="text" id="price" name="price" placeholder="원 단위로 입력해주세요.">
				</td>
			</tr>
			<tr>
				<th>일반·예약 선택</th>
				<td>
					<input type="radio" name="type" value="0">일반판매
					<input type="radio" name="type" value="1">예약판매
					<input type="text" name="start_date" id="start_date">
					∼
					<input type="text" name="end_date" id="end_date">
				</td>
			</tr>
			
			<tr>
				<th>사진</th>
				<td>
					<input type="file" name="photo1">
					<input type="file" name="photo2">
					<input type="file" name="photo3">
					<input type="file" name="photo4">
				</td>
			</tr>
			<tr>
				<th>상세사이즈</th>
				<td>
					<input type="text" id="size" name="size" placeholder="ex)가로 30cm, 세로 20cm, 높이 1m">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<input type="text" id="content" name="content" placeholder="내용을 입력하세요" style="width: 400px; height: 200px;">
				</td>
			</tr>
			<tr>
				<th>필터</th>
					<td>
						<select id="l_cate">
							<option value="1">침실가구</option>
							<option value="2">거실가구</option>
							<option value="3">야외가구</option>
							<option value="4">주방가구</option>
						</select>					
						<select id="s_cate">
							<option value="1">침대</option>
							<option value="2">의자</option>
							<option value="3">화장대</option>
							<option value="4">장롱</option>
						</select>
						
						<br>
						<span>옵션1</span>
						<input type="checkbox" name="type" value="0">일반침대
						<input type="checkbox" name="type" value="1">돌침대
						<input type="checkbox" name="type" value="2">흙침대
						<input type="checkbox" name="type" value="3">이층침대
						<input type="checkbox" name="type" value="4">이단침대
						<br>
						<span>옵션2</span>
						<input type="checkbox" name="type" value="0">싱글
						<input type="checkbox" name="type" value="1">더블
						<input type="checkbox" name="type" value="2">퀸
						<input type="checkbox" name="type" value="3">슈퍼싱글
						<input type="checkbox" name="type" value="4">킹
					</td>
			</tr>
						
		</table>
			
			<button id="send" type="button" value="nomal_register" class="btn btn-info">등록하기</button>
			<button id="cancel" type="button" value="register_cancel" class="btn btn-info">취소하기</button>	
	</form>
</div>


</body>
</html>