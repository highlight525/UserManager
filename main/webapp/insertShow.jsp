<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="entity.User,model.Model" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加结果</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family:"Microsoft Yahei",Arial,sans-serif;}
        body{background:#f5f7fa;padding:40px 20px;}
        .container{width:90%;max-width:600px;margin:0 auto;background:#fff;padding:30px;border-radius:12px;box-shadow:0 4px 12px rgba(0,0,0,0.1);text-align:center;}
        h3{margin-bottom:20px;color:#2c3e50;}
        a{display:inline-block;margin:10px;padding:8px 16px;background:#3498db;color:#fff;text-decoration:none;border-radius:6px;}
        a:hover{background:#2980b9;}
    </style>
</head>
<body>
<div class="container">
    <%
        request.setCharacterEncoding("utf-8");
        // 接收表单提交的所有字段
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        int age = Integer.parseInt(request.getParameter("age"));
        String email = request.getParameter("email");

        // 打印调试信息，看有没有拿到值
        System.out.println("收到的数据：username=" + username + ", password=" + password + ", age=" + age + ", email=" + email);

        User user = new User(username,password,age,email);
        Model model = new Model();
        boolean res = model.addUser(user);

        if(res){
            out.print("<h3>添加用户成功！</h3>");
        }else{
            out.print("<h3>添加用户失败！</h3>");
        }
    %>
    <a href="allShow.jsp">查看全部用户</a>
    <a href="index.jsp">返回首页</a>
</div>
</body>
</html>