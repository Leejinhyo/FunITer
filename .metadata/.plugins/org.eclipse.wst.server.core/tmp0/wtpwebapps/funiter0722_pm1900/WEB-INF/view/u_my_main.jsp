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

table th
{
	width: 400px;
}

td
{
	width: 400px;
}


</style>
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
		
		<span style="color: red;">${user_name }님 안녕하세요!</span>
		<input type="button" id="logout" name="logout" value="로그아웃" class="btn btn-info" onclick="location.href='logout.action'">
		
		<!-- 위에공간 -->
		<div class="glyphicon glyphicon-bookmark">확인해보세요
		
			<div style="height: 200px; display: inline-block;">
			
				<!-- 왼쪽공간 -->
				<div style="width: 200px; display: inline-block;">
					<span>답변받은 신고사항</span>
					<span style="float: right;"><a href="u_my_f_ans2.jsp">2건</a></span>
					<br>
					<span>답변받은 문의사항</span>
					<span style="float: right;"><a href="u_my_f_ans.jsp">2건</a></span>
					<br>
					<span>대기중인 구매취소요청</span>
					<span style="float: right;"><a href="u_my_b_cancelreq.jsp">2건</a></span>
				</div>
				
				<!-- 오른쪽공간 -->	
				<div style="width: 200px; display: inline-block;">
					<span>새로운 관리자 알림</span>
					<span style="float: right;"><a href="u_my_a_alarm.jsp">2건</a></span>
					<br>
					<span>새로운 쪽지</span>
					<span style="float: right;"><a href="u_my_e_proifile1.jsp">2건</a></span>
					<br>
					<span>취소된 예약판매</span>
					<span style="float: right;"><a href="u_my_b_cancellist3">2건</a></span>
				</div>
				
			</div>
		</div>
		<!-- 아래공간 -->
		<div>
			<span class="glyphicon glyphicon-bookmark">MY 최근 1개월 활동 내역</span>
			<span> 2018/05/28 ~ 2018/06/28 기준</span>
			
			<!--※일반거래 전체  -->
			<div style="height: 200px;">
				<!-- 왼쪽파트 -->
				<div style="display: inline-block; width: 200px;">
					<table>	
						<tr>
							<th rowspan="5" class="btn-warning" style="text-align: center;">일반거래</th>
						</tr>
						<tr>
							<th>판매</th>
						</tr>
						<tr>
							<th>판매대기</th>
							<td>0건</td>
						</tr>
						<tr>
							<th>판매대기</th>
							<td>0건</td>
						</tr>
						<tr>
							<th>판매대기</th>
							<td>0건</td>
						</tr>
					</table>
				</div>
				
				<!--오른쪽파트 -->
				<div  style="display: inline-block; width: 200px;">
					<table>	
						<tr>
							<th rowspan="5"></th>
						</tr>
						<tr>
							<th>구매</th>
						</tr>
						<tr>
							<th>배송대기</th>
							<td>0건</td>
						</tr>
						<tr>
							<th>배송완료</th>
							<td>0건</td>
						</tr>
						<tr>
							<th>수령완료</th>
							<td>0건</td>
						</tr>
					</table>
				</div>
			</div>
			
			<!-- ※프리미엄 전체  -->
			<div style="height: 200px;">
				<!-- 왼쪽파트 -->
				<div style="display: inline-block; width: 200px;">
					<table>	
						<tr>
							<th rowspan="5" class="btn-warning" style="text-align: center;">프리미엄</th>
						</tr>
						<tr>
							<th>판매</th>
						</tr>
						<tr>
							<th>판매대기</th>
							<td>0건</td>
						</tr>
						<tr>
							<th>판매대기</th>
							<td>0건</td>
						</tr>
						<tr>
							<th>판매대기</th>
							<td>0건</td>
						</tr>
					</table>
				</div>
				
				<!--오른쪽파트 -->
				<div  style="display: inline-block; width: 200px;">
					<table>	
						<tr>
							<th rowspan="5"></th>
						</tr>
						<tr>
							<th>구매</th>
						</tr>
						<tr>
							<th>배송대기</th>
							<td>0건</td>
						</tr>
						<tr>
							<th>배송완료</th>
							<td>0건</td>
						</tr>
						<tr>
							<th>수령완료</th>
							<td>0건</td>
						</tr>
					</table>
				</div>
			</div>


			<!-- ※무료나눔 전체  -->
			<div style="height: 200px;" >
				<!-- 왼쪽파트 -->
				<div style="display: inline-block; width: 200px;">
					<table>	
						<tr>
							<th rowspan="5" class="btn-warning" style="text-align: center;">무료나눔</th>
						</tr>
						<tr>
							<th>판매</th>
						</tr>
						<tr>
							<th>나눔대기</th>
							<td>0건</td>
						</tr>
						<tr>
							<th>나눔중</th>
							<td>0건</td>
						</tr>
						<tr>
							<th>나눔완료</th>
							<td>0건</td>
						</tr>
					</table>
				</div>
				
				<!--오른쪽파트 -->
				<div  style="display: inline-block; width: 200px;">
					<table>	
						<tr>
							<th rowspan="5"></th>
						</tr>
						<tr>
							<th>구매</th>
						</tr>
						<tr>
							<th>배송대기</th>
							<td>0건</td>
						</tr>
						<tr>
							<th>배송완료</th>
							<td>0건</td>
						</tr>
						<tr>
							<th>수령완료</th>
							<td>0건</td>
						</tr>
					</table>
				</div>
			</div>			
			
			
			<!-- ※거래취소 전체  -->
			<div style="height: 200px;">
				<!-- 왼쪽파트 -->
				<div style="display: inline-block; width: 200px;">
					<table>	
						<tr style="width: 200px;">
							<th rowspan="3"  class="btn-warning" style="text-align: center;">취소한 거래</th>
							<td>3건</td>
						</tr>
						<tr>
							<td>
							</td>
						</tr>
						<tr>
							<td>
							</td>
						</tr>
					</table>
				</div>
				
				<!--오른쪽파트 -->
				<div  style="display: inline-block; width: 200px;">
					<table>	
						<tr>
							<th rowspan="2"></th>
							<td>3건</td>
						</tr>
					</table>
				</div>
			</div>			
			


		</div>
		
		
		
		
	</div>
</div>
</body>
</html>