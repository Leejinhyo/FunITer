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
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<style type="text/css">
#content {
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 600px;
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
#summary
{
	text-align: center;
}
#thumbnail
{
	width: 200px; height: 200px;
}
</style>

</head>
<body>
<div>
<c:import url="first_main_up.jsp"></c:import>

</div>


	<div>
		<!-- 좌측 div -->
		<div id="side" style="display: inline-block; float: left;">
			<c:import url="u_main_side.jsp"></c:import>
		</div>

		<!-- 우측 div -->
		<div id="main" style="display: inline-block; margin-left: 15%; float: left;">
			
			<p id="summary" style="font-size: 20px; font: bold;">프리미엄 상품</p>
			<br>
			<div>
				<p>프리미엄이란?</p>
				<p>하한가 50만원의 고급 가구를 보다 쉽게 팔고 살 수 있는 서비스입니다.</p>
				<p>구매 보증서를 제출하면 전문감정사가 직접 출장을 가서 판매가격을 책정합니다<a href="user_customer_service5.action">  [프리미엄 이용가이드]</a></p>
			</div> 
			<input type="button" name="register" id="register" value="판매신청하기" class="btn btn-success" 
			style="float: right;" onclick="location.href='prem_register.action'">
			<br><br><br>
			
			<!-- 아래 div 애들  -->
			<div id="detail" style="width:1000px;">
				<!-- 첫번째 줄.  -->
				<div style="display: inline-block;" >
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
				
				<div style="display: inline-block;" >
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
				<div style="display: inline-block;" >
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
				<div style="display: inline-block;" >
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
			</div>


			<div id="detail" style="width:1000px;">
				<!-- 두번째 줄.  -->
				<div style="display: inline-block;" >
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
				<div style="display: inline-block;" >
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
				<div style="display: inline-block;" >
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
				<div style="display: inline-block;" >
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
			</div>


			<div id="detail" style="width:1000px;">
				<!-- 세번째 줄.  -->
				<div style="display: inline-block;" >
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
				<div style="display: inline-block;" >
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
				<div style="display: inline-block;" >
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
				<div style="display: inline-block;" >
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
			</div>
			


			<div id="detail" style="width:1000px;">
				<!-- 네번째 줄.  -->
				<div style="display: inline-block;" >
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
				<div style="display: inline-block;" >
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
				<div style="display: inline-block;" >
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
				<div style="display: inline-block;" >
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
			</div>

		</div>

	</div>



</body>
</html>