# jspservlet
1.hello
    1.简介：
        动态网页技术（B/S架构）
    2.tomcat
        web服务器，下载，解压就可以用。
        把war包放到webapp目录下，tomcat运行后会自动解压war包。会编译到work目录中
    3.基本语法
        1.page： <%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8" language="java" %>
            language：定义jsp要使用的脚本语言。这里只能是java
            pageEncoding：jsp页面编码。
            contentType：
            JSP要经过两次的“编码”和三个阶段：
             第一阶段：首先用pageEncoding编码读取JSP文件，然后使用UTF-8编码将JSP文件编译成.java文件。
             第二阶段：首先用UTF-8编码读取.java文件，然后使用UTF-8编码将.java文件编译成.class文件。
             第三阶段：最后由Tomca以contentType编码将.class文件的内容响应到客户端。
        2.scriptlet标签
            <%! %>、<%! %>、<%= %>
        3.注释
            html注释:<!-- html注释  -->, 客户端可见
            jsp注释：<%-- 你好  --%>  客户端不可见
            java代码注释 <% //你好,还有文档 多行注释  %>，客户端不可见
            <br>
        4.包含文件
            静态包含和动态包含，选择静态包含
            静态包含：先包含，再编译。<%@ include file="" %>
            动态包含：先编译，再包含。容易发生变量冲突。<%@ include page="" %>
        5.跳转
            内部跳转，可以携带参数。浏览器url不变。
            <jsp:forward page="target.jsp">
                <jsp:param value="java1234" name="userName"/>
                <jsp:param value="123456" name="password"/>
            </jsp:forward>
            userName:<%=request.getParameter("userName") %>
            