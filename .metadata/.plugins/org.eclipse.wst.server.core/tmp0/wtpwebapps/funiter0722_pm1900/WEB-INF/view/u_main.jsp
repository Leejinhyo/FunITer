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

	#content
	{
		border: 1px solid #ccc;
		border-radius: 5px;
		width: 400px;
		padding: 15px;
		margin: 30px;
	}
	
	#content h3
	{
		margin: 0px; 
		margin-bottom: 15px;
	}

	#side
	{
		margin-top: 0px;
	}
	#thumbnail
	{
		width: 200px; height: 200px;
	}
	#keyword
	{
		margin-left: 250px;
		color: blue;
	}
</style>

</head>
<body>

<div>
<c:import url="first_main_up.jsp"></c:import>

</div>

<div>
	<div id="side" style="display: inline-block; float: left;">
	<c:import url="u_main_side.jsp"></c:import>
	</div>
	
	<div style="display: inline-block; margin-left: 30%; float: left;">
	
		<p style="font-size: 20px; font: bold; text-align: center;">신규 상품</p>
		<br>
		<span id="keyword">#앤틱탁자 #리클라이너 #싱글가구 #원목식탁 #화이트침대</span>
		
		<h4>맞춤상품</h4>
		<div style="display: inline-block;">
			<button type="button" class="btn btn-default" style="margin-bottom: 180px;">
			<span class="glyphicon glyphicon-chevron-left"></span>
			</button>
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<input type="image" id="thumbnail" src="img/mo.jpg">
			<button type="button" class="btn btn-default" style="margin-bottom: 180px;">
			<span class="glyphicon glyphicon-chevron-right"></span>
			</button>
		</div>
		
		
		<h4>무료나눔상품</h4>
		<div style="display: inline-block;">
			<button type="button" class="btn btn-default" style="margin-bottom: 180px;">
			<span class="glyphicon glyphicon-chevron-left"></span>
			</button>
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<input type="image" id="thumbnail" src="img/mo.jpg">
			<button type="button" class="btn btn-default" style="margin-bottom: 180px;">
			<span class="glyphicon glyphicon-chevron-right"></span>
			</button>
			
		</div>
		
		
		<h4>프리미엄상품</h4>
		<div style="display: inline-block;">
			<button type="button" class="btn btn-default" style="margin-bottom: 180px;">
			<span class="glyphicon glyphicon-chevron-left"></span>
			</button>
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<input type="image" id="thumbnail" src="img/mo.jpg">
					<input type="image" id="thumbnail" src="img/mo.jpg">
			<button type="button" class="btn btn-default" style="margin-bottom: 180px;">
			<span class="glyphicon glyphicon-chevron-right"></span>
			</button>
		</div>
		
	</div>
	
</div>



</body>
</html>