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
<title>Del_login.jsp</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<script type="text/javascript">
	function login()
	{
	   $("#loginform").submit();
	}
</script>
<style type="text/css">
#content {
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 420px;
	padding: 15px;
	margin: 30px;
}

#content h3 {
	margin: 0px;
	margin-bottom: 15px;
}


html, body {width: 100%; height: 100%;}
		.container {width: 70%; height: 70%; margin: 40px auto; }
		.outer {display: table; width: 100%; height: 100%; }
		.inner {display:table-cell; vertical-align: middle; text-align: center;}
		.centered {position: relative; display: inline-block; width: 50%; height: 30%; padding: 1em; text-align:left;}

</style>

</head>
<body>

<div class="container">
<div class="outer">
<div class="inner">
<div class="centered">

<div style="height: 30px; display: none;" >
<c:import url="first_main_up.jsp"></c:import>
</div>
	<div>
		<h3>로그인 및 회원가입</h3>
		<hr>
	</div>

	<div style="margin-left: 130px;">
		<c:import url="Del_login_import.jsp"></c:import>
	</div>

	<div id="content">
		<form action="dellogincheck.action" id="loginform" method="post">
			<div class="form-group form-inline" style="display: inline-block;  width: 600px;" >

            
            <table id="table">
               <tr>
                  <th>아이디</th>
                  <td>
                  <div>
                     <input type="text" id="delId" name="del_id" placeholder="아이디를 입력하세요"
                     required="required" class="form-control">
                  </div>
                  <td rowspan="2">
                     <input type="submit" value="로그인" style="height: 70px;" class="btn btn-danger" onclick="login()">
                  </td>
               </tr>
               <tr>
                  <th>비밀번호 </th>
                  <td>
                     <div>
                        <input type="password" id="delPw" name="del_pw" placeholder="비밀번호를 입력하세요"
                         required="required" class="form-control">
                     </div>
                  </td>
               </tr>
               
            </table>
            
         </div>
		</form>	
			
			<input type="submit" value="회원가입" class="btn btn-danger" onclick="location.href='delsignup1.action'"> 
			<input type="button" value="아이디찾기" class="btn btn-danger"> 
			<input type="button" value="비밀번호찾기" class="btn btn-danger">
			
		

	</div>

	<footer> 
		<a href="login.action">(유)회사소개</a> 
		서울시 강남구 테헤란로 5길 7 KG타워 10, 11, 12층 유한회사
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









