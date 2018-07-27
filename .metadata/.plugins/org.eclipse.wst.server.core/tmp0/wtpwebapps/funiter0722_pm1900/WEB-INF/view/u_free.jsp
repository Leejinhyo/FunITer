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

#side {
	margin-top: 0px;
}

#summary {
	text-align: center;
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
		<div id="main" style="display: inline-block; margin-left: 15%; float: left;">
			
			<div>
				<p>무료나눔이란?</p>
				<p>판매 가격은 0원이지만 그만큼 가구를 쉽게 처분하는 것이 가능합니다.</p>
				<p>다만 무료나눔의 경우 ~한 불이익은 감수해야 합니다.<a href="user_customer_service5.action">  [무료나눔 이용가이드]</a></p>
			</div>
			<p id="summary" style="font-size: 20px; font: bold;">무료나눔 상품</p> <br> 
			<input type="button" name="register" id="register" value="판매글 작성" class="btn btn-success" style="float: right;"
			 onclick="location.href='free_register.action'">
			<br><br><br>
						
			<!-- 아래 div 애들  -->
			<div id="detail" style="width:1000px;">
				<c:forEach var="free_list" items="${free_list }">
					<%-- <c:forEach var="bdto" items="${bdto }"> --%>
					<div style="display: inline-block;" >
						<input type="text" name="arti_cate_code" id="arti_cate_code" value="3" style="display: none;">
						<%-- <a href="free_sell_form.action"><input type="image" src="${imagePath}/${fdto.pic }" style="width: 150px; height: 150px; "></a> --%>
						<a href="free_sell_form.action?fr_article_code=${free_list.fr_article_code }">
						<img src="${free_list.pic1 }" name="img" style="width: 200px; height: 200px; "></a>
						<p style="color: red;">${free_list.fr_subject }</p>
						<span style="color: yellow;" class="glyphicon glyphicon-star"></span>${free_list.fr_mark }
						<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>${free_list.fr_hitcount }
					</div>
				</c:forEach>
			<%-- </c:forEach> --%>
			<!-- 첫번째 줄.  -->
			</div>


			<div id="detail" style="width:700px;">
				<!-- 두번째 줄.  -->
				<div style="width: 150px; height:300px; display: inline-block;" >
					<input type="image" src="img/mo.jpg" style="width: 150px; height: 150px; ">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
				
				<div style="width: 150px;; height:300px; display: inline-block;" >
					<input type="image" src="img/mo.jpg" style="width: 150px; height: 150px; ">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
					<div style="width: 150px;; height:300px; display: inline-block;" >
					<input type="image" src="img/mo.jpg" style="width: 150px; height: 150px; ">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
					<div style="width: 150px;; height:300px; display: inline-block;" >
					<input type="image" src="img/mo.jpg" style="width: 150px; height: 150px; ">
					<p>95,000원</p>
					<p>유아용 침대 상태 좋아요</p>
					<span style="color: yellow;" class="glyphicon glyphicon-star"></span>5
					<span style="color: blue" class="glyphicon glyphicon-eye-open"></span>5
				</div>
			</div>


		</div>

	</div>


</body>
</html>