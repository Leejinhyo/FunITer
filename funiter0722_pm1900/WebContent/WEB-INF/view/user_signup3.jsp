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
	font-size: 20px;
}

#signup
{
	margin-left: 200px;
}


body
{
	margin-left: 100px;
	margin-top: 200px;
	width: 500px;
	
}


</style>

<script type="text/javascript">

	$(document).ready(function()
	{
		
		alert($("#user_code").val());
		
		$("#signup").click(function()
		{
				
			
			if ($("#like_item1").val() =="1" || $("#like_item1").val()=="1" )
			{
				alert("관심상품을 1개 이상 선택하셔야 합니다.");
				$("#like_item1").focus();
				return;
			}
			
			$("#myform").submit();
			
		});
		
		$("select[name=first]").attr("disable",true);
	})
</script>

</head>
<body>

	<h1>관심상품*(최대 3개 선택)</h1>
	<hr>

	<div id="content">

		<form action="user_favor.action" method="post" id="myform">
						
			<table>
				<tr>
					<th>
					<input type="text" id="user_code" name="user_code" style="display: none;" value="${user_code }">
					관심상품1</th>
					<td>
					 <select id="like_item1" name="like_item1">	 
						<option name="first">관심상품1</option>
						 <c:forEach var="s_list" items="${s_list }">
							<option value="${s_list.s_category_code }">${s_list.s_category_name }</option>
						</c:forEach>
					</select>
					</td>
				</tr>

				<tr>
					<th>관심상품2</th>
					<td>
					<select id="like_item2" name="like_item2">
						<option name="first">관심상품2</option>	
						 <c:forEach var="s_list" items="${s_list }">
							<option value="${s_list.s_category_code }">${s_list.s_category_name }</option>
						</c:forEach>
					</select></td>
				</tr>
				<tr>
					<th>관심상품3</th>
					<td>
					<select id="like_item3" name="like_item3">
						<option name="first">관심상품3</option>	
						 <c:forEach var="s_list" items="${s_list }">
							<option value="${s_list.s_category_code }">${s_list.s_category_name }</option>
						</c:forEach>

					</select></td>

				</tr>

			</table>
			
			<input type="button" value="완료하기" class="btn btn-primary" id="signup" >
			
			
		</form>
	</div>


</body>
</html>