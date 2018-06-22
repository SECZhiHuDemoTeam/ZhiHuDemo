<%@ page import="edu.nju.zhihudemo.model.People" %><%--
  Created by IntelliJ IDEA.
  User: zjy
  Date: 2018/6/21
  Time: 10:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<% People people = (People) request.getAttribute("peopleMessage"); %>
<head>
    <meta charset="utf-8">
    <title>知乎Demo-发现更大的世界</title>

    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
</head>
<body>
<div class="box-container">
    <div class="box-content">
        <div>
            <h1 class="title-huge">知乎Demo</h1>
        </div>
        <div>
            <form action="/login" method="post" style="padding: 0 40px 36px;" >
                <div class="SignFlow">
                    <input type="text" class="Input" name="username" placeholder="用户名">
                </div>
                <div class="SignFlow">
                    <input type="password" class="Input" name="password" placeholder="密码">
                </div>
                <button type="submit" class="Button SignFlow-submitButton Button--primary Button--blue">登录</button>
            </form>
        </div>
    </div>
</div>
</body>
</html>
