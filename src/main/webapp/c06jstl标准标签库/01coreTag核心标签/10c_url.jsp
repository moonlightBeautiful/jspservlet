<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<%--生成一个url地址--%>
<c:url value="http://www.java1234.com" var="url">
    <c:param name="name" value="xiaofeng"></c:param>
    <c:param name="age" value="26"></c:param>
</c:url>
<a href="${url }">Java知识分享网</a>
</body>
</html>