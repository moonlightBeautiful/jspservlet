<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>实例化bean时，指定范围application</title>
</head>
<body>
<jsp:useBean id="student" scope="application" class="com.java1234.model.Student"/>
<jsp:setProperty property="name" name="student" value="李四"/>
<jsp:setProperty property="age" name="student" value="13"/>
<h1>Application数据设置完毕！</h1>
</body>
</html>