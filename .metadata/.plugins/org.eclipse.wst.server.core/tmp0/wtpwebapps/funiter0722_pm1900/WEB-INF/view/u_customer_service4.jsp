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
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<style type="text/css">

	#content
	{
		border: 1px solid #ccc;
		border-radius: 5px;
		width: 700px;
		height : 500px;
		padding: 15px;
		margin: 30px;
	}
	
	#content h3
	{
		margin: 0px; 
		margin-bottom: 15px;
	}


#up
{
	font-size: 15px;
	margin-left: 100px;
}

#top
{
	margin-left: 300px;
}

.btn
{
	font-size: 30px;
	width: 200px;
}

table th
{
	width: 100px;
}

div span 
{	
	margin-right: 20px; 
	width: 200px; 
	height: 40px;
}
</style>


</head>

<body>

<div>
	<c:import url="first_main_up.jsp"></c:import>
</div>

<br><br>


<div>
	<h3 style="margin-left: 46.5%; display: inline; ">F A Q</h3> 
	<input type="button" value="로그아웃" class="btn btn-info" onclick="location.href='logout.action'" style="display: inline; margin-left: 30%; margin-top: 5%; text-align: right;">
</div>
<div id="up" style="margin-left: 24%;">
	<span class="btn btn-success" onclick="location.href='user_customer_service1.action'" >공지사항</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service2.action'">문의게시판</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service3_1.action'">신고접수</span>
	<span class="btn btn-danger" onclick="location.href='user_customer_service4.action'">FAQ</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service5.action'">이용가이드</span>
</div>


<br><br>

<div>
		<div style="margin-left: 100px;" >
			<span>FAQ안내</span><br>
			<span>팔고가구사고가구 이용 시 필요한 정보를 찾아 보실 수있습니다.!</span>
			<hr>
			
			<button id="all" class="btn btn-success">전체</button>
			<button id="use" class="btn btn-success">회원이용</button>
			<button id="trade" class="btn btn-success">거래</button>
			<button id="prem" class="btn btn-success">프리미엄</button>
			<button id="free" class="btn btn-success">무료나눔</button>
			 	
		</div>
		<div id="content" style="margin-left: 100px;">	
			<table>
				<tr>
					<th>[회원이용]</th>
					<td>
						<span><a href="#">아이디와 비밀번호를 잊어버렸어요.</a></span>
					</td>	
				</tr>
				<tr>
					<th>
					</th>
					<td>
						<span>
						A : 아이디 찾기
						회원 로그인 화면에서 [아이디 찾기]를 클릭 하여 가입시 등록한 휴대폰 인증을 통해 회원의 아이디를 확인할 수 있습니다.
						비밀번호 찾기
						회원 로그인 화면에서 [비밀번호 찾기]를 클릭 하여 아이디와 가입 시 등록한 휴대폰번호를 입력하여 임시비밀번호 발급이 가능합니다.
						위의 임시비밀번호를 사용하여 가급적 새 비밀번호로 변경해주십시오.
						※ 위 경로로 ID 및 비밀번호를 찾을 수 없는 경우에는 고객센터(1544-3800)로 문의하시기 바랍니다.
						</span>
					</td>
				</tr>
				<tr>
					<th>[회원이용]</th>
					<td>
						<span><a href="#">아이디와 비밀번호를 잊어버렸어요.</a></span>
					</td>	
				</tr>
				<tr>
					<th>[회원이용]</th>
					<td>
						<span><a href="#">아이디와 비밀번호를 잊어버렸어요.</a></span>
					</td>	
				</tr>
			</table>
	</div>
	

	
	<div>
	
	
	<input type="button" value="고객센터 첫 페이지" id="list" name="list" onclick="" class="btn btn-default" style="margin-left: 400px;">
	<input type="button" value="제출하기" id="upload" name="upload" onclick="" class="btn btn-primary">
	</div>
</div>

</body>
</html>