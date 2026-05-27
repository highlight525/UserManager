<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>删除用户</title>
    <style>
        *{margin:0;padding:0;box-sizing:border-box;font-family:"Microsoft Yahei",Arial,sans-serif;}
        body{background:#f5f7fa;padding:40px 20px;}
        .container{width:90%;max-width:600px;margin:0 auto;background:#fff;padding:30px;border-radius:12px;box-shadow:0 4px 12px rgba(0,0,0,0.1);}
        h2{text-align:center;color:#2c3e50;margin-bottom:20px;}
        input[type="text"]{width:100%;padding:12px;margin:8px 0 16px;border:1px solid #ccc;border-radius:8px;font-size:15px;}
        input[type="submit"]{width:100%;padding:12px;background:#e74c3c;color:#fff;border:none;border-radius:8px;font-size:16px;cursor:pointer;transition:background .3s,transform .2s;}
        input[type="submit"]:hover{background:#c0392b;transform:translateY(-2px);}
        .back{text-align:center;margin-top:15px;}
        .back a{color:#3498db;text-decoration:none;}
    </style>
</head>
<body>
<div class="container">
    <h2>删除用户（按ID）</h2>
    <form action="deleShow.jsp" method="post">
        用户ID：<input type="text" name="id" required><br>
        <input type="submit" value="删除">
    </form>
    <div class="back"><a href="index.jsp">← 返回首页</a></div>
</div>
</body>
</html>