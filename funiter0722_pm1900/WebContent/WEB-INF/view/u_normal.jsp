<%@page import="java.io.File"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<%
	String root = session.getServletContext().getRealPath("/");
	String cp2 = request.getContextPath();

	String savePath = root + "pds" + File.separator + "image";
	//System.out.println("savePath : " + savePath);				
	String imagePath = savePath + "\\";

	//String imagePath = request.getParameter("imagePath");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap-theme.min.css">
<style type="text/css">
#content 
{
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 600px;
	padding: 15px;
	margin: 30px;
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

#summary 
{
	text-align: center;
}
#thumbnail
{
	width: 200px; height: 200px;
}

</style>
<script type="text/javascript">
	function replaceImg()
	{
		var imgs = document.getElementsByTagName("img");
		for (var i = 0; i < imgs.length; i++)
		{
			imgs[i].src = imgs[i].src.replace(/;.*/g, "");
		}
	}
</script>


</head>
<body onload="replaceImg();">

	<div>
		<c:import url="first_main_up.jsp"></c:import>

	</div>


	<div>
		<!-- 좌측 div -->
		<div id="side" style="display: inline-block; float: left;">
			<c:import url="u_main_side.jsp"></c:import>
		</div>

		<!-- 우측 div -->
		<div id="main" style="display: inline-block; margin-left: 30%; float: left;">

			<p id="summary" style="font-size: 20px; font: bold;">일반 상품</p>
			<br> 
			<input type="button" name="register" id="register"
			value="판매글 작성" class="btn btn-success" style="float: right;"
			onclick="location.href='nm_register.action'"> 
			<br><br><br>

			<!-- 아래 div 애들  -->
			<div id="detail" style="width: 1000px;">
				<c:forEach var="dto" items="${normal_list }">
					<div style="display: inline-block;">
						<input type="text" name="arti_cate_code" id="arti_cate_code" value="${dto.nm_article_code}" style="display: none;">
						<a href="nm_sell_form.action?nm_article_code=${dto.nm_article_code }">
						<img src="${dto.pic1 }" name="img" style="width: 200px; height: 200px;"></a>
						<p>가격 : ${dto.nm_price } </p>
						<p>제목 : ${dto.nm_subject }</p>
						<span style="color: yellow;" class="glyphicon glyphicon-star"></span>${dto.nm_mark }
						<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>${dto.nm_hitcount }
					</div>
				</c:forEach>
				<!-- 첫번째 줄.  -->
			</div>
		</div>
	</div>



</body>
</html>