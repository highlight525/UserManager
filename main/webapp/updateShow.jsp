<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="entity.User,model.Model" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>修改结果</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family:"Microsoft Yahei",Arial,sans-serif;}
        body{background:#f5f7fa;padding:40px 20px;}
        .container{width:90%;max-width:600px;margin:0 auto;background:#fff;padding:30px;border-radius:12px;box-shadow:0 4px 12px rgba(0,0,0,0.1);text-align:center;}
        h3{margin-bottom:20px;color:#2c3e50;font-size:20px;}
        .success{color:#27ae60;}
        .error{color:#e74c3c;}
        a{display:inline-block;margin:10px;padding:8px 16px;background:#3498db;color:#fff;text-decoration:none;border-radius:6px;transition:background .3s;}
        a:hover{background:#2980b9;}
    </style>
</head>
<body>
<div class="container">
    <%
        request.setCharacterEncoding("utf-8");
        String idStr = request.getParameter("id");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        int age = Integer.parseInt(request.getParameter("age"));
        String email = request.getParameter("email");

        int id;
        try {
            id = Integer.parseInt(idStr.trim());
        } catch (NumberFormatException e) {
            out.print("<h3 class='error'>修改失败：用户ID必须是数字！</h3>");
            return;
        }

        User user = new User(username,password,age,email);
        user.setId(id);
        Model model = new Model();
        boolean res = model.updateUser(user);

        if(res){
            out.print("<h3 class='success'>修改成功！</h3>");
        }else{
            out.print("<h3 class='error'>修改用户失败！</h3>");
        }
    %>
    <a href="allShow.jsp">查看全部用户</a>
    <a href="index.jsp">返回首页</a>
</div>
</body>
</html>