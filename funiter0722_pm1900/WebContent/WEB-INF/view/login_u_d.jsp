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
	vertical-align: middle;
}
</style>

</head>
<body>

<div id="up">
	<input type="button" class="btn btn-danger" value="일반회원">
	<input type="button" class="btn btn-default" value="업체회원">

</div>

</body>
</html>