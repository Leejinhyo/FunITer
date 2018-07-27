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

<link rel="stylesheet" href="css/bootstrap.min.css">
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript">


   function login()
   {
      myform.submit();
   }


</script>
<style type="text/css">

body
{
   margin-left: 300px;
   margin-top: 200px;
   width: 500px;
   
}


#content {
   border: 1px solid #ccc;
   border-radius: 5px;
   width: 500px;
   padding: 15px;
   margin: 30px;
}

#content h3 {
   margin: 0px;
   margin-bottom: 15px;
}

#under
{
   margin-left: 50px;
}

#table
{
   margin-left: 60px;
}
</style>

</head>
<body style="text-align: center;">


   <div style="text-align: center;">
      <h1>로그인 및 회원가입</h1>
      <hr>
   </div>


   <div id="up" style="text-align: center; ">
      <input type="button" class="btn btn-danger" value="관리자" style="width: 100px; height: 50px;">
      <input type="button" class="btn btn-default" value="직원" style="width: 100px; height: 50px;">
   
   </div>
   <div id="content" >
      <form action="adlogincheck.action" id="myform" method="post">
      
         <div class="form-group form-inline" style="display: inline-block;" >

            
            <table id="table">
               <tr>
                  <th>아이디</th>
                  <td>
                  <div>
                     <input type="text" id="admin_id" name="admin_id" placeholder="ID Enter..."
                     required="required" class="form-control" maxlength="12">
                  </div>
                  <td rowspan="2">
                     <input type="button" value="로그인" style="height: 70px;" class="btn btn-danger" onclick="login()">
                  </td>
               </tr>
               <tr>
                  <th>비밀번호 </th>
                  <td>
                     <div>
                        <input type="password" id="admin_pw" name="admin_pw" placeholder="PW Enter..." required="required" class="form-control" maxlength="15">
                     </div>
                  </td>
               </tr>
               
            </table>
            
         </div>

      </form>
      <div id="under">
      </div>
   </div>

   <footer> <a href="admin_login.jsp">(유)회사소개</a> 서울시 강남구 테헤란로 5길 7 KG타워 10, 11, 12층 유한회사
      알지피코리아 |대표자 : 강신봉 | 통신판매업신고:제
      2011-서울강남-03322호|개인정보담당자:privacy@yogiyo.co.kr|제휴문의:partnership@rgpkorea.co.k
      호스트서비스사업자:(주)심플렉스인터넷 </footer>
</body>
</html>








