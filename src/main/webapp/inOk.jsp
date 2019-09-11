<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="kr.co.itcen.guestbook.dao.GuestBookDao"%>
<%@page import="kr.co.itcen.guestbook.vo.GuestBookVo"%>

<%
	request.setCharacterEncoding("utf-8");
	String no =request.getParameter("no");
	String name = request.getParameter("name");
	String passwd = request.getParameter("password");
	String contents = request.getParameter("message");
	
	GuestBookVo vo = new GuestBookVo();
	GuestBookDao dao = new GuestBookDao();
	
	vo.setNo(no);
	vo.setName(name);
	vo.setPassword(passwd);
	vo.setContents(contents);
	dao.insert(vo);
	
	response.sendRedirect(request.getContextPath());
	

%>