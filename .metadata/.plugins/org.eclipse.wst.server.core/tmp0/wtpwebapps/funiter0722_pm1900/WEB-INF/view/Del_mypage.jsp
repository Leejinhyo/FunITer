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
<title>Del_mypage.jsp</title>
<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"
	rel="stylesheet" type="text/css">
<link href="vendor/datatables/dataTables.bootstrap4.css"
	rel="stylesheet">
<link href="css/sb-admin.css" rel="stylesheet">

<script type="text/javascript">
	
	$(document).ready(function()
	{
		$("#apply").css("margin", "1%");
		
		$("div:first").css("background-color", "brown");
		
		//alert($("h").val());
	});
	
</script>

</head>

<body>

<div>
	<h3 style="margin-left: 45%; display: inline; ">업체 정기 결제 내역</h3> 
	<input type="button" value="로그아웃" class="btn btn-info" onclick="location.href='dellogout.action'" style="display: inline; margin-left: 30%; margin-top: 5%; text-align: right;">
	
	<hr>
</div>
<div style="margin-left: 75%;">	
	<c:forEach var="pay" items="${delpaylist }">
		<h5>현재날짜 : ${pay.sysdate }</h5>
		<h5>회원코드 : ${pay.del_code }</h5>
	</c:forEach>
</div>
<div style="margin-left: 400px; ">
	<c:import url="Del_mypage_import.jsp"></c:import>
</div>
	<!-- 게시물 시작부분 -->
	<div class="content-wrapper" style="margin: 10%; margin-top: 1%;">
		<div class="container-fluid">
				<!-- 테이블 -->
				<div class="card mb-3">
					<div class="card-header">
					
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" style="table-layout: fixed; text-align: center;">
								<thead>
									<tr>
										<th style="width: 7%;">번호</th>
										<th style="width: 20%;">이체일</th>
										<th>서비스 이용기간</th>
										<th style="width: 20%;">비고</th>
										<th style="width: 20%;">상태변경일</th>
									</tr>
								</thead>


								<tbody>

									<c:forEach var="pay2" items="${delpaylist }">
										<tr>
											<td>${pay2.rownum }</td>
											<td>${pay2.transefer_d }</td>
											<td>${pay2.service_term }</td>
											<td>${pay2.etc }</td>
											<td>${pay2.del_change_d }</td>
										</tr>
									</c:forEach>
								</tbody>
							</table>
						</div>
					</div>
					<div style="text-align: right; margin-right: 38px;">
						<input id="apply" type="button" class="btn btn-info" value="정기결제 재신청" onclick="location.href='delsignup3again.action'">
						<input id="apply" type="button" class="btn btn-danger" value="정기결제 해제">
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