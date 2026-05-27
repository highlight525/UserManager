<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="entity.User,model.Model,java.util.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>所有用户</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family:"Microsoft Yahei",Arial,sans-serif;}
        body{background:#f5f7fa;padding:40px 20px;}
        .container{width:90%;max-width:900px;margin:0 auto;background:#fff;padding:30px;border-radius:12px;box-shadow:0 4px 12px rgba(0,0,0,0.1);}
        h2{text-align:center;color:#2c3e50;margin-bottom:20px;}
        table{width:100%;border-collapse:collapse;margin:20px 0;}
        th,td{padding:12px 15px;text-align:center;border-bottom:1px solid #eee;}
        th{background:#3498db;color:#fff;}
        tr:hover{background:#f8f9fa;}
        .back{text-align:center;margin-top:15px;}
        .back a{color:#3498db;text-decoration:none;}
    </style>
</head>
<body>
<div class="container">
    <h2>用户列表</h2>
    <table>
        <tr>
            <th>ID</th>
            <th>用户名</th>
            <th>密码</th>
            <th>年龄</th>
            <th>邮箱</th>
        </tr>
        <%
            Model model = new Model();
            List<User> list = model.findAllUser();
            if(list == null || list.isEmpty()){
        %>
        <tr>
            <td colspan="5" style="color:red;">暂无用户数据</td>
        </tr>
        <%
            }else{
                for(User u : list){
        %>
        <tr>
            <td><%=u.getId()%></td>
            <td><%=u.getUsername()%></td>
            <td><%=u.getPassword()%></td>
            <td><%=u.getAge()%></td>
            <td><%=u.getEmail()%></td>
        </tr>
        <%
                }
            }
        %>
    </table>
    <div class="back"><a href="index.jsp">← 返回首页</a></div>
</div>
</body>
</html>