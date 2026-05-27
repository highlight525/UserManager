<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="entity.User,model.Model" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>查询结果</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family:"Microsoft Yahei",Arial,sans-serif;}
        body{background:#f5f7fa;padding:40px 20px;}
        .container{width:90%;max-width:600px;margin:0 auto;background:#fff;padding:30px;border-radius:12px;box-shadow:0 4px 12px rgba(0,0,0,0.1);}
        h3{text-align:center;color:#2c3e50;margin-bottom:20px;}
        p{font-size:16px;line-height:2;}
        .back{text-align:center;margin-top:20px;}
        .back a{color:#3498db;text-decoration:none;}
        .error{color:red;text-align:center;}
    </style>
</head>
<body>
<div class="container">
    <h3>用户信息</h3>
    <%
        String idStr = request.getParameter("id");
        // 先判断输入是否为空
        if(idStr == null || idStr.trim().isEmpty()){
            out.print("<p class='error'>请输入用户ID！</p>");
        } else {
            int id;
            // 捕获数字格式异常，防止输错ID报错
            try {
                id = Integer.parseInt(idStr.trim());
            } catch (NumberFormatException e) {
                out.print("<p class='error'>用户ID必须是数字！</p>");
                return;
            }

            Model model = new Model();
            User user = model.findUserById(id);

            if(user != null){
    %>
        <p>用户ID：<%=String.format("%04d", user.getId())%></p>
        <p>用户名：<%=user.getUsername()%></p>
        <p>密码：<%=user.getPassword()%></p>
        <p>年龄：<%=user.getAge()%></p>
        <p>邮箱：<%=user.getEmail()%></p>
    <%
            } else {
                out.print("<p class='error'>未查询到该用户！</p>");
            }
        }
    %>
    <div class="back"><a href="index.jsp">← 返回首页</a></div>
</div>
</body>
</html>