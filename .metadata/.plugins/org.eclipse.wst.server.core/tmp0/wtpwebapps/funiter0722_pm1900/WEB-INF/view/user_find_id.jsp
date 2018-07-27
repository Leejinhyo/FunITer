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
	width: 700px;
	padding: 15px;
	margin: 30px;
}

#content h3 {
	margin: 0px;
	margin-bottom: 15px;
}

table th
{
	text-align: center;
}

#under
{
	margin-left: 100px;
}


body
{
	margin-left: 100px;
	margin-top: 200px;
	width: 500px;
	
}
</style>
<script type="text/javascript">

	var temp = Math.floor(Math.random() * 100000+2000);

	$(document).ready(function()
	{
		
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
		 
		 
		 $("#next").click(function()
		 {
			if ($("#phone1").val() == "")
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
			    
			    //각각의 전화번호들을 하나의 변수 user_tel로 엮기 위한 과정 
			    //alert($("#phone1").val()+$("#phone2").val()+$("#phone3").val());
				var telephone = $("#phone1").val()+$("#phone2").val()+$("#phone3").val()
				
				$("#user_tel").val(telephone);
			    
			   
			    
				$("#myform").submit(); 
				
			 
			 
		 });
		 
			 
	
	});

</script>



</head>
<body>

<h1>아이디 찾기</h1>
<hr>

<div>
	<span style="color: red;">회원정보에 등록한 휴대전화로 인증</span><br>
	<span style="font: bold;">회원정보에 등록한 휴대폰 번호와 입력한 번호가 같아야 인증번호를 받을 수 있습니다. </span>
	
	<div id="content">
	<form action="user_finded_id.action" method="post" id="myform">
	<table>
		<tr>
			<th>이름*</th>
			<td>
				<input type="text" id="user_name" name="user_name">
			</td>
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
				value="인증번호 전송" class="btn" style="height: 30px;" id="sendbtn"></td>
		</tr>
		<tr>
			<th>인증번호 입력*</th>
			<td><input type="text" id="recognize" name="recognize">
				<input type="button" id="recCheck" name="recCheck" value="확인" class="btn" style="height: 30px;">
				<!-- 
				<span>인증번호가 오지 않을 시 클릭하세요.</span> 
				<input type="button" id="again"	name="again" value="재발송" class="btn" style="height: 30px;"></td> 
			
				-->
		
		</tr>
		
		
	</table>
	
		<h3 id="identify"></h3>
		<div id="under">
			<input type="button" id="next" name="next" value="다음" class="btn btn-info" style="width: 200px;" >
			<input type="button" id="cancel" name="cancel" value="취소" class="btn btn-info" style="width: 200px;" onclick="location.href='user_login.action'">
		</div>

		</form>
	</div>
</div>

</body>
</html>