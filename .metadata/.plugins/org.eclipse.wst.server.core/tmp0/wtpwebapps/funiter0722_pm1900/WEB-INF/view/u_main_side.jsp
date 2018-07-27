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


#up
{
	font-size: 15px;
}
</style>

</head>
<body>

<div id="up">
	<a href="#" class="glyphicon glyphicon-th-list"></a>
	<input type="text" id="search" name="search" placeholder="예: 침대, 행거">
	
		<ul>
			<li><a href="">침실가구</a></li>
				<li><a href="">침대</a></li>
				<li><a href="">옷장</a></li>
				<li><a href="">장롱</a></li>
				<li><a href="">화장대</a></li>
			<li><a href="">침실가구</a></li>
			<li><a href="">침실가구</a></li>
			<li><a href="">침실가구</a></li>
		</ul>
		
</div>

</body>
</html>