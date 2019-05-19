<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="/view/images/logo_icon.png" type="image/png">
    <title>主页-营业性演出</title>
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
                        <li><a href="/view/index.html"><i class="fa fa-user"></i> 返回面板</a></li>
                        <li><a href="#" class="layout"><i class="fa fa-sign-out"></i> 退出登录</a></li>
                    </ul>
                </li>

            </ul>
        </div>
    </div>
</div>
<div class="container main">
    <div class="row">
        <div class="col-lg-3 col-md-3 col-sm-3">
            <div class="left-side sticky-left-side">
                <div class="left-side-inner">
                    <ul class="nav nav-pills nav-stacked custom-nav">
                        <li class="active"><a href="/web/page/html/businessNature/businessNature_basic " target="myIframe"><i class="fa  fa-arrow-circle-o-right"></i> <span>单位经营情况</span></a></li>
                        <li><a href="/web/page/html/businessNature/businessNature_legal " target="myIframe"><i class="fa  fa-arrow-circle-o-right"></i> <span>法定代表人</span></a></li>
                        <li><a href="/web/page/html/businessNature/businessNature_person " target="myIframe"><i class="fa  fa-arrow-circle-o-right"></i> <span>负责人</span></a></li>
                        <li><a href="/web/page/html/businessNature/businessNature_approval " target="myIframe"><i class="fa  fa-arrow-circle-o-right"></i> <span>其他审批文件</span></a></li>
                        <li><a href="/web/page/html/businessNature/businessNature_punished " target="myIframe"><i class="fa  fa-arrow-circle-o-right"></i> <span>受处罚情况</span></a></li>
                        <li><a href="/web/page/html/businessNature/businessNature_change " target="myIframe"><i class="fa  fa-arrow-circle-o-right"></i> <span>变更情况</span></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="col-lg-9 col-md-9 col-sm-9">
            <div class="main-content">
                <section class="wrapper1">
                    <iframe src="/web/page/html/businessNature/businessNature_basic " id="external-frame" name="myIframe" frameborder="0" width="100%" height="100%"></iframe>
                </section>
            </div>
        </div>
    </div>
</div>
<!--底部-->
<footer>
    2019 &copy; 重庆市文化市场执法系统
</footer>
<script src="/view/js/jquery-1.10.2.min.js"></script>
<script src="/view/js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="/view/js/bootstrap.min.js"></script>
<script src="/view/js/main.js"></script>
<script src="/view/js/layer/layer.js"></script>
</body>
</html>
