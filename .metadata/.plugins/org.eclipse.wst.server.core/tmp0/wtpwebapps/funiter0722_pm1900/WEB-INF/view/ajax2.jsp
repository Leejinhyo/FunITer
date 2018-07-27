<%@ page contentType="text/html; charset=UTF-8"
%><%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%><% 
	request.setCharacterEncoding("UTF-8"); 
	String cp = request.getContextPath();
	
	//xml 사용할 것. 
	response.setContentType("text/xml");
%><?xml version="1.0" encoding="UTF-8"?>
<list>
	<c:forEach var="option1" items="${option1 }">
		<item>${option1.option1_code }</item>
		<item>${option1.option1_content }</item>
	</c:forEach>
	<c:forEach var="option2" items="${option2 }">
		<item2>${option2.option2_code }</item2>
		<item2>${option2.option2_content }</item2>
	</c:forEach>
</list>
