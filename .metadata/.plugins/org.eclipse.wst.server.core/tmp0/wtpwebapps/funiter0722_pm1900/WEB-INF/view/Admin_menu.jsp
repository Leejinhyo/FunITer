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
</head>
<body>
<!-- 맨왼쪽위 -->
	<nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top" id="mainNav">
		<a class="navbar-brand" href="adminindex.action">Admin Page</a>
		
		<button class="navbar-toggler navbar-toggler-right" type="button"
			data-toggle="collapse" data-target="#navbarResponsive"
			aria-controls="navbarResponsive" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		
		<div class="collapse navbar-collapse" id="navbarResponsive">
			<ul class="navbar-nav navbar-sidenav" id="exampleAccordion">
				<li class="nav-item" data-toggle="tooltip" data-placement="right" title="ArticleCare">
					<a class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
						href="#collapseArticleCare" data-parent="#exampleAccordion"> 
						<i class="fa fa-fw fa-wrench"></i> 
						<span class="nav-link-text">게시글 관리</span>
					</a>
					
					<ul class="sidenav-second-level collapse" id="collapseArticleCare">
						<li><a href="nmartislcare.action">판매게시글(일반)</a></li>
						<li><a href="frartislcare.action">판매게시글(무료나눔)</a></li>
						<li><a href="hideartislcare.action">숨김 게시글</a></li>
						<li><a href="dealingarti.action">거래중 게시글</a></li>
						<li><a href="dealcomplarti.action">거래완료 게시글</a></li>
					</ul>
				</li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right" title="PrimeumCare">
					<a class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
						href="#collapsePrimeumCare" data-parent="#exampleAccordion"> 
						<i class="fa fa-fw fa-wrench"></i> 
						<span class="nav-link-text">프리미엄 관리</span>
					</a>
					<ul class="sidenav-second-level collapse" id="collapsePrimeumCare">
						<li>
							<a href="pmalllist.action">전체내역</a>
						</li>
						<li>
							<a href="pmapplylist.action">접수내역</a>
						</li>
						<li>
							<a href="pmslappcare.action">판매신청</a>
						</li>
						<li>
							<a href="">출장결과</a>
						</li>
						<li>
							<a href="navbar.html">게시글 작성·등록</a>
						</li>
						<li>
							<a href="navbar.html">판매 게시글</a>
						</li>
						<li>
							<a href="navbar.html">미승인</a>
						</li>
						<li>
							<a href="navbar.html">접수취소</a>
						</li>
						<li>
							<a href="navbar.html">접수불가</a>
						</li>
						<li>
							<a href="navbar.html">판매불가</a>
						</li>
					</ul>
				</li>
				
				<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Transport">
					<a class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
						href="#collapseTransport" data-parent="#exampleAccordion"> 
						<i class="fa fa-fw fa-wrench"></i> 
						<span class="nav-link-text">송금·환불 관리</span>
					</a>
					<ul class="sidenav-second-level collapse" id="collapseTransport">
						<li>
							<a href="navbar.html">보증금 환급 관리(구매자)</a>
						</li>
						<li>
							<a href="navbar.html">보증금 지급 관리(판매자)</a>
						</li>
						<li>
							<a href="navbar.html">판매자 송금</a>
						</li>
						<li>
							<a href="cards.html">구매자 환불</a>
						</li>
						<li>
							<a href="cards.html">위약금 판매자 지급 관리(취소)</a>
						</li>
						<li>
							<a href="cards.html">구매자 환불 관리(취소)</a>
						</li>
					</ul>
				</li>
				
				<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Claim">
					<a class="nav-link nav-link-collapse collapsed"
					data-toggle="collapse" href="#collapseClaim"
					data-parent="#exampleAccordion"> 
						<i class="fa fa-fw fa-wrench"></i>
						<span class="nav-link-text">배송신고 관리</span>
					</a>
					<ul class="sidenav-second-level collapse" id="collapseClaim">
						<li>
							<a class="nav-link-collapse collapsed" data-toggle="collapse" href="#collapseClaimSl">판매자</a>
							<ul class="sidenav-third-level collapse" id="collapseClaimSl">
								<li>
									<a href="#">배송신고(일반)</a>
								</li>
								<li>
									<a href="#">배송신고(프리미엄)</a>
								</li>
								<li>
									<a href="#">배송신고(무료나눔)</a>
								</li>
							</ul>
						</li>
						<li>
							<a class="nav-link-collapse collapsed" data-toggle="collapse" href="#collapseClaimBy">구매자</a>
							<ul class="sidenav-third-level collapse" id="collapseClaimBy">
								<li>
									<a href="#">배송신고(일반)</a>
								</li>
								<li>
									<a href="#">배송신고(프리미엄)</a>
								</li>
								<li>
									<a href="#">배송신고(무료나눔)</a>
								</li>
							</ul>
						</li>
					</ul>
				</li>
				
				
				
				<li class="nav-item" data-toggle="tooltip" data-placement="right" title="DealCancel">
					<a class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
						href="#collapseDealCancel" data-parent="#exampleAccordion"> 
						<i class="fa fa-fw fa-wrench"></i> 
						<span class="nav-link-text">거래취소 관리</span>
					</a>
					<ul class="sidenav-second-level collapse" id="collapseDealCancel">
						<li>
							<a href="navbar.html">판매자 신청(종합)</a>
						</li>
						<li>
							<a href="navbar.html">판매자 신청(예약)</a>
						</li>
						<li>
							<a href="navbar.html">구매자 신청(종합)</a>
						</li>
						<li>
							<a href="navbar.html">구매자 신청(예약)</a>
						</li>
						<li>
							<a href="navbar.html">판매자 취소 승인대기</a>
						</li>
					</ul>
				</li>
					
				
				<li class="nav-item" data-toggle="tooltip" data-placement="right" title="Complain">
					<a class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
						href="#collapseComplain" data-parent="#exampleAccordion"> 
						<i class="fa fa-fw fa-wrench"></i> 
						<span class="nav-link-text">고객센터</span>
					</a>
					<ul class="sidenav-second-level collapse" id="collapseComplain">
						<li>
							<a href="navbar.html">공지사항</a>
						</li>
						<li>
							<a href="navbar.html">문의게시판</a>
						</li>
						<li>
							<a href="navbar.html">신고접수</a>
						</li>
						<li>
							<a href="navbar.html">FAQ</a>
						</li>
						<li>
							<a href="navbar.html">이용가이드</a>
						</li>
					</ul>
				</li>
				<li class="nav-item" data-toggle="tooltip" data-placement="right" title="EmpDelCare">
					<a class="nav-link nav-link-collapse collapsed" data-toggle="collapse"
						href="#collapseEmpDelCare" data-parent="#exampleAccordion"> 
						<i class="fa fa-fw fa-wrench"></i> 
						<span class="nav-link-text">회원·직원·업체 관리</span>
					</a>
					<ul class="sidenav-second-level collapse" id="collapseEmpDelCare">
						<li>
							<a href="usercare.action">회원</a>
						</li>
						<li>
							<a href="employeecare.action">직원</a>
						</li>
						<li>
							<a href="delivercare.action">업체</a>
						</li>
					</ul>
				</li>
			</ul>
			
			<ul class="navbar-nav sidenav-toggler">
				<li class="nav-item">
					<a class="nav-link text-center" id="sidenavToggler"> 
						<i class="fa fa-fw fa-angle-left"></i>
					</a>
				</li>
			</ul>
			<ul class="navbar-nav ml-auto">
				
				<!-- 검색창 -->
				<li class="nav-item">
					<form class="form-inline my-2 my-lg-0 mr-lg-2">
						<div class="input-group">
							<input class="form-control" type="text" placeholder="Search for..."> 
							<span class="input-group-append">
								<button class="btn btn-primary" type="button">
									<i class="fa fa-search"></i>
								</button>
							</span>
						</div>
					</form>
				</li>
				
				
				<!-- 로그인 하는 곳 -->
				<li class="nav-item">
					<%
						if (session.getAttribute("admin_id")==null)
						{
					%>
							<a class="nav-link" data-target="#exampleModal" href="login.action"> 
								<i class="fa fa-fw fa-sign-out"></i>로그인
							</a>
					<%
						}
					%>
					<%
						if (session.getAttribute("admin_id")!=null)
						{
					%>
							<span class="input-group-append" style="color: white; display: inline;">관리자 : </span>
							<span class="input-group-append" style="color: yellow; display: inline; ">
								<%=session.getAttribute("admin_id") %></span>
							<a class="nav-link" data-target="#exampleModal" href="adlogout.action" style=" display: inline;"> 
								<i class="fa fa-fw fa-sign-out"></i>로그아웃
							</a>
					<%
						}
					%>
				</li>
			</ul>
		</div>
	</nav>
</body>
</html>