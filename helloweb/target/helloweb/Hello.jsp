<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 스크립트릿 -->
<%
String name = request.getParameter("name");

String email = request.getParameter("email");
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Hello World</h1>

	<%=name %> (<%=email %>)

</body>
</html>