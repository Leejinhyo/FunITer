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

#content {
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

#content h3 {
	margin: 0px;
	margin-bottom: 15px;
}

#side {
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
				$("#fr_register").click(function()
				{
					if($("#fr_subject").val() == "")
					{
						alert("제목을 입력하세요");
						$("#fr_subject").focus();
						return;
					}
					else if($("#pic1").val() == "" || $("#pic2").val() == "" || $("#pic3").val() == "" || $("#pic4").val() == "")
					{
						alert("총 4장의 사진을 필수로 업로드 해야 합니다.");	
						return;
					}
					else if($("#fr_size").val() == "")
					{
						alert("제품의 상세 사이즈를 입력하세요.");	
						return;
					}
					else if($("#fr_content").val() == "")
					{
						alert("판매 게시물에 들어갈 내용을 입력하세요.");	
						return;
					}
					else if($("#l_category_code").val() == 0)
					{
						alert("대분류를 선택하세요");
						return;
					}
					$("#myForm").submit();
				
				});	// 유효성 검사 end
				
				
			});
	
	

</script>




</head>
<body>

<div>
	<c:import url="first_main_up.jsp"></c:import>
</div>

<div id="myform" style="margin-left: 24%;">
	<div>
		<h3 style=" display: inline; ">무료나눔 게시물 작성</h3> 
		<input type="button" value="로그아웃" class="btn btn-info" onclick="location.href='logout.action'"
		style="display: inline; margin-left: 48%; margin-bottom: 2%; text-align: right;">
	</div>
	<form action="free_register_ok.action" enctype="multipart/form-data" id="myForm" name="myForm" method="POST" >
		<table id="table" class="table table-bordered" style="width: 1000px;">
			<tr>
				<th>제목</th>
				<td>
					<input type="text" id="arti_cate_code" name="arti_cate_code" value="${arti_cate_code }" style="display: none;" >
					<input type="text" id="fr_subject" name="fr_subject" placeholder="40글자 이내로 작성해주세요.">
				</td>
			</tr>
			<tr>
				<th>사진</th>
				<td>
					<span style="color: red;">제품의 사진 4장을 반드시 등록해주시기 바랍니다. 부적합한 사진을 게시할 시 무통보 삭제 처리됩니다</span>
					<input type="file" name="pic1" id="pic1"  class="form-control">
					<input type="file" name="pic2" id="pic2"class="form-control">
					<input type="file" name="pic3" id="pic3" class="form-control">
					<input type="file" name="pic4" id="pic4" class="form-control">
				</td>
			</tr>
			<tr>
				<th>상세 사이즈</th>
				<td>
					<input type="text" id="fr_size" name="fr_size" class="form-control"
					 placeholder="ex)가로 30cm, 세로 20cm, 높이 1m">
				</td>
			</tr>
			<tr>
				<th>내용</th>
				<td>
					<input type="text" id="fr_content" name="fr_content" placeholder="내용을 입력하세요" style="height: 200px;" class="form-control">
				</td>
			</tr>
			<tr>
				<th>상품분류 선택</th>
				<td>
					 <select id="l_category_code" name="l_category_code">
						<option value="0">대분류</option>
						<c:forEach var="l_list" items="${l_list }">
							<option value="${l_list.l_category_code }">${l_list.l_category_name }</option>
						</c:forEach>
					</select>
				</td>
			</tr>
			<tr>
				<th>가격</th>
				<td>
					<input type="text" id="fr_price" name="fr_price" value="0" readonly="readonly" class="form-control" >
				</td>
			</tr>
		</table>
			
	</form>
			<button type="button" id="fr_register" class="btn btn-info"  style="margin-left: 20%; width: 200px;" >등록하기</button>
			<button type="button" value="register_cancel" class="btn btn-info" style="width: 200px;">취소하기</button>	
</div>


</body>
</html>