<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%

request.setCharacterEncoding("utf-8");

String email = request.getParameter("email");
String pw = request.getParameter("pw");
String birth = request.getParameter("birth");
String gender = request.getParameter("gender");
String[] hobbys = request.getParameterValues("hobby");
String profile = request.getParameter("profile");


%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
이메일: <%=email %><br>
비밀번호: <%=pw %><br>
생일: <%=birth %><br>
성별: <%=gender %><br>

<%
	for(String hobby : hobbys){
%>
취미: <%=hobby %><br>

<%} %>

<p>
<%=profile.replaceAll("\n", "<br>") %>
</body>
</html>