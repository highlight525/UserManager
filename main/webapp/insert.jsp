<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>添加用户</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family:"Microsoft Yahei",Arial,sans-serif;}
        body{background:#f5f7fa;padding:40px 20px;}
        .container{width:90%;max-width:600px;margin:0 auto;background:#fff;padding:30px;border-radius:12px;box-shadow:0 4px 12px rgba(0,0,0,0.1);}
        h2{text-align:center;color:#2c3e50;margin-bottom:20px;}
        label{display:block;margin:8px 0 4px;}
        input[type="text"],input[type="password"]{width:100%;padding:12px;margin:8px 0 16px;border:1px solid #ccc;border-radius:8px;font-size:15px;}
        input[type="submit"]{width:100%;padding:12px;background:#3498db;color:#fff;border:none;border-radius:8px;font-size:16px;cursor:pointer;transition:background .3s,transform .2s;}
        input[type="submit"]:hover{background:#2980b9;transform:translateY(-2px);}
        .back{text-align:center;margin-top:15px;}
        .back a{color:#3498db;text-decoration:none;}
    </style>
</head>
<body>
<div class="container">
    <h2>添加用户</h2>
    <form action="insertShow.jsp" method="post">
        <label>用户名：</label>
        <input type="text" name="username" required>

        <label>密码：</label>
        <input type="password" name="password" required>

        <label>年龄：</label>
        <input type="text" name="age" required>

        <label>邮箱：</label>
        <input type="text" name="email" required>

        <input type="submit" value="提交">
    </form>
    <div class="back"><a href="index.jsp">← 返回首页</a></div>
</div>
</body>
</html>