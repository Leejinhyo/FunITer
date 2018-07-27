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
<title>Del_signup1.jsp</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<style type="text/css">
html, body {width: 100%; height: 100%;}
		.container {width: 70%; height: 10%; margin: 20px auto; }
		/* .outer {display: table; width: 100%; height: 100%; }
		.inner {display:table-cell; vertical-align: middle; text-align: center;} */
		.centered {position: relative; display: inline-block; width: 50%; height: 30%; padding: 1em; text-align:left;}

#subtitle 
{
	font-size: 30px;
	text-align: left;
}
#agreeText
{
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 800px;
	padding: 15px;
	margin: 30px;
	font-size: 9px;
}

#content, #footer
{
	text-align: center;
	 width: 900px; 
}

</style>
<script type="text/javascript">
	$(document).ready(function()
	{
		//약관 체크 여부
		$("#next").click(function()
		{
			if($('input:checkbox[id="agree"]:checked').length==0)
			{
				alert("필수 약관에 모두 동의하셔야 합니다.");
				return;   
			}
			else
			{
				signupform1.submit();
			}
			
			
		});//-- 『다음단계』 버튼 눌렀을 때
		
			
	});
</script>
</head>
<body>

<div class="container">
<div class="outer">
<div class="inner">
<div class="centered">
	<div>
		<h3>온라인 업체 등록 신청</h3>
		<hr>
	</div>
	<div id="subtitle">
		<p>이용가이드</p>
	</div>		

	<img id="img" src="images/googlecapture.PNG">
	
	<div id="content">
	
		<div id="agreeText">
		
		개인정보 수집 및 이용 동의 "회사"는 다음과 같이 "사장님"의 개인정보를 수집합니다.
		처리하고 있는 개인정보는 다음의 수집·이용목적 이외의 용도로는 활용되지 않으며, 수집·이용목적이 변경되는 경우에는 「개인정보보호법」에 따라 별도의 동의를 받는 등 필요한 조치를 이행합니다.
		요기요 온라인 입점신청 시 수집하는 개인정보
		개인정보 수집 목적	수집하는 개인정보 항목	보유 및 이용기간	수집방법
		요기요 입점신청	[필수] 사업자번호, 사업자등록증, 영업신고등록증, 사업주명, 사업자 휴대폰번호, 인증번호, 음식점 이름, 음식점 주소, 업종 카테고리, 배달가능 여부
		[선택] 음식점전화번호, 전단지	목적달성 후 즉시 파기	온라인
		요기요 온라인 입점신청을 위해 동의받는 개인정보 수집 및 이용동의를 제외한 나머지 개인정보처리 관련 사항은 요기요 사장님 사이트의 개인정보처리방침과 동일하게 적용됩니다.
		</div>
		
		<label><input type="checkbox" id="agree">개인정보 수집 및 이용에 동의합니다.(필수)</label>
		<br><br>
			
		<form action="delsignup2.action" id="signupform1">
			<input type="button" value="뒤로가기" class="btn btn-info" onclick="location.href='dellogin.action'">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="button" value="다음단계" id="next" class="btn btn-danger">
		</form>
	<br><br>
	</div>

	<footer id="footer"> 
	(유)회사소개 서울시 강남구 테헤란로 5길 7 KG타워 10, 11, 12층 유한회사
	알지피코리아 |대표자 : 강신봉 | 통신판매업신고:제
	2011-서울강남-03322호|개인정보담당자:privacy@yogiyo.co.kr|제휴문의:partnership@rgpkorea.co.k
	호스트서비스사업자:(주)심플렉스인터넷 
	</footer>
</div>
</div>
</div>
</div>
</body>
</html>









