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
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
<link href="css/sb-admin.css" rel="stylesheet">
<style type="text/css">
	div span 
	{	
		margin-right: 20px; 
		width: 200px; 
		height: 40px;
	}

</style>

</head>

<body>

<div>
	<c:import url="first_main_up.jsp"></c:import>
</div>

<br><br>

<div>
	<h3 style="margin-left: 46.5%; display: inline; ">고 객 센 터</h3> 
	<input type="button" value="로그아웃" class="btn btn-info" onclick="location.href='logout.action'" style="display: inline; margin-left: 30%; margin-top: 5%; text-align: right;">
</div>

<div id="up" style="margin-left: 24%;">
	<span class="btn btn-danger" onclick="location.href='user_customer_service1.action'" >공지사항</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service2.action'">문의게시판</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service3_1.action'">신고접수</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service4.action'">FAQ</span>
	<span class="btn btn-success" onclick="location.href='user_customer_service5.action'">이용가이드</span>
</div>


	<!-- 게시물 시작부분 -->
	<div class="content-wrapper" style="margin: 10%; margin-top: 1%;">
		<div class="container-fluid">
				<!-- 테이블 -->
				<div class="card mb-3">
					<div class="card-header">
						<select id="search" style="height: 30px; width: 100px;">
							<option value="0">검색분류</option>
							<option value="1">제목</option>
							<option value="2">내용</option>
						</select>
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" style="table-layout: fixed; text-align: center;">
								<thead>
									<tr>
										<th colspan="5" style="text-align: left">총 4건</th>
									</tr>
									<tr>
										<th style="width: 7%;">번호</th>
										<th style="width: 20%;">이체일</th>
										<th>제목</th>
										<th style="width: 12%;">조회수</th>
										<th style="width: 20%;">공지일</th>
									</tr>
								</thead>
								<tbody>
									<c:forEach var="pay2" items="${delpaylist }">
										<tr>
											<td>1</td>
											<td style="text-align: center;"><a href="u_customer_service1_1.jsp">[공지]현충일 전 서비스 휴무 안내</a></td>
											<td>22</td>
											<td>2018.06.11</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					
				</div>
				
		</div>


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