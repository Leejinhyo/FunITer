<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
<!-- <script type="text/javascript" src="js/jquery-3.3.1.min.js"></script> -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>

</head>
<body>
<div style="margin-left: 30%;">
	<input type="button" class="btn btn-danger" value="정기결제내역"  onclick="location.href='delpaylist.action'">
	<input type="button" class="btn btn-default" value="업체정보수정" onclick="location.href='delupdatelogin.action'">
</div>
</body>
</html>