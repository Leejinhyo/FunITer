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
<title>Del_signup2.jsp</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

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
#under{text-align: center; margin-top: 10px;}

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
		/* // 사업자등록번호 조회
		$("#LicenseCheck").click(function()
		{
			a = 1;
			if ($("#delLicense1").val().length != 5 || isNaN($("#delLicense1").val()) 
		        		|| $("#delLicense2").val().length != 5 || isNaN($("#delLicense2").val()))
			{
				alert("사업자 등록번호를 정확히 입력하세요 (5자리 숫자 - 5자리 숫자)");
				$("#delLicense1").focus();
				return;
			}
			else
			{
				alert("사업자로 조회되었습니다.");
			}
				
		});
		
		// 핸드폰 인증번호 조회
		$("#phoneCheck").click(function()
		{
			if ($("#phone2").val() == "" || $("#phone3").val() == "")
	        {
	           alert("핸드폰 번호를 입력한 후 인증번호를 받으세요.");       
	        }
			else
			{
				b = 1;
				var iden = document.getElementById("identify");
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
	 */
		//입력 사항 유효 검사
		$("#next").click(function()
		{/* 
			if ($("#delId").val() == "")
			{
				alert("아이디를 입력하세요");
				$("#delId").focus();
				return;
			}
			if ($("#delPw1").val() == "")
			{
				alert("비밀번호를 입력하세요");
				$("#delPw1").focus();
				return;
			}
			else if ($("#delPw2").val() == "")
			{
				alert("비밀번호를 다시 한 번 입력하세요");
				$("#delPw2").focus();
				return;
			}
			
			else if($("#delPw1").val().length < 6 || $("#delPw2").val().length > 16)
			{
				alert("비밀번호는 6자 이상 16자 이하로 구성되어야 합니다.");
				$("#delPw1").focus();
				return;
			}
			else if($("#delPw1").val() != $("#delPw2").val() )
			{
				alert("입력하신 비밀번호가 서로 일치하지 않습니다.");
				$("#delPw1").focus();
				return;
			}
			 
			else if ($("#delName").val() == "")
			{
				alert("업체명을 입력하세요");
				$("#delName").focus();
				return;
			}
			
			else if ($("#delLicense1").val() == "")
			{
				alert("사업자 등록번호를 입력하세요");
				$("#delLicense1").focus();
				return;
			}
			else if ($("#delLicense2").val() == "")
			{
				alert("사업자 등록번호를 모두 입력하세요");
				$("#delLicense2").focus();
				return;
			}
			else if ($("#delOwner").val() == "")
			{
				alert("사업주명을 입력하세요");
				$("#delOwner").focus();
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
			
			else if($('input:checkbox[name="del_loc"]:checked').length==0)
			{
				alert("지역을 1개 이상 선택해야 합니다");	
			}
			
			//사업자 등록번호 조회 체크
			if (a==0 || $("#delLicense1").val().length != 5 || isNaN($("#delLicense1").val()) 
	        		|| $("#delLicense2").val().length != 5 || isNaN($("#delLicense2").val()))
			{
				alert("사업자 등록 번호를 조회해야 합니다.");
				return;
			}
			//핸드폰 인증번호 조회 체크
			if (b==0 || temp != $("#recognize").val() )
			{
				alert("인증번호를 조회해야 합니다.");
				return;
			} */
					
			$("#signupform2").submit();
			
			
		}); //end $("#next").click()  -- 『다음단계』 버튼 눌렀을 때
		
		
	}); //end $(document).ready()
	
</script>
</head>
<body>

<div class="container">
<div class="outer">
<div class="inner">
<div class="centered" style="margin-left: 320px;">

	<div>
		<h3>온라인 업체등록 신청</h3>
		<hr>
		<h5 style="margin-bottom: -20px;">사업자 정보&nbsp;<span id="red" style="font-size: 8px;">* 필수 입력 정보</span></h5>
	</div>
	<div id="content">
		<form action="delsignupinfoinsert.action" method="post" id="signupform2">
			<table>
				<tr>
					<th>아이디*</th>
					<td><input type="text" id="delId" name="del_id"
						style="width: 200px;"> <input type="button" id="idCheck"
						name="idCheck" value="중복확인" class="btn" style="height: 30px; margin-left: 38px;"></td>
				</tr>
				<tr>
					<th>비밀번호*</th>
					<td>
						<input type="password" id="delPw1" name="del_pw"style="width: 200px;">
					</td>
				</tr>
				<tr>
					<th>비밀번호 확인*</th>
					<td>
						<input type="password" id="delPw2" name="delPw2" style="width: 200px;">
					</td>
				</tr>
				<tr>
					<th>업체명*</th>
					<td>
						<input type="text" id="del_name" name="del_name" style="width: 200px;">
					</td>
				</tr>
				<tr>
					<th>사업자 등록 번호*</th>
					<td>
						<input type="text" id="delLicense1" name="del_lisence1" style="width: 70px;"> 
						─ 
						<input type="text" id="delLicense2" name="del_lisence2" style="width: 70px;">
						<input type="button" id="LicenseCheck" name="LicenseCheck" value="조회" class="btn" 
						style="height: 30px; margin-left: 78px;">
					</td>
				</tr>
				<tr>
					<th>사업주명*</th>
					<td>
						<input type="text" id="delOwner" name="del_owner" style="width: 200px;">
					</td>
				</tr>
				<tr>
					<th>사업자 휴대폰 번호*</th>
					<td>
						<select id="phone1" name="del_tel1">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="017">017</option>	
						</select> 
						─ 
						<input type="text" id="phone2" name="del_tel2" style="width: 70px;"> 
						─ 
						<input type="text" id="phone3" name="del_tel3" style="width: 70px;"> 
						<input type="button" value="인증번호 전송" class="btn" id="phoneCheck" 
						style="height: 30px;">
						<p id="identify"></p>
					</td>
				</tr>
				<tr>
					<th>인증번호 입력*</th>
					<td>
						<input type="text" id="recognize" name="recognize">
						<input type="button" id="recCheck" name="recCheck" value="확인" 
						class="btn" style="height: 30px; margin-left: 64px;">
						<br>
					</td>
				</tr>
				<tr>
					<th>지역 선택*<br>(1개 이상)</th>
					<td>
						<table>
							<tr>
								<td><input type="checkbox" id="01" value="서울" name="del_loc">서울특별시</td>
								<td><input type="checkbox" id="02" value="경기" name="del_loc">경기도</td>
								<td><input type="checkbox" id="03" value="인천" name="del_loc">인천광역시</td>
								<td><input type="checkbox" id="04" value="대전" name="del_loc">대전광역시</td>
							</tr>
							<tr>
								<td><input type="checkbox" id="05" value="충북" name="del_loc">충청북도</td>
								<td><input type="checkbox" id="06" value="충남" name="del_loc">충청남도</td>
								<td><input type="checkbox" id="07" value="강원" name="del_loc">강원도</td>
								<td><input type="checkbox" id="08" value="광주" name="del_loc">광주광역시</td>
							</tr>
							<tr>
								<td><input type="checkbox" id="09" value="전북" name="del_loc">전라북도</td>
								<td><input type="checkbox" id="10" value="전남" name="del_loc">전라남도</td>
								<td><input type="checkbox" id="11" value="경북" name="del_loc">경상북도</td>
								<td><input type="checkbox" id="12" value="경남" name="del_loc">경상남도</td>
							</tr>
							<tr>
								<td><input type="checkbox" id="13" value="부산" name="del_loc">부산광역시</td>
								<td><input type="checkbox" id="14" value="울산" name="del_loc">울산광역시</td>
								<td><input type="checkbox" id="15" value="대구" name="del_loc">대구광역시</td>
								<td><input type="checkbox" id="16" value="제주" name="del_loc">제주도</td>
							</tr>
						</table>
					</td>
				</tr>
				<tr>
					<th>홈페이지 URL</th>
					<td>
					<input type="text" id="delUrl" name="url" style="width: 400px;">
					</td>
				</tr>
				<tr>
					<th>홍보내용</th>
					<td>
						<textarea style="width: 400px; height: 100px" name="introduce"></textarea>
					</td>
				</tr>

			</table>
</form>
			<div id="under">
				<input type="button" value="다음단계" class="btn btn-danger" id="next"> 
				<input type="button" value="뒤로가기" class="btn" id="back">
			</div>
		
	</div>	<!-- end content -->
	
	

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









