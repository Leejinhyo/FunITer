<!-- NmArtiSlCare.jsp -->
<!-- 관리자 -->
<!-- 일반게시물 판매 관리 -->

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
		$("#hide").click(function()
		{
			$("#hideForm").submit();	
		});
		
		$("#nonhide").click(function()
		{
			$("#nonHideForm").submit();	
		});
	});
</script>

</head>

<body class="fixed-nav sticky-footer bg-dark" id="page-top">

	<c:import url="Admin_menu.jsp"></c:import>

	<!-- 게시물 시작부분 -->
	<div class="content-wrapper">
		<div class="container-fluid">
			<ol class="breadcrumb" style="background-color: #FFCA98;">
				<li class="breadcrumb-item"><span
					class="glyphicon glyphicon-tags"> 일반게시물 판매관리</span></li>
			</ol>

				<!-- 테이블 -->
				<div class="card mb-3">
					<div class="card-header">
						<i class="fa fa-table"></i> 일반 게시물 수 : ${countnmarti } 건
					</div>
					<div class="card-body">
						<div class="table-responsive">
							<table class="table table-bordered" id="dataTable" width="1500px"
								cellspacing="0" style="table-layout: fixed; text-align: center;">
								<thead>
									<tr>
										<th style="width: 7%;">번호</th>
										<th style="width: 10%;">게시물번호</th>
										<th>제목</th>
										<th style="width: 10%;">작성자</th>
										<th style="width: 12%;">작성일</th>
										<th style="width: 10%;">숨김</th>
										<th style="width: 12%;">숨김일</th>
									</tr>
								</thead>


								<tbody>

									<c:forEach var="arti" items="${nmarti }">
										<tr>
											<c:if test="${empty arti.nm_hide_d }">
											<td>${arti.rownum }</td>
											<td>${arti.nm_article_code }</td>
											<td>${arti.nm_subject }</td>
											<td>${arti.user_id }</td>
											<td>${arti.nm_write_d }</td>
											<td>
											<form action="nmhide.action" method="get" id="hideForm">
												<input type="button" value="숨김"
													class="btn btn-danger" id="hide">
												<input type="text" name="nm_arti_code" value="${arti.nm_article_code }"
													style="display: none;">
											</form>
											</td>
											<td>
												-
											</c:if> 
											<c:if test="${!empty arti.nm_hide_d }">
											<td style="color: red;">${arti.rownum }</td>
											<td style="color: red;">${arti.nm_article_code }</td>
											<td style="color: red;">${arti.nm_subject }</td>
											<td style="color: red;">${arti.user_id }</td>
											<td style="color: red;">${arti.nm_write_d }</td>
											<td>
											<form action="nmnonhide.action" method="get" id="nonHideForm">
												<input type="button" value="숨김해제"
													class="btn btn-success" id="nonhide">
												<input type="text" name="nm_arti_code" value="${arti.nm_article_code }"
													style="display: none;">
											</form>
											</td>
											<td style="color: red;">
												${arti.nm_hide_d }
											</td>
											</c:if>
										</tr>
									</c:forEach>
									<!-- <tr>
									<td>100</td>
									<td>10002</td>
									<td style="text-align: left;">흰색탁자 팔아요</td>
									<td>심은지</td>
									<td>2018/04/25</td>
									<td>
										<input type="button" value="숨김" class="btn btn-default">
									</td>
									<td>2018/04/27</td>
								</tr>
								
								<tr>
									<td>99</td>
									<td>10001</td>
									<td style="text-align: left;">테스트입니다.</td>
									<td>밥주걱</td>
									<td>2018/04/25</td>
									<td>
										<input type="button" value="숨김" class="btn btn-default">
									</td>
									<td>2018/04/27</td>
									
								</tr> -->

								</tbody>
							</table>
						</div>
					</div>
					<!-- 최근 업뎃 날짜 쓰면되는 부분 -->
					<div class="card-footer small text-muted">Updated yesterday
						at 11:59 PM</div>
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
