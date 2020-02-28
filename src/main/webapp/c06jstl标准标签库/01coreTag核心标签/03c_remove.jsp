<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%--设置变量值--%>
<c:set var="people" value="张三" scope="request"></c:set>
<h2><c:out value="${people}" default="没人啊"></c:out></h2>
<%--移除变量值--%>
<c:remove var="people" scope="request"/>
<h2><c:out value="${people}" default="没人啊"></c:out></h2>
</body>
</html>