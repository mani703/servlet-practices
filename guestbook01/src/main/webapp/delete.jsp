<%@page import="java.text.ParseException"%>
<%@page import="com.douzone.guestbook.dao.GuestbookDao"%>
<%@page import="com.douzone.guestbook.vo.GuestbookVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String index = request.getParameter("no");
	String password = request.getParameter("password");
	GuestbookVo vo = new GuestbookVo();
	vo.setNo(Long.parseLong(index));
	vo.setPassword(password);
	
	new GuestbookDao().delete(vo);
	
	response.sendRedirect(request.getContextPath());
%>
