<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="/view/images/logo_icon.png" type="image/png">
    <title>登录</title>
    <link href="/view/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="/resources/layui/css/layui.css">
    <style>
        .form-login {
            background-color: #fff !important;
            text-align: center;
            margin: 20% auto;
            width: 400px;
            border-radius: 5px;
            padding: 60px 0px;

        }

        .layui-input-block {
            margin: 20px auto;
            border-radius: 5px;
        }

        .layui-input {
            border-radius: 50px;
            text-indent: 20px;
        }
        .register{display: block;position: relative}
        .registration{position: absolute;left: 0px}
        .admin1{position: absolute;right: 0px;}
        .login-btn button{border-radius: 2px}
        .layui-form-label{padding: 9px 4px}
        .layui-layer-btn{text-align: center!important;}

    </style>
</head>
<body class="login-body">
<div class="container">
    <form class="layui-form form-login" method="post">
        <div class="form-signin-heading text-center">
            <h1 class="sign-title">登 录</h1>
            <img src="/view/images/login-logo.png" alt=""/>
        </div>
        <div class="login-wrap">
            <div class="layui-input-block">
                <input type="text" name="name" required lay-verify="required" placeholder="用户名" autocomplete="off"
                       class="layui-input">
            </div>
            <div class="layui-input-block">
                <input type="password" name="password" required lay-verify="required" placeholder="密码"
                       autocomplete="off"
                       class="layui-input">
            </div>
            <p class="tips"></p>
            <div class="layui-input-inline login-btn">
                <button type="button" lay-submit lay-filter="login" class="layui-btn">登录</button>
                <button type="button" class="layui-btn" id="personalPassword" class="layui-btn">注册</button>
            </div>
            <div class="register">
                <div class="registration">
                    <a class="forget" href="#" style="color: #6bc5a4">忘记密码？</a>
                </div>
                <div class="admin1" style="margin-top: 15px;">
                    <a class="admin" href="#" style="color: #6bc5a4">后台管理</a>
                </div>
            </div>
        </div>
    </form>
</div>
<script src="/view/js/jquery-1.10.2.min.js"></script>
<script src="/view/js/bootstrap.min.js"></script>
<script src="/view/js/modernizr.min.js"></script>
<script src="/view/js/jquery-validation/jquery.validate.min.js"></script>
<script src="/view/js/jquery-validation/messages_zh.js"></script>
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script src="/resources/layui/layui.js"></script>
<script>

    layui.use(['form', 'layer', 'jquery'], function () {
        var form = layui.form;
        var $ = layui.jquery;
        var layer = layui.layer;
        form.on('submit(login)', function (data) {
            $.ajax({
                url: "/user/login",
                dataType: "json",
                type: "post",
                data: data.field,
                success: function (data) {
                    if (data.code === 0) {
                        if (data.data.type === "0") {
                            layer.msg("登录成功，正在跳转。。。")
                            window.location.href = "${pageContext.request.contextPath}/web/page/main";
                        } else {
                            layer.msg("登录成功，正在跳转。。。")
                            setTimeout(function () {
                                window.location.href = "${pageContext.request.contextPath}/typeInfo/typeListView";
                            }, 2000)
                        }
                    } else {
                        layer.msg("账号或密码错误")
                    }
                },
                error: function () {
                    layer.msg("账号或密码错误")
                }
            });
            return false;
        })
        $("#personalPassword").on('click', function () {
            var index = layer.confirm('<form class="layui-form" style=""><div class="layui-form-item"><label class="layui-form-label">用户名：</label><div class="layui-input-inline"><input type="text" class="layui-input" id="name" name="name" /></div></div><div class="layui-form-item"><label class="layui-form-label">密码：</label><div class="layui-input-inline"><input type="password" class="layui-input" id="password" name="password" /></div></div><div class="layui-form-item"><label class="layui-form-label">确认密码：</label><div class="layui-input-inline"><input type="password" class="layui-input" id="new2" name="new2"  /></div></div><div style="text-align:center;color:rgb(204,0,0)" id="tip"></div><button class="layui-btn btnSubmit" style="display:none" lay-submit lay-filter="*"></button></form>', {title: '注册'}, function (index) {
                //do something
                var name = $('#name').val();
                var password = $('#password').val();
                var new2 = $('#new2').val();
                form.on('submit(*)', function (data) {
                    // console.log(data.field);
                    $.post("/user/add", data.field, function (d) {
                        if (d.code === 0) {
                            layer.close(index);
                            layer.msg(d.msg, {icon: 1});
                            setTimeout(function () {
                                window.location.href = "${pageContext.request.contextPath}/typeInfo/typeListView";
                            }, 2000)
                        } else {
                            $('#tip').html(d.msg);
                        }
                    });
                    return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
                });

                if (name == '') {
                    $('#tip').html('请输入有效字符');
                    $('#name').focus();
                } else if (password == '') {
                    $('#tip').html('请输入有效字符');
                    $('#password').focus();
                } else if (new2 == '') {
                    $('#tip').html('请输入有效字符');
                    $('#new2').focus();
                } else {
                    if (password != new2) {
                        $('#tip').html('您输入的两次密码不一致！');
                        $('#new2').focus();
                        //return false;
                    } else {
                        $('#tip').html('');
                        $('.btnSubmit').trigger('click');
                    }
                }
                return false;
            });
        });
    });


    //忘记密码
    $('.forget').on('click', function () {
        //询问框
        layer.confirm('忘记密码？请找管理员。', {
            skin: 'demo-class',
            btn: ['确定', '取消'] //按钮

        });
    })
    $('.admin').on('click', function () {
        window.location.href = "${pageContext.request.contextPath}/web/page/login";
    })
</script>
</body>
</html>
