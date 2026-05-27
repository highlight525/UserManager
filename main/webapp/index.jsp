<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>用户管理系统</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family:"Microsoft Yahei",Arial,sans-serif;}
        body{background:#f5f7fa;padding:40px 20px;}
        .container{width:90%;max-width:900px;margin:0 auto;background:#fff;padding:40px;border-radius:12px;box-shadow:0 4px 12px rgba(0,0,0,0.1);}
        h1{text-align:center;color:#2c3e50;margin-bottom:30px;}
        .menu{text-align:center;}
        .menu a{display:inline-block;margin:10px;padding:12px 24px;background:#3498db;color:#fff;text-decoration:none;border-radius:8px;font-size:16px;transition:background .3s,transform .2s;}
        .menu a:hover{background:#2980b9;transform:translateY(-2px);}
    </style>
</head>
<body>
<div class="container">
    <h1>用户管理系统</h1>
    <div class="menu">
        <a href="insert.jsp">添加用户</a>
        <a href="search.jsp">查询用户</a>
        <a href="allShow.jsp">显示所有用户</a>
        <a href="dele.jsp">删除用户</a>
        <a href="update.jsp">修改用户</a>
    </div>
</div>
</body>
</html>