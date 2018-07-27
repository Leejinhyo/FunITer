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
<link rel="stylesheet" href="<%=cp%>/css/jquery-ui.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/jquery-ui.js"></script>
<link rel="stylesheet" href="<%=cp %>css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<script type="text/javascript" src="<%=cp %>js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/ajax.js"></script>
<style type="text/css">

#content 
{
   border: 1px solid #ccc;
   border-radius: 5px;
   width:1500px;
   padding: 15px;
   margin: 30px;
   
}
#myform
{

   margin-top: 100px;
   margin-left: 100px;
}

#content h3 
{
   margin: 0px;
   margin-bottom: 15px;
}

#side 
{
   margin-top: 0px;
}

#table th
{
   width: 200px;
   text-align: center;
}
table th td
{
   width: 600px;
}

.btn 
{
   text-align: center;
}

</style>

<script type="text/javascript">


		$(document).ready(function()
		 {
			      // 입력 유효성 검사
			      $("#nomal_register").click(function()
			      {
			         if($("#nm_subject").val() == "")
			         {
			            alert("제목을 입력하세요");
			            $("#nm_subject").focus();
			            return;
			         }
			         else if($("#nm_price").val() == "")
			         {
			            alert("판매 가격을 입력하세요");
			            $("#nm_price").focus();
			            return;
			         }
			         else if(isNaN($("#nm_price").val()))
			         {
			            alert("판매 가격은 숫자만 입력이 가능합니다");
			            $("#nm_price").focus();
			            return;
			         }
			         else if(  $("#nm_price").val() == "0"  )
			         {
			            alert("판매 가격은 0원 이상이어야 합니다");
			            $("#nm_price").focus();
			            return;
			         }
			         else if($('input:checkbox[name="type"]:checked').length==0)
			         {
			            alert("일반/예약 판매 여부를 선택해야 합니다");
			            return;
			         }
			         else if($('input:checkbox[id="reserve"]:checked').prop('checked') && ($("#start_date").val() == "" || $("#end_date").val() == ""))
			         {
			            alert("예약 기간을 입력하세요");
			            $("#start_date").focus();
			            return;
			         }
			         else if($("#picture1").val() == "" || $("#picture2").val() == "" || $("#picture3").val() == "" || $("#picture4").val() == "")
			         {
			            alert("총 4장의 사진을 필수로 업로드 해야 합니다.");   
			            return;
			         }
			         else if($("#nm_size").val() == "")
			         {
			            alert("제품의 상세 사이즈를 입력하세요.");   
			            return;
			         }
			         else if($("#nm_content").val() == "")
			         {
			            alert("제품의 상세 사이즈를 입력하세요.");   
			            return;
			         }
			         else if($("#l_cate").val() == 0)
			         {
			            alert("대분류와 소분류를 선택하세요");
			            return;
			         }
			         /* 
			         else if($("#s_cate").val() == 0)
			         {
			            alert("소분류를 선택하세요");
			            return;
			         } */
			         else if($('input:checkbox[name="option1"]:checked').length==0 || $('input:checkbox[name="option2"]:checked').length==0)
			         {
			            alert("각각의 필터 옵션을 체크해야 합니다.");
			            return;
			         }
			         
			         alert($("#start_date").val());
			         alert($("#end_date").val());
			         
			       	  myForm.submit();
			         
			         
			      });   // 유효성 검사 end
			//체크박스를 1개만 선택하도록 하는 구문.
			$('input[type="checkbox"][name="type"]').click(function()
			{
				if ($(this).prop('checked'))
				{
					$('input[type="checkbox"][name="type"]').prop('checked',false);
					$(this).prop('checked',true);
					
				}
				//alert($(this).val());
				
				// 일반판매라면, 날짜 선택 하지 못하도록 
				if ($(this).val()==0)
				{
					//alert("일반판매");
					$("#start_date").attr("disabled","disabled");
					$("#end_date").attr("disabled","disabled");
				}
				else
				{
					//alert("예약판매");
					$("#start_date").removeAttr("disabled");
					$("#end_date").removeAttr("disabled");
				}
				
				
			});
			      
			// 예약 판매를 체크하면 날짜 선택 창이 뜨도록 함. 
			$("#reserve").change(function()
			{
				if($("#reserve").is(":checked"))
		            $("#select_date").css("display","inline");
				
				else
		            $("#select_date").css("display","none");
			});
			

			// 예약 걸어 놓을 날짜의 시작일과 종료일 선택하는 과정 
			$("#start_date").datepicker(
			{
				dateFormat : "yy/mm/dd",
				changeYear :true,
				changeMonth : true,
				minDate : 0,			// 오늘 이전 날짜 선택 불가
				maxDate : 30,			// 오늘부로 30일 이전에만 선택 가능
				numberOfMonths: 2,		// 2장 펼침
				// 예약기간의 마지막 날이 첫날보다 먼저 오지 못하게 하는 과정
				onSelect: function(selected) 
				{
					// 종료일의 선택할 수 있는 최소 날짜(minDate)를 여기서 selected한 시작일로 지정
					$("#end_date").datepicker("option","minDate", selected)
				}
			});
			$("#end_date").datepicker(
			{
				dateFormat : "yy/mm/dd",
				changeYear :true,
				changeMonth : true,
				minDate : 0,
				maxDate : 30,
				numberOfMonths: 2,
				onSelect: function(selected) 
				{
					$("#start_date").datepicker("option","maxDate", selected)
				}
			});
			
			
			
	//★★★★ 예약 시작일과 종료일은 현재 날짜에서 한 달 안으로만 가능하게 하자.. 
			      
		 
			$("#l_cate").change(function()
			{
				//대분류가 바뀔 때 마다 소분류도 바뀌게 해야한다. 
				//이때 ajax 처리로 xml 파일을 받아와야 하며, 
				var l_category_code = $("#l_cate").val();
				// 대분류 값을 넣어줄 것. 
	
				//alert(l_category_code);
				
				//Ajax 요청 및 응답 처리.
				var url = "s_select.action?l_category_code="+l_category_code;
				
				//메소드 호출.
				ajax = createAjax();
				
				ajax.open("GET", url, true);
				
				ajax.onreadystatechange = function()
				{
					if (ajax.readyState==4 && ajax.status==200)
					{
						//alert("콜백호출?");
						callBack();
					}
				}
			
				ajax.send("");
				
			});//대분류가 바뀔 때 끝. 
		
			 
			 //소분류가 바뀔 때. 
			$("#s_cate").change(function()
			{
				//대분류가 바뀔 때 마다 소분류도 바뀌게 해야한다. 
				//이때 ajax 처리로 xml 파일을 받아와야 하며, 
				var s_category_code = $("#s_cate").val();
				// 대분류 값을 넣어줄 것. 
	
				//alert(s_category_code);
				
				
				//Ajax 요청 및 응답 처리.
				var url = "filter.action?s_category_code="+s_category_code;
				
				//메소드 호출.
				ajax = createAjax();
				
				ajax.open("GET", url, true);
				
				ajax.onreadystatechange = function()
				{
					if (ajax.readyState==4 && ajax.status==200)
					{
						//alert("콜백호출?");
						callBack2();
					}
				}
			
				ajax.send("");
				
			});
		 
		if (l_cate==0)
		{
			alert("대분류를 선택해주세요!");
		}
		 
	});
	
	
	function callBack()
	{
		var doc = ajax.responseXML;
		
		var root = doc.documentElement;
		//root 로 넘어올 건 list 로 할거기때문에 
		var arr = root.getElementsByTagName("item");
		
		document.getElementById("s_cate").innerHTML = "<option value"+0+">소분류</option>";
		
		for(var i=0; i<arr.length; i++)
		{
			//alert("포문은 몇번?");
			
			var a= arr[i].firstChild.nodeValue;	//1
			//첫번째 애들을 잡아와서. --> 얘가 전체임!
			
			var b = arr[i+1].firstChild.nodeValue //얘가 1에 대한 소파. 
			//alert("a.length : "+a.length);
			//alert(typeof a);
			
			var temp= a.split(" ");
			var temp2 = b.split(" ");
			//==>혹시 문제가 생기거든, var 를 위로 뺄 것. for 문 밖. 			
			
			//alert("1 : "+temp[0]);
			//alert("2 : "+temp2[0]);
			//var s_category_code = temp[i];
			//var s_category_name = temp[i+1];
			
			//alert(s_category_name);
			
			document.getElementById("s_cate").innerHTML += "<option value='"+temp[0]+"'>"+temp2[0]+"</option>";				
				
			i++;
		}
		
	}
	
	//필터 달라지게 할 div 
	function callBack2()
	{
		var doc = ajax.responseXML;
		
		var root = doc.documentElement;
		//root 로 넘어올 건 list 로 할거기때문에 
		var arr = root.getElementsByTagName("item");
		document.getElementById("option1").innerHTML ="";
		
		for(var i=0; i<arr.length; i++)
		{
			//alert("포문은 몇번?");
			
			var a= arr[i].firstChild.nodeValue;	//1
			//첫번째 애들을 잡아와서. --> 얘가 전체임!
			
			var b = arr[i+1].firstChild.nodeValue //얘가 1에 대한 소파. 
			//alert("a.length : "+a.length);
			//alert(typeof a);
			
			var temp= a.split(" ");
			var temp2 = b.split(" ");
			//==>혹시 문제가 생기거든, var 를 위로 뺄 것. for 문 밖. 			
			
			//alert("1 : "+temp[0]);
			//alert("2 : "+temp2[0]);
			//var s_category_code = temp[i];
			//var s_category_name = temp[i+1];
			
			//alert(s_category_name);
			
			document.getElementById("option1").innerHTML += "<input type='checkbox' id='option1' name='option1' value='"+temp[0]+"'>"+temp2[0]+"</option>";				
				
			i++;
		}
		
		var arr = root.getElementsByTagName("item2");
		document.getElementById("option2").innerHTML ="";
		for(var i=0; i<arr.length; i++)
		{
			//alert("포문은 몇번?");
			
			var a= arr[i].firstChild.nodeValue;	//1
			//첫번째 애들을 잡아와서. --> 얘가 전체임!
			
			var b = arr[i+1].firstChild.nodeValue //얘가 1에 대한 소파. 
			//alert("a.length : "+a.length);
			//alert(typeof a);
			
			var temp= a.split(" ");
			var temp2 = b.split(" ");
			//==>혹시 문제가 생기거든, var 를 위로 뺄 것. for 문 밖. 			
			
			//alert("1 : "+temp[0]);
			//alert("2 : "+temp2[0]);
			//var s_category_code = temp[i];
			//var s_category_name = temp[i+1];
			
			//alert(s_category_name);
			
			document.getElementById("option2").innerHTML += "<input type='checkbox' id='option2' name='option2' value='"+temp[0]+"'>"+temp2[0]+"</option>";				
				
			i++;
		}
		 
	}

	

</script>


</head>
<body>
<div>
<c:import url="first_main_up.jsp"></c:import>

</div>


<div id="myform" style="margin-left: 24%;">
	<div>
      <h3 style=" display: inline; ">판매 게시글 작성</h3> 
   </div>
   
	<form action="normal_register_ok.action" id="myForm" method="POST" enctype="multipart/form-data">
		<table id="table" class="table table-bordered" style="width: 1000px;">
			<tr>
				<th>제목</th>
				<td>
					<input type="text" id="nm_subject" name="nm_subject" class="form-control"  placeholder="40글자 이내로 작성해주세요.">
				</td>
			</tr>
			<tr>
				<th>판매가격</th>
				<td>
					<input type="text" id="nm_price" name="nm_price" class="form-control" style="width: 200px; display: inline;"> &nbsp;&nbsp;원
				</td>
			</tr>
			<tr>
			   <th>일반·예약 선택</th>
	            <td>
	               <input type="checkbox" class="type" name="type" value="0" id="normal">일반판매
	               <input type="checkbox" class="type" name="type" value="1" id="reserve">예약판매
	               <div id="select_date" style="display: none;">
	               <input type="text" name="start_date" id="start_date" class="form-control" style="width: 150px; display: inline;">
	              	 ∼
	               <input type="text" name="end_date" id="end_date" class="form-control" style="width: 150px; display: inline;">
	               </div>
	            </td>
			</tr>
			
			<tr>
				<th>사진</th>
				<td>
	              	<span style="color: red; font-size: 9pt;">제품의 사진 4장을 반드시 등록해주시기 바랍니다. 부적합한 사진을 게시할 시 무통보 삭제 처리됩니다.</span>
					<input type="file" name="nm_pic1" id="picture1" class="form-control"><br>
					<input type="file" name="nm_pic2" id="picture2" class="form-control"><br>
					<input type="file" name="nm_pic3" id="picture3" class="form-control"><br>
					<input type="file" name="nm_pic4" id="picture4" class="form-control"><br>
           	    </td>
			</tr>
			<tr>
				<th>상세사이즈</th>
				<td>
					<input type="text" id="nm_size" name="nm_size" placeholder="ex)가로 30cm, 세로 20cm, 높이 1m" class="form-control">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<input type="text" id="nm_content" name="nm_content" class="form-control" placeholder="내용을 입력하세요" style="width: 400px; height: 200px;">
				</td>
			</tr>
			<tr>
				<th>필터</th>
					<td>
						<select id="l_cate" name="l_cate" class="form-control" style="width: 300px; display: inline;">
							<option value="0">대분류</option>
							<c:forEach var="llist" items="${l_list }">
								<option value="${llist.l_category_code }">${llist.l_category_name }</option>
							</c:forEach>
						</select>				
						<select id="s_cate" name="s_cate" class="form-control" style="width: 300px; display: inline;">
							<option value="0">소분류</option>
						</select>
					</td>
						
			</tr>
			<tr>
				<th>옵션1 체크</th>
				<td id="option1">
					<span>필터를 선택해주세요.</span>
				</td>
			</tr>
			<tr>
				<th>옵션2 체크2</th>
				<td id="option2">
					<span>필터를 선택해주세요.</span>
				</td>
			</tr>
		</table>
		<input type="text" name="user_code" value="${user_code }" style="display: none;">
			 <button type="button" value="nomal_register" id="nomal_register"  
		class="btn btn-info" style="margin-left: 20%; width: 200px;">등록하기</button>
		<button type="button" value="register_cancel" class="btn" onclick="location.href='user_normal.action'" style="width: 200px;">취소하기</button>		
	</form>
</div>


</body>
</html>