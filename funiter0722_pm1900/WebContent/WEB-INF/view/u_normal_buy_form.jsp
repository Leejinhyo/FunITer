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
<link rel="stylesheet" href="<%=cp%>/css/jquery-ui.css">
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/jquery-ui.js"></script>
<link rel="stylesheet" href="<%=cp %>css/bootstrap.min.css">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
<script type="text/javascript" src="<%=cp %>js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=cp%>/js/ajax.js"></script>
<style type="text/css">
i.fa
{
   margin-right: 5px;
}
</style>
<script type="text/javascript">
   
   function send()
   {
      //구매하기 버튼 눌렀을 때, 주문목록에 인설트 되기전에 확인하기.
      if ($("#del_way_code").val()==0)
      {
         alert("배송정보를 설정하셔야 합니다.");
         return;
      }
      
      //alert($("#del_way_code").val());
      //alert("아니여기");
      if (confirm("예상 비용 : ~~~입니다. 진짜 구매하시겠습니까? ") == true)
      {    
         //확인
         $("#myform").submit();
      }
      else
      {
         return;
         
      }
      
   //★★★★ 예약 시작일과 종료일은 현재 날짜에서 한 달 안으로만 가능하게 하자.. 
      
   }

   $(document).ready(function()
   {
            
         
         //var min = $("#s_day2").val();
         var max = $("#minus").val();
         //alert(max);
         
      /* 
         // 예약 걸어 놓을 날짜의 시작일과 종료일 선택하는 과정 
         $("#book_d").datepicker(
         {
            dateFormat : "yy/mm/dd",
            changeYear :true,
            changeMonth : true,
            minDate : min,         // 오늘 이전 날짜 선택 불가
            maxDate : max,         // 오늘부로 30일 이전에만 선택 가능
            numberOfMonths: 2,      // 2장 펼침
            // 예약기간의 마지막 날이 첫날보다 먼저 오지 못하게 하는 과정
             onSelect: function(selected) 
            {
               // 종료일의 선택할 수 있는 최소 날짜(minDate)를 여기서 selected한 시작일로 지정
               $("#end_date").datepicker("option","minDate", selected)
            } 
         }); 
         */
            
         // 예약 걸어 놓을 날짜의 시작일과 종료일 선택하는 과정 
         
         //$("#book_d").datepicker("option","minDate", min)
         //$("#book_d").datepicker("option","maxDate", max)
         
         $("#booked_d").datepicker(
         {
            dateFormat : "yy-mm-dd",
            changeYear :true,
            changeMonth : true,
            minDate :<c:out value="${s_day2}"></c:out>,         // 오늘 이전 날짜 선택 불가
            maxDate :21,         // 오늘부로 30일 이전에만 선택 가능
            numberOfMonths: 2,      // 2장 펼침
         
         });
    
   });

</script>
</head>
<body>

<div>
   <c:import url="first_main_up.jsp"></c:import>
</div>

<c:if test="${check==1 }">
   ${str }
   <button class="btn btn-warning" onclick="location.href='nm_sell_form.action?nm_article_code=${nm_article_code}'">뒤로가기</button>
</c:if>

<c:if test="${check==0 }">

   <div>
         <h1 style="text-align: center; margin-top: 90px;">상품 구매</h1>
         <hr>
      </div>   
   <div id="content" style="margin-left: 30%; margin-bottom: 200px;">
         
      <!-- 판매자 정보 출력 부분 -->
      <form action="nm_buy_form_ok.action" method="post" id="myform">
         <input type="text" value="${nm_dto.nm_article_code }" id="nm_article_code" name="nm_article_code" style="display: none;">
         <div>
            <div class="col-md-6">
               <blockquote>
                  <h4>판매 정보</h4>
                  <hr style="border-color: #ccc">
               </blockquote>
            </div>
               <table class="table table-hover table-striped" style="width: 800px">
                  <colgroup>
                     <col style="width: 150px">
                     <col>
                  </colgroup>
                  <tbody>
                     <tr>
                        <th><i class="fa fa-user"></i>이름</th>
                        <td>${seller.user_name }<input type="text" value="${seller.user_code }" id="seller" name="seller" style="display: none;"></td>
                     </tr>
                     <tr>
                        <th><i class="fa fa-phone"></i>전화번호</th>
                        <td>${seller.user_tel }</td>
                     </tr>
                     <tr>
                        <th><i class="fa fa-map-marker"></i>주소</th>
                        <td>${seller.user_addr }</td>
                     </tr>
                     
                     <c:if test="${day==1}">
                     </c:if>
                     <c:if test="${day==0 }">
                        <tr>
                           <th><i class="fa fa-calendar"></i>예약가능 시간</th>
                           <td>
                              <input type="text" id="start_d" name="start_d" value="${nm_dto.start_d }" style="display: none;">
                              ${nm_dto.start_d }
                              ~
                              <input type="text" id="end_d" name="end_d" value="${nm_dto.end_d }" style="display: none;">
                              ${nm_dto.end_d }
                           </td>
                        </tr>
                     </c:if>
                  </tbody>
               </table>
         </div>      
         
         
         <br><br>
         
         
         <!-- 구매자 정보 출력 및 입력 부분 -->
         <div>
            <div class="col-md-6">
               <blockquote>
                  <h4>구매 정보</h4>
                  <hr style="border-color: #ccc">
               </blockquote>
            </div>
            <span class="text-info"><i class="fa fa-info-circle"></i> 배송지 및 연락처를 변경하고 싶으면 마이페이지에서 처리하시기 바랍니다.</span>
            
            <table class="table table-bordered" style="width: 800px;">
               <tr>
                  <th>이름</th>
                  <td>${buyer.user_name }<input type="text" value="${buyer.user_code }" id="buyer" name="buyer" style="display: none;"></td>
               </tr>
               <tr>
                  <th>전화번호</th>
                  <td>${buyer.user_tel }</td>
               </tr>
               <tr>
                  <th>주소</th>
                  <td>
                     <input type="text" name="user_addr" id="user_addr" value="${buyer.user_addr }" class="form-control">   
                   </td>
               </tr>
               <tr>
                  <th>상세주소</th>
                  <td>
                     <input type="text" name="detail_addr" id="detail_addr" value="${buyer.user_detail_addr }" placeholder="배송지를 입력하세요"  class="form-control">
                  	 <input type="text" name="booked_d" id="booked_d" class="form-control" style="width: 250px; display: none;" value="0">
                  </td>
               </tr>
                 		
               <c:if test="${day==0 }">
               <tr>
                  <th>예약일선택</th>
                  <td>
                     <input type="text" name="booked_d" id="booked_d" class="form-control" style="width: 250px;">
                     <input type="text" name="s_day2" id="s_day2" value="${s_day2 }" style="display: none;">
                     <input type="text" name="minus" id='minus' value="${minus }" style="display: none;">
                  </td>
               </tr>
               </c:if>
               <tr>
                  <th>배송방법 선택</th>
                  <td><div>
                     <select id="del_way_code" name="del_way_code" class="form-control" style="width: 250px; display: inline;">
                        <option value="0">배송방법을 선택해주세요.</option>
                        <option value="1">직거래</option>
                        <option value="2">택배</option>
                        <option value="3">용달</option>
                     </select>
                     <button class="btn" onclick="message()" style="width: 200px; margin-left: 170px; display: inline;"><i class="fa fa-truck"></i>
                  <span>용달업체 정보보기</span></button></div>
                  </td>
               </tr>
            </table>
         </div>         
         
            <div class="col-md-6">
               <blockquote>
                  <h4>입급 계좌</h4>
                  <hr style="border-color: #ccc">
               </blockquote>
            </div>
            <table class="table table-bordered" style="width: 800px;">
               <tr>
                  <th>은행명</th>
                  <td>
                     <select id="bank_code" name="bank_code" class="form-control">
                        <option value="0">은행선택</option>
                        <c:forEach var="bank_dto" items="${bank_dto }">
                           <option value="${bank_dto.bank_code }">${bank_dto.bank_name }</option>
                        </c:forEach>
                     </select>
                  </td>
                  <tr>
                     <th colspan="2" >
                     <span class="text-danger"><i class="fa fa-exclamation-triangle"></i>
                     fun.it.er 를 통한 모든 거래는 안전거래 형태입니다.
                     구매자님께서는 사측 계좌로 24시간 이내에 입금을 완료하셔야 합니다.
                     이를 이행하지 않을 시 자동적으로 구매취소되므로 유의하시기 바랍니다.
                     </span>
                     <br><br>
                     <p style="font-size: 15pt;">${seller.user_name }님의 입금 금액은 총 <span style="color: red;">${nm_dto.nm_price }</span>원입니다. </p>
                     </th>
                  </tr>
            
            </table>
            <div style="margin-top: 50px;">
               <button type="button" value="nomal_register" class="btn btn-info" onclick="send();" style="margin-left: 13%; width: 200px;">구매하기</button>
               <a href="nm_sell_form.action?nm_article_code=${nm_dto.nm_article_code }" class="btn btn-info" style="width: 200px;">취소</a>
            </div>
      </form>
   </div>
</c:if>
</body>
</html>