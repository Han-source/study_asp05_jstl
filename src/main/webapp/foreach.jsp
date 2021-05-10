<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.HashMap, java.util.Map, java.util.Calendar"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<% 
	Map<String, Object> mapDt = new HashMap<>(); 
	mapDt.put("name", "홍길동");
	mapDt.put("val", 1);
	mapDt.put("날짜", Calendar.getInstance());
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<c:set var="intArr" value="<%=new int[] {0, 1, 2, 3, 4, 5 }%>" />
<c:set var="map" value="<%=mapDt%>" />
<title>Insert title here</title>
</head>
<body>
	<c:set var="sum" value="0" />

	<c:forEach begin="22" end="55" step="3" var="i">
		<c:set var="sum" value="${sum + i }" />

	</c:forEach>
	${sum}

	<!--  4단 출력 -->
	<h4>4단</h4>
	<ul>
		<c:forEach begin="1" end="9" var="i">
			<li>4 * ${i} = ${4*i }</li>
		</c:forEach>

	</ul>
	<h4>구구단</h4>

	<!--  ul li로 구구단출력하기 -->
	<c:forEach begin="2" end="9" var="i">
		${i } 단 
		<c:forEach begin="1" end="9" var="j">
			<ul>
				<li>${i }* ${j} = ${i*j }</li>
			</ul>
		</c:forEach>

	</c:forEach>


	<!-- 테이블로 구구단 출력하기 -->
	<h4>테이블로 구구단 출력</h4>

	<table border="1">

		<c:forEach begin="1" end="9" var="row">
			<tr>
				<c:forEach begin="0" end="9" var="col">
					<c:if test="${row ==1 && col == 0}">
						<th>구구단</th>
					</c:if>
					<c:if test="${row ==1 && col != 0}">
						<th>${col}</th>
					</c:if>
					<c:if test="${row != 1 && col == 0}">
						<th>${row}</th>
					</c:if>
					<c:if test="${row != 1 && col != 0}">
						<td>${row * col}</td>
					</c:if>
				</c:forEach>
			</tr>
		</c:forEach>
	</table>
<!--  배열 활용하기  -->
	<c:forEach items="${intArr}" var="ele" begin="2" end="5" step="2" varStatus="st">
		${st.index}...${st.count}....[${ele}] <br>
	</c:forEach>
<!-- Map에 들어 있는 값들 -->
<h4>Map에 들어 있는 값들</h4>

	<c:forEach items="${map}" var="ele" >
		${ele.key} = ${ele.value} <br>
	</c:forEach>

</body>
</html>

