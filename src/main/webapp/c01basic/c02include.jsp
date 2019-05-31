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
    <title>动态和静态包含</title>
</head>
<body>
<%-- <h1>静态包含</h1>
<%@ include file="common/head.html" %>
<p>content</p>
<%@ include file="common/footer.jsp" %> --%>
<h1>动态包含</h1>
<jsp:include page="head.html"/>
<p>content</p>
<jsp:include page="footer.jsp"/>
</body>
</html>
