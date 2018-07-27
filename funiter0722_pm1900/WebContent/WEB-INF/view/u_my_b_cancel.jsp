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
	width:1500px;
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

table tr>th
{
	width: 200px;
	height: 100px;
	text-align: center;
	background-color: #f2a93a;
	color: white;
	font-size: 20px;
	
}
table tr>td
{
	text-align:  center;
	font: bold;
	font-size: 15px;
	padding-left: 50px;
}



</style>
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
<div id="up">

	<span class="btn btn-success"><a href="u_my_b_cancel.action" style="color: white;">취소 모아보기</a></span>
	<span class="btn btn-default"><a href="u_my_b_cancellist1.action" style="color: gray;" >취소한 내역_종합</a></span>
	<span class="btn btn-default"><a href="u_my_b_cancellist2.action" style="color: gray;" >취소한 내역_예약</a></span>
	<span class="btn btn-default"><a href="u_my_b_cancellist3.action" style="color: gray;" >판매취소된 내역</a></span>
	<span class="btn btn-default"><a href="u_my_b_cancellist4.action" style="color: gray;" >구매취소된 내역</a></span>
		
</div>
		
		<div>
			<h3 class="glyphicon glyphicon-tags">취소 모아보기</h3>
			<hr>
		</div>	
		
		<!-- 아래 공간 -->
		<div>
			<table>
				<tr>
					<th style="color: white;"><a href="u_my_b_cancellist1.action" >취소한 내역_일반거래</a></th>
					<td>총 12건</td>
				</tr>
				<tr>
					<th><a href="u_my_b_cancellist2.action">취소한 내역_예약거래</a></th>
					<td>총 5건</td>
				</tr>

				<tr>
					<th><a href="u_my_b_cancellist3.action">판매 취소된 내역</a></th>
					<td>총 7건</td>
				</tr>

				<tr>
					<th><a href="u_my_b_cancellist4.action">구매 취소된 내역</a></th>
					<td>총 1건</td>
				</tr>
				
			</table>
		</div>
</div>
</div>
</body>
</html>