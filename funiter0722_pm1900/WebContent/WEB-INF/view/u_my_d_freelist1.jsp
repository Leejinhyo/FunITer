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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link href="vendor/font-awesome/css/font-awesome.min.css"rel="stylesheet" type="text/css">
<link href="vendor/datatables/dataTables.bootstrap4.css" rel="stylesheet">
<style type="text/css">

#content {
	border: 1px solid #ccc;
	border-radius: 5px;
	width:1500px;
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



</style>
<script type="text/javascript">
	$(document).ready(function()
	{
		if ($(".updatebtn").click(function()
		{
			alert("수정버튼");
		}));
		if ($(".deletebtn").click(function()
		{
			alert("삭제버튼");
		}));
		if ($(".enterbtn").click(function()
		{
			alert("입력버튼");
		}));
		if ($(".claimbtn").click(function()
		{
			alert("신고버튼");
		}));
		if ($(".cancelbtn").click(function()
		{
			alert("취소버튼");
		}));
		
	});

</script>

</head>
<body>
<div>
<c:import url="first_main_up.jsp"></c:import>

</div>


<!-- 전체 공간 -->
<div>
	<!-- 왼쪽공간. -->
	<div style="display: inline-block;">
	<c:import url="u_my_side.jsp"></c:import> 
	</div>
	<!-- 오른쪽공간 -->
	<div style= "display: inline-block;">
		
		<div>
			<h4 class="glyphicon glyphicon-tags">   나의 나눔한 내역</h4>
			<hr>
		</div>	
		
		<!-- 아래 공간 -->
		 <div class="card-body">
                  <div class="table-responsive">
                     <table class="table table-bordered" id="dataTable" style="table-layout: fixed; text-align: center;">
                        <thead>
                           <tr>
                              <th colspan="5" style="text-align: left">	<h4 class="glyphicon glyphicon-tags">  무료나눔 등록상품 관리</h4></th>
                           </tr>
                           <tr>
	                            <th>번호</th>
								<th>게시믈 번호</th>
								<th>상품분류</th>
								<th>제목</th>
								<th>게시물 작성일</th>
								<th>수정 / 삭제 </th>
                           </tr>
                        </thead>
                        <tbody>
                          <%-- <c:forEach var="lists" items="${list}"> -- 추후에 작성 ★--%> 
								<tr>
									<td>1</td>
									<td>12357</td>
									<td>침실가구</td>
									<td>유아침대 팔아요</td>
									<td>2018/06/18</td>
									<td><input type="button" id="update" name="update" value="수정" class="btn btn-info updatebtn">/ <input type="button" id="delete" name="delete" value="삭제" class="btn btn-info deletebtn"></td>
									
								</tr>
							<%-- </c:forEach> --%>
                        </tbody>
                     </table>
                  </div>
           
		</div>
			<!-- 아래 공간 -->
			
		 <div class="card-body">
                  <div class="table-responsive">
                     <table class="table table-bordered" id="dataTable" style="text-align: center;">
                        <thead>
                           <tr>
                              <th colspan="5" style="text-align: center;"> <h4 class="glyphicon glyphicon-tags">  무료나눔 판매 진행 상황</h4></th>
                           </tr>
                           <tr>
				                <th>번호</th>
								<th>게시글번호</th>
								<th>주문번호</th>
								<th style="width: 58px;">상품분류</th>
								<th style="width: 120px;" >제목</th>
								<th style="width: 85px;">게시글 작성일</th>
								<th style="width: 80px;">거래시작일</th>
								<th style="width: 66px;">거래상태</th>
								<th style="width: 66px;">배송방법</th>
								<th>배송정보</th>
								<th>배송일</th>
								<th style="width: 113px;">신고/취소</th>
								<th style="width: 80px;">상태변경일</th>
                           </tr>
                        </thead>
                        <tbody>
                          <%-- <c:forEach var="lists" items="${list}"> -- 추후에 작성 ★--%> 
								<tr>
									<td>1</td>
									<td>12357</td>
									<td>1567</td>
									<td>침실가구</td>
									<td>유아침대 팔아요</td>
									<td>2018/06/18</td>
									<td>2018/06/20</td>
									<td>나눔중</td>
									<td>직거래</td>
									<td>
										<input type="button" value="입력" class="btn btn-info enterbtn">
									</td>
									<td>2018/01/26</td>
									<td >
										<input type="button" id="claim" name="claim" value="신고" class="btn btn-info claimbtn">/
										<input type="button" id="cancel" name="cancel" value="취소" class="btn btn-info cancelbtn">
									</td>
									<td>2018/06/06</td>
								</tr>
							<%-- </c:forEach> --%>
                        </tbody>
                     </table>
                  </div>	
		</div>
		</div>
	

</div>
</body>
</html>