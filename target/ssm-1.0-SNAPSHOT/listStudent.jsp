<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% String basePath =
        request.getScheme() + "://"
                + request.getServerName() + ":"
                + request.getServerPort() +
                request.getContextPath() + "/"; %>
<html>
<head>
    <title>浏览学生</title>
    <base href="<%=basePath%>">
    <script type="text/javascript" src="js/jquery-3.5.1.js"></script>
    <script type="text/javascript">
        $(function () {
            loadStudentData();
            $("#query").click(function () {
                loadStudentData();
            })
        })
        function loadStudentData() {
            $.ajax({
                url:"student/queryStudent.do",
                type:"get",
                dataType:"json",
                success:function (data) {
                    /*清楚旧的数据*/
                    $("#info").html("");
                    $.each(data,function (i,n) {
                        $("#info").append("<tr>")
                            .append("<td>"+n.id+"</td>")
                            .append("<td>"+n.name+"</td>")
                            .append("<td>"+n.age+"</td>")
                            .append("<td>"+n.gender+"</td>")
                            .append("<td>"+n.grade+"</td>")
                            .append("</tr>")
                    })
                }
            })
        }
    </script>
</head>
<body>
    <div align="center">
        <table>
            <thead>
                <tr>
                    <td>id</td>
                    <td>name</td>
                    <td>age</td>
                    <td>gender</td>
                    <td>grade</td>
                </tr>
            </thead>
            <tbody id="info">

            </tbody>
        </table>
        <input id="query" type="button" value="查询" />
    </div>
</body>
</html>
