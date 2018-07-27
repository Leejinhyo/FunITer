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
    <script src="vendor/jquery/jquery.min.js"></script>
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
    	width: 1000px;;
    	height: 1500px;
    }
    #main_img
    {
    	margin-left: 250px;
    }
    	
    </style>
</head>
<body>


  <body id="page-top">
	<c:import url="first_main_up.jsp">
	</c:import>

    <header class="masthead text-center text-white d-flex">
    
      <div class="container my-auto">
       
        <div class="row">
          <div class="col-lg-10 mx-auto">
          	
            <!-- <h1 class="text-uppercase">
              <strong style="color: red; font-family: cursive; ">FUR.IT.ER</strong>
            </h1> -->
            <br>
            <div style="margin-left: -65%; margin-bottom: 0%; margin-top: -35%; ">
            	<!-- <img src="images/designseeds2.png" style=" width: 120%; height: 120%;"> -->
            	<img src="images/wood.png" style="width: 140%; height: 140%;">
            </div>
          </div>
          
          <div style="margin-top: -6.5%; display: inline; z-index: 1; font-size: 17pt; font-family: !important;">
          <a href="user_login.action" style="margin-left: 42px;">Login</a>
            <a href="user_main.action" style="margin-left: 420px;">Start</a>
            <a href="#about" style="margin-left: 400px;">Introduce</a>
          	<!-- <a class="btn btn-primary btn-xl js-scroll-trigger" href="user_login.action" style="width: 200px; margin-right: 25px">Login</a>
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="user_main.action" style="width: 200px; margin-right: 25px">Start</a>
            <a class="btn btn-primary btn-xl js-scroll-trigger" href="#about" style="width: 200px; margin-right: 25px">Introduce</a> -->
          </div>
        </div>
      </div>
      
    </header>
    
    <section id="about">
     
      <div id="main_img"> 
      
   		 <input type="image" src="images/introduce.png" id="main" style="width:80%; height: 90%; margin-top: -185px; margin-left: 50px;" >
      </div>
    </section>
    <section id="contact">
      <div class="container">
        <div class="row">
          <div class="col-lg-8 mx-auto text-center">
            <h3 class="section-heading">더 궁금하신 점이 있으시다면</h3>
            <hr class="my-4">
	            <p class="mb-5">아래의 연락처로 연락바랍니다. <br>공휴일, 주말 휴무. 평일 전화 응대시간 (AM9 ~ PM6) </p>
	          </div>
	        </div>
        <div class="row">
          <div class="col-lg-4 ml-auto text-center">
            <i class="fa fa-phone fa-3x mb-3 sr-contact"></i>
            <p>1588-8949</p>
          </div>
          <div class="col-lg-4 mr-auto text-center">
            <i class="fa fa-envelope-o fa-3x mb-3 sr-contact"></i>
            <p>
              <a href="mailto:your-email@your-domain.com">funiter@sist.com</a>
            </p>
          </div>
        </div>
      </div>
    </section>
  
    
  









</body>
</html>