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

</head>
<body>

<div id="side">
	<p style="font:bold; width: 200px;  height: 30px; background-color: #6dbff2; color: white; text-align: center; padding-top: 5px;">관리자 알림내역</p>
		<ul>
			<li><a href="u_my_a_alarm.action">관리자 알림내역</a></li>
		</ul>
	<p style="width: 200px;  height: 30px; background-color: #6dbff2; color: white; text-align: center; padding-top: 5px;">거래내역</p>
		<ul>
			<li><a href="u_my_b_selllist.action">판매내역</a></li>
			<li><a href="u_my_b_buylist.action">구매내역</a></li>
			<li><a href="u_my_b_claimlist.action">나의 거래중 신고한 내역</a></li>
			<li><a href="u_my_b_cancelreq.action">구매취소 요청내역</a></li>
			<li><a href="u_my_b_cancel.action">취소 모아보기</a></li>
		</ul>

	<p style="width: 200px;  height: 30px; background-color: #6dbff2; color: white; text-align: center; padding-top: 5px;">프리미엄</p>
		<ul>
			<li><a href="u_my_c_premlist1.action">신청내역</a></li>
			<li><a href="u_my_c_premlist2.action">판매내역</a></li>
			<li><a href="u_my_c_premlist3.action">구매내역</a></li>
		</ul>
	<p style="width: 200px;  height: 30px; background-color: #6dbff2; color: white; text-align: center; padding-top: 5px;">무료나눔</p>
		<ul>
			<li><a href="u_my_d_freelist1.action">나의 나눔한 내역</a></li>
			<li><a href="u_my_d_freelist2.action">나의 나눔받은 내역</a></li>
			<li><a href="u_my_d_freelist3.action">무료나눔 보증금 환급 내역</a></li>
		</ul>
	<p style="width: 200px;  height: 30px; background-color: #6dbff2; color: white; text-align: center; padding-top: 5px;">개인정보</p>
		<ul>
			<li><a href="u_my_e_profile1.action">수신쪽지함</a></li>
			<li><a href="u_my_e_profile2.action">송신쪽지함</a></li>
			<li><a href="u_my_e_profile3.action">개인정보 수정</a></li>
		</ul>
	<p style="width: 200px;  height: 30px; background-color: #6dbff2; color: white; text-align: center; padding-top: 5px;">고객센터</p>
		<ul>
			<li><a href="u_my_f_ans.action">문의내역</a></li>
			<li><a href="u_my_f_ans2.action">신고내역</a></li>
		</ul>				
	<p style="width: 200px;  height: 30px; background-color: #6dbff2; color: white; text-align: center; padding-top: 5px;">북마크</p>
		<ul>
			<li><a href="u_my_g_book.action">북마크 내역</a></li>
		</ul>	
</div>

</body>
</html>
















