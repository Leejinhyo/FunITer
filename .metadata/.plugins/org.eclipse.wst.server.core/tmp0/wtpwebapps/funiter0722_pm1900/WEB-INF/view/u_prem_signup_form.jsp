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
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp %>/js/jquery-ui.js"></script>
<script type="text/javascript" src="<%=cp %>/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="<%=cp %>/css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="<%=cp %>/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="<%=cp %>/css/jquery-ui.css">

<style type="text/css">
#content {
	border: 1px solid #ccc;
	border-radius: 5px;
	padding: 15px;
	margin: 30px;
	margin-top: 100px;
}

#content h3 {
	margin: 0px;
	margin-bottom: 15px;
}

#side {
	margin-top: 0px;
}

#myform
{

	margin-top: 100px;
	margin-left: 100px;
}
#summary
{
	text-align: center;
}

/* #table th
{
	width: 200px;
	text-align: center;
}
table th td
{
	width: 600px;
} */
#mainbtn
{
	margin-left: 200px;
}

</style>
<script type="text/javascript">


	$(document).ready(function()
	{
		// 입력 유효성 검사
		$("#prem_register").click(function()
		{
			
			if($("#l_cate").val() == 0)
			{
				alert("대분류를 선택하세요");
				return;
			}/* 
			else if($("#s_cate").val() == 0)
			{
				alert("소분류를 선택하세요");
				return;
			} */
			else if($("#wish_price").val() == "")
			{
				alert("판매 희망 가격을 입력하세요");
				$("#wish_price").focus();
				return;
			}
			else if(isNaN($("#wish_price").val()))
			{
				alert("판매 희망 가격은 숫자만 입력이 가능합니다");
				$("#wish_price").focus();
				return;
			}
			
			else if($('input:checkbox[name="wish_visit_time"]:checked').length==0)
			{
				alert("오전/오후 여부를 선택해야 합니다");
				return;
			}
			
			else if($("#warrant_pic").val() == "" && $("#buylist_pic").val() == "" )
			{
				alert("제품을 증명할 수 있는 자료를 필수로 업로드 해야 합니다.");	
				return;
			}
			else if($("#apply_pic").val() == "" )
			{
				alert("사진은 필수로 업로드 해야 합니다.");	
				return;
			}
			
		});	// 유효성 검사 end
		
		
		
		$(".photo").change(function()
		{
			// 보증서를 선택했을 경우 구매내역 file창 disabled
			if($("#photo1").is(":checked"))
				$("#buylist_pic").attr("disabled","disabled");
			else 
			{
				$("#warrant_pic").attr("disabled","disabled");
				$("#buylist_pic").removeAttr("disabled");
			}
			
			// 구매내역을 선택했을 경우 보증서 file창 disabled
			if($("#photo2").is(":checked"))
				$("#warrant_pic").attr("disabled","disabled");
			else 
			{
				$("#buylist_pic").attr("disabled","disabled");
				$("#warrant_pic").removeAttr("disabled");
			}
		});
		
		
		
		// jQuery-UI 캘린더를 불러오는 함수 처리. 
		$("#wish_visit_d").datepicker(
		{//Jason 형식? 으로 넘길 때 function 안하고 넘긴다.
				
			//dateFormat: "mm/dd/yy", // See format options on parseDate --> 이 함수 변경할 때.	
			dateFormat : "yy-mm-dd",
			//yyyy 라고 쓰지 않는다.
			changeYear :true,
			changeMonth : true,
			minDate : 0,
			maxDate : 14,
			numberOfMonths: 2,
			// 속성값을 넘기는 것이기 때문에, ,(콤마)로 구성한다. !!!
			// 이게바로 Jason 쓰는 법 { 키 : 넘겨줄 값 } 
			//--그래서 아래에서도 function(data) 처리할 때, Jason 쓰는것!
		});
		 
		
	
		$("#l_cate").change(function()
			{
				//대분류가 바뀔 때 마다 소분류도 바뀌게 해야한다. 
				//이때 ajax 처리로 xml 파일을 받아와야 하며, 
				var l_category_code = $("#l_cate").val();
				// 대분류 값을 넣어줄 것. 
	
				alert(l_category_code);
				
				//Ajax 요청 및 응답 처리.
				var url = "s_select.action?l_category_code="+l_category_code;
				
				//메소드 호출.
				ajax = createAjax();
				
				ajax.open("GET", url, true);
				
				ajax.onreadystatechange = function()
				{
					if (ajax.readyState==4 && ajax.status==200)
					{
						alert("콜백호출?");
						callBack();
					}
				}
			
				ajax.send("");
				
			});//대분류가 바뀔 때 끝. 
		
	});
	
	
	function callBack()
	{
		var doc = ajax.responseXML;
		
		var root = doc.documentElement;
		//root 로 넘어올 건 list 로 할거기때문에 
		var arr = root.getElementsByTagName("item");
		alert("못오나?");
		document.getElementById("s_cate").innerHTML = "<option value"+0+">소분류</option>";
		
		for(var i=0; i<arr.length; i++)
		{
			alert("포문은 몇번?");
			
			var a= arr[i].firstChild.nodeValue;	//1
			//첫번째 애들을 잡아와서. --> 얘가 전체임!
			
			var b = arr[i+1].firstChild.nodeValue //얘가 1에 대한 소파. 
			//alert("a.length : "+a.length);
			//alert(typeof a);
			
			var temp= a.split(" ");
			var temp2 = b.split(" ");
			//==>혹시 문제가 생기거든, var 를 위로 뺄 것. for 문 밖. 			
			
			alert("1 : "+temp[0]);
			//alert("2 : "+temp2[0]);
			//var s_category_code = temp[i];
			//var s_category_name = temp[i+1];
			
			//alert(s_category_name);
			
			document.getElementById("s_cate").innerHTML += "<option value='"+temp[0]+"'>"+temp2[0]+"</option>";				
				
			i++;
		}
		
	}


</script>
</head>
<body>
<div>
<c:import url="first_main_up.jsp"></c:import>
</div>


			
			<!-- 아래 div 애들  -->
		<div style="margin-left: 21%;">
			
			<form action="" id="myform" >
			<h3>프리미엄 상품  출장 신청서</h3>
			<br>
				<table class="table table-bordered" style="width: 900px;">
					<tr>
						<th colspan="2" style="background-color: lightgrey; font-size: 15pt;" >
						<span class="glyphicon glyphicon-user" style="margin-right: 10px; font-size: 15pt"></span>회원 가입 정보</th>
					</tr>
					<tr>
						<th>이름</th>
						<td>
							<input type="text" id="user_code" name="user_code" value="${user.user_code }" style="display:none;"  class="form-control" >
							<input type="text" id="user_name" name="user_name" placeholder="ex)홍길동" 
							value="${user.user_name }"  class="form-control" style="width: 200px;" readonly="readonly"> 
						</td>
					</tr>
					<tr>
						<th>우편번호</th>
						<td>
							<input type="text" id="user_post_num" name="user_post_num" 
							value="${user.user_post_num }" class="form-control" style="width: 200px;" readonly="readonly">
						</td>
					</tr>
					<tr>
						<th>주소</th>
						<td>
							<input type="text" id="user_addr" name="user_addr" placeholder="ex)경기도 시흥시 은행동" 
							value="${user.user_addr }" class="form-control" readonly="readonly" >
						</td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td>
							<input type="tel" id="user_tel" name="user_tel" placeholder="ex)010-1111-1111"
							 value=${user.user_tel } class="form-control" style="width: 350px;" readonly="readonly">
						</td>
					</tr>
				</table>
				<br>
				<table class="table table-bordered" style="width: 900px;">
					<tr>
						<th colspan="2" style="background-color: silver; font-size: 15pt;" >
						<span class="glyphicon glyphicon-list-alt" style="margin-right: 10px; font-size: 15pt"></span>입력 사항</th>
					</tr>
					<tr>
						<th>상품분류 선택</th>
						<td>
							<select id="l_cate" name="l_cate" class="form-control" style="width: 300px; display: inline;" >
								<option value="0">대분류</option>
								<c:forEach var="llist" items="${l_list }">
									<option value="${llist.l_category_code }">${llist.l_category_name }</option>
								</c:forEach>
							</select>				
							<select id="s_cate" class="form-control" style="width: 300px; display: inline;" >
								<option value="0">소분류</option>
							</select>
					</td>
					</tr>
					<tr>
						<th>판매 희망 가격
						<td>
							<input type="text" id="wish_price" name="wish_price"
							 placeholder="내용을 입력해주세요." class="form-control"  style="width: 200px; display: inline;"> &nbsp;&nbsp;원
						</td>
					</tr>
					<tr>
						<th>출장 희망일</th>
						<td>
							<input type="text" name="wish_visit_d" id="wish_visit_d" class="form-control"
							 style="width: 150px; display: inline; margin-right: 20px;"><span class="glyphicon glyphicon-time"></span>
							<input type="checkbox" name="wish_visit_time" id="wish_visit_time1"  value="0" >오전
							<input type="checkbox" name="wish_visit_time" id="wish_visit_time2" value="" >오후
						</td>
					</tr>
					<tr>
						<th>
							<input type="radio" name="photo" id="photo1" value="0" class="photo" style="margin-top: 15px;">보증서(.jpg)<br>
							<input type="radio" name="photo" id="photo2" value="1" class="photo" style="margin-top: 15px;">구매내역(.pdf)
						</th>
						<td>
							<input type="file" name="warrant_pic" id="warrant_pic" placeholder=".jpg" class="form-control" style="width: 600px; margin-bottom: 10px;">
							<span class=""></span>
							<input type="file" name="buylist_pic" id="buylist_pic" placeholder=".pdf" class="form-control" style="width: 600px; ">
							<span class=""></span>
						</td>
					</tr>
					<!-- <tr>
						<th>
							<input type="radio" name="photo" value="1">구매내역(.pdf)
						</th>							
						<td>	
							<input type="file" name="buylist_pic" id="buylist_pic" placeholder=".pdf" class="form-control" style="width: 600px; ">
							<span class=""></span>
						</td>
					</tr> -->
					<tr>
						<td colspan="2" style="font-size: 9pt; font-style: italic; color: gray;">
							<span>보증서란, 구매처에서 배포받은 보증서를 말하며 시리얼 넘버 및 가격이 반드시 포함되어 있어야 합니다.
							<br>
							별도의 보증서가 없거나 분실한 상황이어도 온라인으로 구매를 하셨다면, 해당 사이트의 구매내역을 pdf 파일로 캡쳐해서 대신할 수 있습니다.
							<br>
							(*pdf 캡처 방법 : 해당 페이지에서 메뉴 > 인쇄 > 대상 변경 > PDF로 저장)</span>
						</td>
					</tr>
					<tr>
						<th>사진 첨부(1장) : </th>
						<td>
							<input type="file" value="picture" placeholder=".jpg" id="apply_pic" name="apply_pic" class="form-control" style="width: 600px; ">
							<span class=""></span>
							<span style="color: gray; font-size: 9pt;">사진은 가급적 밝은 곳에서 찍으시길 권장합니다. 
														판독이 어려운 사진은 프리미엄 신청이 거절될 수 있습니다.</span>
						</td>
					</tr>
					
					
				</table>
				<input type="button" value="제출하기" id="prem_register" 
				style="margin-left: 14%; width: 200px;" class="btn btn-primary" >
				<input type="button" value="취소하기" onclick="location.href='user_prem.action'"
				style="width: 200px;" class="btn btn-danger">
				
				<br><br><br>
			</form>
		</div>




</body>
</html>