<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="kr.co.itcen.guestbook.dao.GuestBookDao"%>
<%@page import="kr.co.itcen.guestbook.vo.GuestBookVo"%>

<%

	String no =request.getParameter("no");
	String passwd = request.getParameter("password");
	GuestBookVo vo = new GuestBookVo();
	GuestBookDao dao = new GuestBookDao();
	
	vo.setNo(no);
	vo.setPassword(passwd);
	dao.delete(vo);
	
	response.sendRedirect(request.getContextPath());
	

%>