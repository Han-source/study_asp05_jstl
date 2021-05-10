<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:set var="lst" value="<%=java.util.Arrays.asList(1,2,3,4,5) %>" />
<c:forEach items="${lst}" var="val">
	${val } <br>
</c:forEach>
</body>
</html>

