<%@ page contentType="text/html; charset=UTF-8"
%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><% 
	request.setCharacterEncoding("UTF-8"); 
	String cp = request.getContextPath();
	
	//xml 사용할 것. 
	response.setContentType("text/xml");
%><?xml version="1.0" encoding="UTF-8"?>
<list>
	<c:forEach var="item" items="${s_list }">
		<item>${item.s_category_code }</item>
		<item>${item.s_category_name }</item>
	</c:forEach>
</list>
