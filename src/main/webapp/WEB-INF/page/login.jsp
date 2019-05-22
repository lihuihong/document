<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2018/12/12
  Time: 10:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>登录页</title>
    <link rel="stylesheet" href="/resources/layui/css/layui.css">
    <link rel="stylesheet" href="/resources/frame/css/style.css">
</head>
<body class="login-body">

<div class="login-main">
    <header class="layui-elip">登录</header>
    <form class="layui-form" method="post">
        <div class="layui-input-inline">
            <input type="text" name="name" required lay-verify="required" placeholder="用户名" autocomplete="off"
                   class="layui-input">
        </div>
        <div class="layui-input-inline">
            <input type="password" name="password" required lay-verify="required" placeholder="密码" autocomplete="off"
                   class="layui-input">
        </div>
        <div class="layui-input-inline login-btn">
            <button lay-submit lay-filter="login" class="layui-btn">登录</button>
        </div>
        <hr/>

    </form>
</div>
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script src="/resources/layui/layui.js"></script>


<script type="text/javascript">
    layui.use(['form', 'layer', 'jquery'], function () {
        var form = layui.form;
        var $ = layui.jquery;
        //监听提交
        form.on('submit(login)', function (data) {
            $.ajax({
                url: "/user/login",
                dataType: "json",
                type: "POST",
                data: data.field,
                success: function (data) {
                    if (data.code === 0) {
                        if (data.data.type === "1"){
                            layer.msg("该用户不是管理员")
                        } else {
                            layer.msg("登录成功，正在跳转。。。")
                            setTimeout(function () {
                                window.location.href = "${pageContext.request.contextPath}/web/page/main";
                            },2000)
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
    });

</script>
</body>
</html>
