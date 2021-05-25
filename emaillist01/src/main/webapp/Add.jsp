<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.douzone.emaillist.vo.EmaillistVo"%>
<%@page import="com.douzone.emaillist.dao.EmaillistDao"%>
<%
request.setCharacterEncoding("utf-8");

long no = Long.parseLong(request.getParameter("no"));
//long no = request.getParameter("no");
String fisrtName = request.getParameter("fn");
String lastName = request.getParameter("ln");
String email = request.getParameter("email");

EmaillistVo vo = new EmaillistVo();

vo.setNo(no);
vo.setFirstName(fisrtName);
vo.setLastName(lastName);
vo.setEmail(email);
new EmaillistDao().insert(vo);

response.sendRedirect(request.getContextPath());
%>