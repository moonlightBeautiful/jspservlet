<%--
  Created by gaoxu.
  User: gaoxu
  Date: 2019/5/31 0031
  Time: 10:22
--%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>动态和静态包含，我们要选择静态包含。</title>
</head>
<body>
<%-- <h1>静态包含</h1>
<%@ include file="common/head.html" %>
<p>静态包含，先把head.html和footer.jsp包含进来，再编译，产生一个class文件。有1个class文件。</p>
<%@ include file="common/footer.jsp" %> --%>


<h1>动态包含</h1>
<jsp:include page="head.html"/>
<p>动态包含，先把footer.jsp编译成class文件，包含到c02include.jsp，再编译一次。有2个class文件。</p>
<jsp:include page="footer.jsp"/>
</body>
</html>
