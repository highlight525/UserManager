<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="model.Model" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>删除结果</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family:"Microsoft Yahei",Arial,sans-serif;}
        body{background:#f5f7fa;padding:40px 20px;}
        .container{width:90%;max-width:600px;margin:0 auto;background:#fff;padding:30px;border-radius:12px;box-shadow:0 4px 12px rgba(0,0,0,0.1);text-align:center;}
        h3{margin-bottom:20px;color:#2c3e50;}
        .success{color:green;}
        .error{color:red;}
        a{display:inline-block;margin:10px;padding:8px 16px;background:#3498db;color:#fff;text-decoration:none;border-radius:6px;}
        a:hover{background:#2980b9;}
    </style>
</head>
<body>
<div class="container">
    <%
        String idStr = request.getParameter("id");
        // 1. 校验输入是否为空
        if(idStr == null || idStr.trim().isEmpty()){
            out.print("<h3 class='error'>删除失败：请输入用户ID！</h3>");
        } else {
            int id;
            // 2. 捕获数字格式异常
            try {
                id = Integer.parseInt(idStr.trim());
            } catch (NumberFormatException e) {
                out.print("<h3 class='error'>删除失败：用户ID必须是数字！</h3>");
                return;
            }

            Model model = new Model();
            boolean res = model.deleteUser(id);

            if(res){
                out.print("<h3 class='success'>删除用户成功！</h3>");
            }else{
                out.print("<h3 class='error'>删除用户失败：该用户ID不存在！</h3>");
            }
        }
    %>
    <a href="allShow.jsp">查看全部用户</a>
    <a href="index.jsp">返回首页</a>
</div>
</body>
</html>