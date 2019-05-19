<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="/view/images/logo_icon.png" type="image/png">
    <title>主页</title>
    <link href="/view/css/style.css" rel="stylesheet">
    <link href="/view/css/style-responsive.css" rel="stylesheet">
    <script src="/view/js/html5shiv.js"></script>
    <script src="/view/js/respond.min.js"></script>
</head>
<body>
<!-- 头部导航栏-->
<div class="header-section">
    <div class="container">
        <a class="toggle-btn"><i class=""><img src="/view/images/logo_icon.png"></i>重庆市文化市场执法办公系统</a>
        <div class="menu-right">
            <ul class="notification-menu">
                <li>
                    <a href="#" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        <img src="/view/images/photos/user-avatar.png" alt=""/>
                        <span>系统管理员</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu dropdown-menu-usermenu pull-right">
                        <li><a href="index.jsp"><i class="fa fa-user"></i> 返回面板</a></li>
                        <li><a href="#" class="layout"><i class="fa fa-sign-out"></i> 退出登录</a></li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>
</div>
<div class="container">
    <section>
        <!-- 主体内容-->
        <div class="main-content">
            <!--面板-->
            <div class="wrapper">
                <div class="row state-overview" id="state-overview">
                        <c:forEach items="${data}" var="item" varStatus="status">
                            <div class="col-md-3 col-xs-12 col-sm-3">
                                <a href="/web/page/html/${item.url}/">
                                    <div class="panel">
                                        <div class="symbol">
                                            <i class="fa fa-leaf"></i>
                                        </div>
                                        <div class="state-value">
                                            <div class="value">
                                                <p>${item.name}</p>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </c:forEach>
                </div>
            </div>
        </div>
    </section>
</div>
<!--底部-->
<footer>
    2019 &copy; 重庆市文化市场执法系统
</footer>
<script src="/view/js/jquery-1.10.2.min.js"></script>
<script src="/view/js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="/view/js/bootstrap.min.js"></script>
<script src="/view/js/template.js"></script>
<script src="/view/js/layer/layer.js"></script>
<script>
    //document.getElementById("state-overview").innerHTML = html;
    /*$.ajax({
        url: "json/index.json",
        type: 'get',
        dataType: "json",
        success: function (res) {
            var html = template("index-list", res);
            document.getElementById("state-overview").innerHTML = html;
        },
        error: function () {

        }
    });*/
    // 退出登录
    $('.layout').on('click', function () {
        $.ajax({
            url: 'json/submit.json',
            type: 'get',
            data: '',
            dataType: "json",
            beforeSend: function () {
                //do something
            },
            success: function (data) {
                //do something
                if (data.code == 0) {
                    layer.confirm('确定要退出登录？', {
                        skin: 'demo-class',
                        shade: 0.6,
                        btn: ['确定', '取消'] //按钮
                        , yes: function () {
                            window.location.href = 'login.html';
                        }
                    });
                } else {
                    layer.msg('退出失败');
                }
            },
            error: function (data) {
                //do something
                layer.msg('与服务器连接失败', {icon: 2});
            }
        });
        return false;
    });
</script>
</body>
</html>
