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
    <title>知乎Demo-<%= people.getName()%></title>

    <link rel="stylesheet" type="text/css" href="/css/style.css"/>
</head>
<body>
<div>

    <div class="ProfileEdit">
        <div class="Card">
            <div style="height: 50px;">

            </div>
            <div class="ProfileHeader-main">
                <div>
                    <div class="UserAvatarEditor ProfileHeader-avatar">
                        <div class="UserAvatar">
                            <img width="160" height="160" src="/image/avatar.jpg">
                        </div>
                        <div class="Mask">
                            <div class="Mask-mask Mask-mask--black UserAvatarEditor-maskInner">
                            </div>
                            <div class="Mask-content">
                                <svg class="UserAvatarEditor-cameraIcon" fill="currentColor" viewBox="0 0 24 24" width="36" height="36">
                                    <path d="M20.094 6S22 6 22 8v10.017S22 20 19 20H4.036S2 20 2 18V7.967S2 6 4 6h3s1-2 2-2h6c1 0 2 2 2 2h3.094zM12 16a3.5 3.5 0 1 1 0-7 3.5 3.5 0 0 1 0 7zm0 1.5a5 5 0 1 0-.001-10.001A5 5 0 0 0 12 17.5zm7.5-8a1 1 0 1 0 0-2 1 1 0 0 0 0 2z" fill-rule="evenodd">
                                    </path>
                                </svg>
                                <div class="UserAvatarEditor-maskInnerText">
                                    修改我的头像
                                </div>
                            </div>
                        </div>
                        <input type="file" accept="image/png,image/jpeg" style="display: none;">
                    </div>
                </div>
                <div class="ProfileHeader-content">
                    <div class="ProfileHeader-contentHead">
                        <h1 class="ProfileHeader-title">
                            <div class="FullnameField-editable">
                                <span class="FullnameField-name"><%= people.getName()%></span>
                                <button type="button" class="Button ModifyButton Field-modify Field-modify-hidden Button--link">
                                    修改
                                </button>
                            </div>
                        </h1>
                        <div class="ProfileHeader-expandActions ProfileEdit-expandActions">
                            <a type="button" class="Button Button--plain" href="#">
                                返回我的主页
                            </a>
                        </div>
                    </div>
                    <div class="ProfileEdit-fields">
                        <form class="Field">
                            <h3 class="Field-label">性别</h3>
                            <div class="Field-content">
                                <div>
                                    <span><%= people.getSex()%></span>
                                    <button type="button" class="Button ModifyButton Field-modify Field-modify-hidden Button--link">
                                        修改
                                    </button>
                                </div>
                            </div>
                        </form>
                        <form class="Field">
                            <h3 class="Field-label">一句话介绍</h3>
                            <div class="Field-content">
                                <div>
                                    <span><%= people.getIntroduction()%></span>
                                    <button type="button" class="Button ModifyButton Field-modify Field-modify-hidden Button--link">
                                        修改
                                    </button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<script src="/js/avatar.js"></script>
</body>
</html>
