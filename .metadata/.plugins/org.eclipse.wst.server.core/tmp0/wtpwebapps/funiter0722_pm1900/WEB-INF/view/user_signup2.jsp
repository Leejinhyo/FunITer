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
<script type="text/javascript"src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<!-- daum 주소 api 하기 위한 자바스크립트 소스  -->
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
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

#red {color: red;}
#identify {font-size: 10px; color: red; font-weight: bold;}
#under{text-align: center; margin-top: 10px; }

html, body {width: 100%; height: 100%;}
		.container {width: 70%; height: 70%; margin: 40px auto; }
		.outer {display: table; width: 100%; height: 100%; }
		.inner {display:table-cell; vertical-align: middle; text-align: center;}
		.centered {position: relative; display: inline-block; width: 70%; height: 30%; padding: 1em; text-align:left;}
</style>

<script type="text/javascript">
		
		var a = 0;
		var b = 0;
		var temp = Math.floor(Math.random() * 100000+2000);
	
		
	$(document).ready(function()
	{
	
		//alert($("#phone1").val());
		
		$("#bank_code").change(function()
		{
			alert($("#bank_code").val());
		});
		
		
		 $("#sendbtn").click(function()
	      {
			 if ($("#phone2").val() == "" || $("#phone3").val() == "")
			 {
				alert("핸드폰 번호를 입력한 후 인증번호를 받으세요.");	 	
			 }
		 	 else
		     {
		 		$(this).attr("disabled", true);
		         b = 1;
		         var iden = document.getElementById("identify");
		         //var temp = Math.floor(Math.random() * 100000+2000);
		         iden.innerHTML += temp;
		         
		         $("#recCheck").click(function()
		         {
		            
		            if(temp != $("#recognize").val() )
		            {
		               alert("인증번호가 올바르지 않습니다.");
		               $("#recognize").focus();
		               return;
		            }
		            else
		            {
		               alert("인증되었습니다.");
		            }
		            
		         }); 
		     }
			 
	      });

		
		//입력 사항 유효 검사
		$(".signup").click(function()
		{
			if ($("#user_id").val() == "")
			{
				alert("아이디를 입력하세요");
				$("#user_id").focus();
				return;
			}
			if ($("#user_pw").val() == "")
			{
				alert("비밀번호를 입력하세요");
				$("#user_pw").focus();
				return;
			}
			else if ($("#user_pw2").val() == "")
			{
				alert("비밀번호를 다시 한 번 입력하세요");
				$("#user_pw2").focus();
				return;
			}
			
			else if($("#user_pw").val().length < 6 || $("#user_pw").val().length > 16)
			{
				alert("비밀번호는 6자 이상 16자 이하로 구성되어야 합니다.");
				$("#user_pw").focus();
				return;
			}
			else if($("#user_pw").val() != $("#user_pw2").val() )
			{
				alert("입력하신 비밀번호가 서로 일치하지 않습니다.");
				$("#user_pw").focus();
				return;
			}
			 
			else if ($("#user_name").val() == "")
			{
				alert("이름을 입력하세요");
				$("#user_name").focus();
				return;
			}
			
			else if ($("#user_addr").val() == "")
			{
				alert("주소를 입력해주세요.");
				$("#user_addr").focus();
				return;
			}

			else if ($("#phone1").val() == "")
			{
				alert("핸드폰 번호를 입력하세요");
				$("#phone1").focus();
				return;
			}
			else if ($("#phone2").val() == "")
			{
				alert("핸드폰 번호를 모두 입력하세요");
				$("#phone2").focus();
				return;
			}
			else if ($("#phone3").val() == "")
			{
				alert("핸드폰 번호를 모두 입력하세요");
				$("#phone3").focus();
				return;
			}
			else if (  isNaN($("#phone2").val()) || isNaN($("#phone3").val() ) )
			{
				alert("핸드폰 번호를 숫자 형태로 입력하세요");
				$("#phone3").focus();
				return;
			}
			else if ($("#recognize").val() == "")
			{
				alert("인증번호를 입력하세요");
				$("#recognize").focus();
				return;
			}
			else if ($("#bank_code").val() == "")
			{
				alert("은행을 선택해주세요.");
				$("#bank_code").focus();
				return;
			}
			else if ($("#account_num").val() == "")
			{
				alert("계좌번호를 모두 입력하세요");
				$("#account_num").focus();
				return;
			}
			
			
		    if (b==0 || temp != $("#recognize").val() )
	        {
	            alert("인증번호를 조회해야 합니다.");
	            return;
	        }

		    	
		    
		    //각각의 전화번호들을 하나의 변수 user_tel로 엮기 위한 과정 
		    //alert($("#phone1").val()+$("#phone2").val()+$("#phone3").val());
			var telephone = $("#phone1").val()+$("#phone2").val()+$("#phone3").val()
			
			$("#user_tel").val(telephone);
		    
		   
		    
			$("#myform").submit(); 
			
			
			

		}); 
			//가입하기 눌렀을 때 화면. 

		if($("#addrCheck").click(function()
		{
			// 여기부터 주소 가져오는 코드!!
			new daum.Postcode({
		        oncomplete: function(data) {
		            // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분입니다.
		            // 예제를 참고하여 다양한 활용법을 확인해 보세요.
		            $("#user_post_num").val(data.zonecode);
		        	$("#user_addr").val(data.address);
		            //해당하는 textbox 에 데이터 넣어주기 : json 방식으로 처리되며, 
		            //alert(typeof data.zonecode); 한 경우, string 으로 반환됨!!!
		       
		        }
		    }).open();
		
			
			
		}));
		//주소 조건문 종료
		
		
		
	});
	


	
</script>

</head>
<body>
<div class="container">
<div class="outer">
<div class="inner">
<div class="centered" style="margin-left: 320px;">

	<div>
		<h3>회원가입 신청</h3>
		<hr>
		<h5 style="margin-bottom: -20px;">
		<br><span id="red" style="font-size: 8px; margin-left: 30px;">* 필수 입력 정보</span></h5>
	</div>
	<div id="content">

		<form action="userinsert.action" id="myform" method="post">

			<table>
				<tr>
					<th>아이디*</th>
					<td>
					<input type="text" id="user_id" name="user_id" style="width: 200px;"> 
					<input type="button" id="idCheck" name="idCheck" 
					value="중복확인" class="btn" style="height: 30px; margin-left: 102px;">
					</td>
				</tr>
				<tr>
					<th>비밀번호*</th>
					<td><input type="text" id="user_pw" name="user_pw"
						style="width: 200px;"></td>
				</tr>
				<tr>
					<th>비밀번호 확인*</th>
					<td><input type="text" id="user_pw2" name="user_pw2"
						style="width: 200px;"></td>
				</tr>
				<tr>
					<th>이름*</th>
					<td><input type="text" id="user_name" name="user_name"
						style="width: 200px;"></td>
				</tr>
				<tr>
					<th>주소*</th>
					<td>
					<input type="text" id="user_post_num" name="user_post_num" style="width: 100px;">
					<input type="text" id="user_addr" name="user_addr" style="width: 200px;">
					<input type="button" id="addrCheck" name="addrCheck" value="찾아보기" class="btn" style="height: 30px;"></td>
				</tr>
				<tr>
					<th>나머지 주소</th>
					<td><input type="text" id="user_detail_addr" name="user_detail_addr"
						style="width: 200px;"></td>
				</tr>
				<tr>
					<th>
						휴대폰 번호<input type="text" id="user_tel" name="user_tel" style="display: none;"></th>
					<td><select id="phone1">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>
						</select> ─ <input type="text" id="phone2" name="phone2"
						style="width: 70px;"> ─ <input type="text" id="phone3"
						name="phone3" style="width: 70px;"> <input type="button"
						value="인증번호 전송" class="btn" style="height: 30px; margin-left: 50px;" id="sendbtn">
						<p id="identify"></p>
					</td>
				</tr>
				<tr>
					<th>인증번호 입력*</th>
					<td><input type="text" id="recognize" name="recognize">
						<input type="button" id="recCheck" name="recCheck" 
						value="확인" class="btn" style="height: 30px; margin-left: 158px;">
						<!-- 
						<span>인증번호가 오지 않을 시 클릭하세요.</span> 
						<input type="button" id="again"	name="again" value="재발송" class="btn" style="height: 30px;"></td> 
						-->
				</tr>
				<tr>
					<th>계좌번호 입력*</th>
					<td>
					<select id="bank_code" name="bank_code">
						<c:forEach var="banklist" items="${banklist }">
							<option value="${banklist.bank_code }">${banklist.bank_name }</option>
						</c:forEach>
					</select> <input type="text" id="account_num" name="account_num"></td>
				</tr>

			</table>


	
	
			<!-- <h3 id="identify"></h3> -->

		
	


		</form>
		
		<div id="under">
			<input type="button" value="되돌아가기" class="btn btn-danger" onclick="location.href='user_signup.action'"> 
			<input type="button" value="다음페이지" class="btn btn-primary signup" id="signup" >
		</div>
		
		</div>		<!-- end content -->
		
		
		<footer> (유)회사소개 서울시 강남구 테헤란로 5길 7 KG타워 10, 11, 12층 유한회사
		알지피코리아 |대표자 : 강신봉 | 통신판매업신고:제
		2011-서울강남-03322호|개인정보담당자:privacy@yogiyo.co.kr|제휴문의:partnership@rgpkorea.co.k
		호스트서비스사업자:(주)심플렉스인터넷 </footer>
</div>
</div>
</div>
</div>


</body>
</html>









