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
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<style type="text/css">

#content
{
	border: 1px solid #ccc;
	border-radius: 5px;
	width: 700px;
	height : 500px;
	padding: 15px;
	margin: 30px;
}

#content h3
{
	margin: 0px; 
	margin-bottom: 15px;
}


#up
{
	font-size: 15px;
	margin-left: 100px;
}

#top
{
	margin-left: 300px;
}

.btn
{
	font-size: 30px;
	width: 200px;
}

table th
{
	width: 100px;
}

#myform
{
	margin-top: 100px;
}


</style>

<script>
    $(function() 
    {
        $("a").click(function() 
        {
            //클릭될때 img의 src 속성값을 this(해당태그(img)의 href 값으로 바꿔라 
            $('img').attr('src', $(this).attr('href'));
            return false; // 페이지 전환 막기
        });
    });
</script>
</head>
<body>
<div>
<c:import url="first_main_up.jsp"></c:import>

</div>

<div id="myform" style="margin-left: 17%">
<div id="up">

	<a class="btn btn-default" onclick="location.href='user_customer_service1.action'">공지사항</a>
	<a class="btn btn-default" onclick="location.href='user_customer_service2.action'">문의게시판</a>
	<a class="btn btn-default" onclick="location.href='user_customer_service3_1.action'">신고접수</a>
	<a class="btn btn-default" onclick="location.href='user_customer_service4.action'">FAQ</a>
	<a class="btn btn-default" onclick="location.href='user_customer_service5.action'">이용가이드</a>
</div>


<br><br>

	<div id="div1" style="margin-left: 200px; display: inline-block; " >
		<!-- <a id="imgclick" href="img/main.jpg"><button id="all" class="btn btn-success">사이트 소개</button></a>
        <a id="imgclick" href="images/image02_off.jpg"><button id="trade" class="btn btn-success"  onclick="">결제 방법 가이드</button></a>
        <a id="imgclick" href="images/image03_off.jpg"><button id="prem" class="btn btn-success"  onclick="">프리미엄 가이드</button></a>
    	<a id="imgclick" href="images/image04_off.jpg"><button id="use" class="btn btn-success"  onclick="">업체 이용 가이드</button></a>
		<span id="imgclick" class="btn btn-success" onclick="location.href='img/main.jpg'">사이트 소개</span>
        <span id="imgclick" class="btn btn-success" onclick="location.href='images/image02_off.jpg'">결제 방법 가이드</span>
        <span id="imgclick" class="btn btn-success" onclick="location.href='images/image03_off.jpg'">프리미엄 가이드</span>
        <span id="imgclick" class="btn btn-success" onclick="location.href='images/image04_off.jpg'">업체 이용 가이드</span>
        -->
        <div style="margin-left: 200px; display: inline-block; " >
        <a id="imgclick"  href="img/main.jpg"><button id="all" class="btn btn-success titi">사이트 소개</button></a>
        <a id="imgclick"  href="images/image02_off.jpg"><button id="trade" class="btn btn-success"  onclick="">결제 방법 가이드</button></a>
        <a id="imgclick" href="images/image03_off.jpg"><button id="prem" class="btn btn-success"  onclick="">프리미엄 가이드</button></a>
    	<a id="imgclick" href="images/image04_off.jpg"><button id="use" class="btn btn-success"  onclick="">업체 이용 가이드</button></a>
    </div> 
    </div>
    <div><img src="img/main.jpg" alt="" style="width: 70%; height: 50%; margin-top: 15px; margin-bottom: 15px;" /></div>


</div>
</body>
</html>