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

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom fonts for this template -->
    <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Merriweather:400,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'>

    <!-- Plugin CSS -->
    <link href="vendor/magnific-popup/magnific-popup.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/creative.min.css" rel="stylesheet">


    <!-- Bootstrap core JavaScript -->
    <!-- <script src="vendor/jquery/jquery.min.js"></script> -->
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="vendor/scrollreveal/scrollreveal.min.js"></script>
    <script src="vendor/magnific-popup/jquery.magnific-popup.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="js/creative.min.js"></script>
    
    
    <style type="text/css">
    #main
    {
    	margin-left:0px;
    	width: 900px;;
    	height: 1500px;
    }
    	
    </style>
<script type="text/javascript">
 function paragraph1_onmouseover()
 {
 	paragraph1.innerText="홈";
 	paragraph1.style.color="khaki";
 }
 function paragraph2_onmouseover()
 {
	paragraph2.innerText="일반 거래";
	paragraph2.style.color="khaki";
 }
 function paragraph3_onmouseover()
 {
	paragraph3.innerText="프리미엄";
	paragraph3.style.color="khaki";
 }
 function paragraph4_onmouseover()
 {
	paragraph4.innerText="무료나눔";
	paragraph4.style.color="khaki";
 }
 function paragraph5_onmouseover()
 {
	paragraph5.innerText="마이페이지";
	paragraph5.style.color="khaki";
 }
 function paragraph6_onmouseover()
 {
	paragraph6.innerText="고객센터";
	paragraph6.style.color="khaki";
 }
 

 function paragraph1_onmouseout()
 {
     paragraph1.innerText="Home";
     paragraph1.style.color="white";
 }
 function paragraph2_onmouseout()
 {
	 paragraph2.innerText="sale";
     paragraph2.style.color="white";
 }
 function paragraph3_onmouseout()
 {
	 paragraph3.innerText="Premium";
     paragraph3.style.color="white";
 }
 function paragraph4_onmouseout()
 {
	 paragraph4.innerText="free";
     paragraph4.style.color="white";
 }
 function paragraph5_onmouseout()
 {
	 paragraph5.innerText="My Page";
     paragraph5.style.color="white";
 }
 function paragraph6_onmouseout()
 {
	 paragraph6.innerText="service";
     paragraph6.style.color="white";
 }
     
 </script>
</head>
<body>


  <body id="page-top">


    <div>
      
	  <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav" style="width: 100%; margin-top: -13px; display: inline;">
      <div class="container" style="background-color: tan ; font-family:inherit;">
	      	   <!-- span 으로 변경 -->
	      	<a href="first_main.action" style="display: inline;"><img src="images/furniture-icon-png-2605.png" style="width: 75%; height: 75%;"></a>	   
	   
	      	   <span id=paragraph1 onmouseover=paragraph1_onmouseover() onmouseout=paragraph1_onmouseout() class="navbar-brand js-scroll-trigger" onclick="location.href='user_main.action'" style="color: white; width: 1000px; padding-left: 150px;">Home</span>   
	      	   <span id=paragraph2 onmouseover=paragraph2_onmouseover() onmouseout=paragraph2_onmouseout() class="navbar-brand js-scroll-trigger" onclick="location.href='user_normal.action'" style="color: white; width: 100%;">  sale</span>
	      	   <span id=paragraph3 onmouseover=paragraph3_onmouseover() onmouseout=paragraph3_onmouseout() class="navbar-brand js-scroll-trigger" onclick="location.href='user_prem.action'" style="color: white; width: 100%;">Premium</span>
	      	   <span id=paragraph4 onmouseover=paragraph4_onmouseover() onmouseout=paragraph4_onmouseout() class="navbar-brand js-scroll-trigger" onclick="location.href='user_free.action?arti_cate_code=3'" style="color: white; width: 100%;">free</span>
	      	   <span id=paragraph5 onmouseover=paragraph5_onmouseover() onmouseout=paragraph5_onmouseout() class="navbar-brand js-scroll-trigger" onclick="location.href='user_mypage_main.action'" style="color: white; width: 100%; ">My Page</span>
	      	   <span id=paragraph6 onmouseover=paragraph6_onmouseover() onmouseout=paragraph6_onmouseout() class="navbar-brand js-scro	ll-trigger" onclick="location.href='user_customer_service1.action'" style="color: white; width: 100%;">service</span>
	    	   <span></span>
	    	   <span></span> 
	    	   <span></span>
	    	   <span></span>
	  </div>
	  </nav>
	</div>


</body>
</html>