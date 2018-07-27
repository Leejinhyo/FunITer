<!-- DepoSlCare.jsp -->
<!-- 판매자 보증금 환급관리 -->


<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<% 
	request.setCharacterEncoding("UTF-8"); 
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	<title>관리자 페이지</title>
	
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<script type="text/javascript" src="js/jQuery-3.3.1.min.js	"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>

	<link rel="stylesheet" href="css/bootstrap-theme.min.css">
	<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
	<link href="css/sb-admin.css" rel="stylesheet">

</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">
	
	<c:import url="Admin_menu.jsp"></c:import>
			
	<!-- 게시물 시작부분 -->
	<div class="content-wrapper">
		<div class="container-fluid">
			<ol class="breadcrumb" style="background-color: #FF8C8C;">
				<li class="breadcrumb-item">
					<span class="glyphicon glyphicon-tags"> 판매자보증금지급 </span>
				</li>
			</ol>
			
			<!-- 테이블 -->
			<div class="card mb-3">
				<div class="card-header">
					<i class="fa fa-table"></i> 보증금지급 건수 : 32 건 
				</div>
				<div class="card-body">
					<div class="table-responsive">
						<table class="table table-bordered" id="dataTable" width="1500px"
							cellspacing="0" style="table-layout: fixed; text-align: center;">
							<thead>
								<tr>
									<th style="width: 6%;">번호</th>
									<th style="width: 8%;">주문번호</th>
									<th style="width: 8%;">판매자</th>
									<th>판매자계좌</th>
									<th style="width: 8%;">구매자</th>
									<th style="width: 8%;">결제일</th>
									<th style="width: 8%;">증빙완료일</th>
									<th style="width: 10%;">처리상태</th>
									<th style="width: 10%;">보증급지급</th>
									<th style="width: 10%;">지급일</th>
								</tr>
							</thead>

							
							
							<tbody>
								<tr>
									<td>3</td>
									<td>648762</td>
									<td>oracle123</td>
									<td>신한<br>110-123-123456</td>
									<td>javaman123</td>
									<td>2018.04.29</td>
									<td>2018.04.30</td>
									<td>지급대기</td>
									<td>
										<input type="button" class="btn btn-primary" value="지급">
									</td>
									<td>2018.05.01</td>
								</tr>
								
							</tbody>
						</table>
					</div>
				</div>
				<!-- 최근 업뎃 날짜 쓰면되는 부분 -->
				<div class="card-footer small text-muted">Updated yesterday at
					11:59 PM</div>
			</div>
		</div>
			
		
		<!-- /.container-fluid-->
		<!-- /.content-wrapper-->
		<footer class="sticky-footer">
			<div class="container">
				<div class="text-center">
					<small>Copyright © Funiter 2018</small>
				</div>
			</div>
		</footer>
		<!-- Scroll to Top Button-->
		<a class="scroll-to-top rounded" href="#page-top"> <i
			class="fa fa-angle-up"></i>
		</a>
		<!-- Logout Modal-->
		<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog"
			aria-labelledby="exampleModalLabel" aria-hidden="true">
			<div class="modal-dialog" role="document">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="exampleModalLabel">Ready to
							Leave?</h5>
						<button class="close" type="button" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">Select "Logout" below if you are
						ready to end your current session.</div>
					<div class="modal-footer">
						<button class="btn btn-secondary" type="button"
							data-dismiss="modal">Cancel</button>
						<a class="btn btn-primary" href="login.html">Logout</a>
					</div>
				</div>
			</div>
		</div>
		<script src="vendor/jquery/jquery.min.js"></script>
		<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
		<script src="vendor/jquery-easing/jquery.easing.min.js"></script>
		<script src="vendor/chart.js/Chart.min.js"></script>
		<script src="vendor/datatables/jquery.dataTables.js"></script>
		<script src="vendor/datatables/dataTables.bootstrap4.js"></script>
		<script src="js/sb-admin.min.js"></script>
		<script src="js/sb-admin-datatables.min.js"></script>
		<script src="js/sb-admin-charts.min.js"></script>
	</div>
</body>

</html>