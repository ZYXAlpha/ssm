<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String basePath =
        request.getScheme() + "://"
                + request.getServerName() + ":"
                + request.getServerPort() +
                request.getContextPath() + "/"; %>
<html>
<head>
    <title>功能入口</title>
    <base href="<%=basePath%>">
</head>
<body>
    <div align="center">
        <p>SSm整合</p>
        <table>
            <tr>
                <td><a href="register.jsp">注册学生</a></td>
            </tr>
            <tr>
                <td><a href="listStudent.jsp" >浏览学生</a></td>
            </tr>
        </table>
    </div>
</body>
</html>
