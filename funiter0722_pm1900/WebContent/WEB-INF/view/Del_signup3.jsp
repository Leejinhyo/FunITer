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
<title>Del_login3.jsp</title>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<link rel="stylesheet" href="css/bootstrap-theme.min.css">


<style type="text/css">


#content, #footer
{
	text-align: center;
	 width: 900px; 
}
td {padding: 15px;}

#tbl1
{
	
	border: 1px solid black;
	border-collapse: collapse;
	border-spacing: 100px;
	width: 100%; 
}
#td1, #td2
{
	border-bottom: 1px solid black;
	text-align: left;
}

.box1
{
	float: left;
	width: 200px;
	height: 100px;
	text-align: left;
}
.tbl2
{width: 300px;}
.box2
{
	display: inline-block;
	width: 400px;
	height: 100px;
	text-align: left;
	margin-left: 10px;
}
.btn
{
	width: 200px;
	height: 50px;
	font-size: 20px;
}
</style>

<script type="text/javascript">

	$(document).ready(function()
	{
		//약관 체크 여부
		$("#paygo").click(function()
		{
			if($('input:checkbox[id="agree1"]:checked').length==0 || $('input:checkbox[id="agree2"]:checked').length==0)
			{
				alert("필수 약관에 모두 동의하셔야 합니다.");
				return;
			}
			
			//alert($("#delcode").val());
			
			//은행 고른 값을 꺼내서 다시 임시 textbox에 담기
			var bank_code_sel = $("#bank_code").val()	
			//alert(bank_code_sel);
 			$("#bank_temp").val(bank_code_sel);
 			//alert(bank_code_sel); //-- 은행은 항상 국민으로 선택되어 있음
 			
 			// 입력 유효성 검사
 			if ($("#del_account_owner").val()== "" || isFinite( $("#del_account_owner").val() ))
			{
				alert("예금주의 실명을 정확히 입력하시기 바랍니다.");
				return;
			}
 			if ($("#del_account").val()== "" || isNaN( $("#del_account").val() ) )
			{
				alert("계좌번호를 정확히 입력하시기 바랍니다. (- 제외)");
				return;
			}
 			
 			
 			signupform2.submit();
			
		});//-- 『결제하기』 버튼 눌렀을 때
		
		
		$("#withdraw").click(function()
		{
			if (confirm("지금까지의 모든 과정이 철회됩니다. 정말 진행하시겠습니까?") == true)
			{    
				//확인
			    withdrawfrm.submit();
			}
			else
			{   //취소
			    return;
			}

		});
			
	});
	
	
</script>

</head>
<body>

<div class="container">
<div class="outer">
<div class="inner">
<div class="centered">
	<div>
		<h3>온라인 업체 정기결제</h3>
		<hr>
	</div>
	<%-- 
	<h5><%= getid %></h5>
	<h5><%= getpw %></h5>
	<h5><%= getname %></h5>
	<h5><%= getlisence1 %></h5>
	<h5><%= getlisence2 %></h5>
	<h5><%= getowner %></h5>
	<h5><%= gettel1 %></h5>
	<h5><%= gettel2 %></h5>
	<h5><%= gettel3 %></h5>
	<h5><%= getloc %></h5>
	<h5><%= geturl %></h5>
	<h5><%= getintroduce %></h5>
	 --%>
	<div id="content">
	
		<table id="tbl1">
			<tr>
				<td style="font-size: 25px; color: red; font-weight: bold;">업체 홍보하기<td>
				<td id="td1"><span class="glyphicon glyphicon-credit-card" style="font-size: 20px;">자동이체</span><td>
				<td>30,000원</td>
			</tr>
			<tr>
				<td><td>
				<td id="td2"><span class="glyphicon glyphicon-time" style="font-size: 20px;">광고기간</span><td>
				<td>30일</td>
			</tr>
		</table>
		<br><br>

<form action="delgopay.action" method="post" id="signupform2" name="signupform2">	
		<div class="box1">
		
		<c:forEach var="delinfo" items="${delsignup3 }">
		
			<table class="tbl2">
				<tr>
					<th>◎ 업체 가입 정보</th>
					<td>
						<input type="text" id="delcode" name="del_code" value="${delinfo.del_code }" style="display: none;">
						<input type="text" id="delid" name="del_id" value="${delinfo.del_id }" style="display: none;">
					</td>
				</tr>
				<tr>
					<th>업체명 :</th>
					<td>${delinfo.del_name }</td>
				</tr>
				<tr>
					<th>사업자 등록번호 :</th>
					<td>${delinfo.del_lisence1 } - ${delinfo.del_lisence2 }  </td>
				</tr>
				<tr>
					<th>전화번호 :</th>
					<td>${delinfo.del_tel1 } - ${delinfo.del_tel2 } - ${delinfo.del_tel3 } </td>
				</tr>
				<tr>
					<th>결제 시작일 :</th>
					<td>${delinfo.sysdate } <input type="text" style="display: none;" name="sysdate" value="${delinfo.sysdate}"></td>
					
				</tr>
				<tr>
					<th>다음 이체 예정일 :</th>
					<td>${delinfo.nextpaydate }</td>
				</tr>
				<!-- <tr>
					<th>업체명 :</th>
					<td>씽씽용달</td>
				</tr>
				<tr>
					<th>사업자등록번호 :</th>
					<td>12345-67891</td>
				</tr>
				<tr>
					<th>전화번호 :</th>
					<td>010-7777-8888</td>
				</tr>
				<tr>
					<th>결제시작일 :</th>
					<td>2018/06/18</td>
				</tr>
				<tr>
					<th>다음결제일 :</th>
					<td>2018/07/17</td>
				</tr> -->
			</table>
			</c:forEach>
		</div>
		
		
		<div class="box2">
			
				<dl>
					<dt>◎결제방법</dt>
					<dd style="margin-bottom: 15px;">※  자동납부 금액(30000원)보다 잔액이 부족할 경우 자동 해지됩니다.
	    			자동 해지시 , 마이페이지에서 결제내역을 확인 할 수 있으며 
	    			결제완료시, 해당 홍보글 게시물이 다시 등록됩니다.</dd>
					<dd>은행명 : <input type="text" id="bank_temp" style="display: none;">
						<select class="form-control" id="bank_code"  name="bank_code" >
							<c:forEach var="bank" items="${delbankchoice }">
							
								<option value=${bank.bank_code }>${bank.bank_name }</option>
								
							</c:forEach>
						</select>
					</dd>
					<dd>계좌번호 : <input type="text" id="del_account" name="del_account" class="form-control" placeholder="계좌번호를 입력하세요"></dd>
					<dd>예금주 : <input type="text" id="del_account_owner" name="del_account_owner" class="form-control" placeholder="예금주의 실명을 입력하세요"></dd>
				</dl>
			
		</div>
		
		<br><br><br>
		
</form>		
		
		<div class="box3">
			<p style="text-align: left;">◎ 이용약관</p>
			<textarea name="" id="" cols="40" rows="10"  class="form-control" >[이용약관] 
 
제1조(목적) 

이 약관은 (주)텐데이즈(전자상거래 사업자)가 운영하는시디즈 가구 인터넷 쇼핑몰(이하 "몰" 이라 한다)에서 제공하는 인터넷 관련 서비스(이하 "서비스"라고 하다)를 이용함에 있어 몰과 이용자의 권리?의무 및 책임사항을 규정함을 목적으로 합니다.

※ 「PC통신, 무선 등을 이용하는 전자상거래에 대해서도 그 성질에 반하지 않는 한 이 약관을 준용합니다」 

제2조(정의) 

① “몰”이란 (주)텐데이즈 회사가 재화 또는 용역(이하 “재화 등”이라 함)을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여 재화 등을 거래할 수 있도록 설정한 가상의 영업장을 말하며, 아울러 몰을 운영하는 사업자의 의미로도 사용합니다.

② “이용자”란 “몰”에 접속하여 이 약관에 따라 “몰”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.

③ ‘회원’이라 함은 “몰”에 개인정보를 제공하여 회원등록을 한 자로서, “몰”의 정보를 지속적으로 제공받으며, “몰”이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.

④ ‘비회원’이라 함은 회원에 가입하지 않고 “몰”이 제공하는 서비스를 이용하는 자를 말합니다.

			</textarea>
		<br>
		<p style="text-align: left;"><label><input type="checkbox" style="width: 20px;" id="agree1">동의합니다.</label></p>
		<br>
		</div>
		
		<br><br>
		
		<div class="box4">
			<p style="text-align: left;">◎ 개인정보 취급방침</p>
			<textarea name="" id="" cols="40" rows="10"  class="form-control" >[개인정보취급방침] 
 
‘(주)텐데이즈’(이하 회사)가 운영하는 시디즈가구 인터넷 쇼핑몰(이하 "몰" 이라 한다)은 귀하의 개인정보보호를 매우 중요시 하며 , 『정보통신망이용촉진 및 정보보호에 관한 법률』상의 개인정보보호규정 및 방송통신위원회가 제정한 『개인정보보호지침』을 준수하고 있습니다.


1. 총칙


 회사는 개인정보취급방침을 통하여 귀하가 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.

회사는 개인정보취급방침을 몰의 첫 화면에 공개함으로써 귀하께서 언제나 용이하게 보실 수 있도록 조치하고 있습니다.

회사는 개인정보취급방침의 지속적인 개선을 위하여 개정하는데 필요한 절차를 정하고 있으며, 개인정보취급방침을 회사의 필요와 사회적 변화에 맞게 변경할 수 있습니다. 그리고 개인정보취급방침을 개정하는 경우 버전번호 등을 부여하여 개정된 사항을 귀하께서 쉽게 알아볼 수 있도록 하고 있습니다.

ο 본 방침은 : 2014년 10 월 01 부터 시행됩니다.
 
 			</textarea>
 		<br>
		<p style="text-align: left;"><label><input type="checkbox" style="width: 20px;" id="agree2">동의합니다.</label></p>
		<br>	
		</div>
	<br><br>
	<div style="display: inline;">	
	<form action="delsignupwithdraw.action" id="withdrawfrm" method="post">
	<input type="button" value="가입철회" id="withdraw" class="btn btn-default">
	
	<input type="button" value="결제완료" id="paygo" class="btn btn-danger"></form></div>
	</div>
	
	<br><br><br><br>
	
	
	
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

