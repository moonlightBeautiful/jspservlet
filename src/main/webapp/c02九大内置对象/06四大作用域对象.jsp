<%@ page import="java.util.Enumeration" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8" %>
<%@ page errorPage="04error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <title>Insert title here</title>
</head>
<body>
<%
    pageContext.setAttribute("name0", "pageInfo");
    request.setAttribute("name1", "requestInfo");
    session.setAttribute("name2", "sessionInfo");
    application.setAttribute("name3", "applicationInfo");

    out.println("使用pageContext<br/>");
    out.println("pageContext中的属性值：" + pageContext.getAttribute("name0") + "<br/>");
    out.println("request中的属性值：" + pageContext.getRequest().getAttribute("name1") + "<br/>");
    out.println("session中的属性值：" + pageContext.getSession().getAttribute("name2") + "<br/>");
    out.println("application中的属性值：" + pageContext.getServletContext().getAttribute("name3") + "<br/>");
%>


<%
    // 通过requet对象获取头信息
    Enumeration enu = request.getHeaderNames();
    while (enu.hasMoreElements()) {
        String headerName = (String) enu.nextElement();
        String headerValue = request.getHeader(headerName);
%>
<h4><%=headerName %>&nbsp;<%=headerValue %>
</h4>
<%
    }
%>
</body>
</html>