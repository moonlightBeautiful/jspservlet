<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>confige对象从web.xml中拿数据</title>
</head>
<body>
<%
	String jdbcName=config.getInitParameter("jdbcName");
	String dbUrl=config.getInitParameter("dbUrl");
%>
<h1>驱动名称：<%=jdbcName %></h1>
<h1>连接地址：<%=dbUrl %></h1>
</body>
</html>