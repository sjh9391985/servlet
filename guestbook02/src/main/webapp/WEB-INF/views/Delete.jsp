<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@page import="com.douzone.guestbook.dao.GuestBookDao"%>
<%@page import="com.douzone.guestbook.vo.GuestBookVo"%>


<%
request.setCharacterEncoding("utf-8");
String num = request.getParameter("no");
String pw = request.getParameter("password");

long number = Long.valueOf(num).longValue();

GuestBookVo vo = new GuestBookVo();



	vo.setNo(number);
	vo.setPassword(pw);
	new GuestBookDao().delete(vo);



response.sendRedirect(request.getContextPath());
%>