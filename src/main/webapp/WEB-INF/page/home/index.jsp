<%--
  Created by IntelliJ IDEA.
  User: 那个谁
  Date: 2019/1/10
  Time: 19:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>layuiAdmin 控制台主页一</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=0">
    <link rel="stylesheet" href="/resources/layuiadmin/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/resources/layuiadmin/style/admin.css" media="all">
    <script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
    <script src="/resources/layui/layui.js"></script>
    <script src="/resources/js/main.js" charset="utf-8"></script>
</head>
<body>

<div class="layui-fluid">
    <div class="layui-row layui-col-space15">
        <div class="layui-col-md12">
            <div class="layui-row layui-col-space15">
                <div class="layui-col-md8">
                    <%--<div class="layui-card">
                        <div class="layui-card-header">快捷菜单</div>
                        <div class="layui-card-body">
                            <div class="layui-carousel layadmin-carousel layadmin-shortcut">
                                <div carousel-item>
                                    <ul class="layui-row layui-col-space10">
                                        <li class="layui-col-xs3">
                                            <a href="/web/page/user/userManage">
                                                <i class="layui-icon layui-icon-console"></i>
                                                <cite>用户管理</cite>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs3">
                                            <a href="/web/page/equ/equList">
                                                <i class="layui-icon layui-icon-chart"></i>
                                                <cite>审核资质</cite>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs3">
                                            <a href="/web/page/part/partsList">
                                                <i class="layui-icon layui-icon-template-1"></i>
                                                <cite>设备配件管理</cite>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs3">
                                            <a href="/web/page/repair/repairList">
                                                <i class="layui-icon layui-icon-chat"></i>
                                                <cite>维修管理</cite>
                                            </a>
                                        </li>
                                        <li class="layui-col-xs3">
                                            <a href="/web/page/user/roleManage">
                                                <i class="layui-icon layui-icon-find-fill"></i>
                                                <cite>用户权限管理</cite>
                                            </a>
                                        </li>
                                    </ul>

                                </div>
                            </div>

                        </div>
                    </div>
                </div>--%>
                <div class="layui-col-md4">
                    <div class="layui-card">
                        <div class="layui-card-header">版本信息</div>
                        <div class="layui-card-body layui-text">
                            <table class="layui-table">
                                <colgroup>
                                    <col width="100">
                                    <col>
                                </colgroup>
                                <tbody>
                                <tr>
                                    <td>当前版本</td>
                                    <td>
                                        <script type="text/html" template>
                                            资质管理 系统后台管理 v1.0.0
                                        </script>
                                    </td>
                                </tr>
                                <tr>
                                    <td>基于框架</td>
                                    <td>
                                        <script type="text/html" template>
                                            layui-v{{ layui.v }}
                                        </script>
                                    </td>
                                </tr>
                                <tr>
                                    <td>主要特色</td>
                                    <td>零门槛 / 响应式 / 清爽 / 极简</td>
                                </tr>
                                <tr>
                                    <td>获取渠道</td>
                                    <td style="padding-bottom: 0;">
                                        <div class="layui-btn-container">

                                        </div>
                                    </td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                    </div>

                </div>


            </div>
        </div>


    </div>
</div>

<script src="/resources/layuiadmin/layui/layui.js?t=1"></script>
<script>
    layui.config({
        base: '/resources/layuiadmin/' //静态资源所在路径
    }).extend({
        index: 'lib/index' //主入口模块
    }).use(['index', 'console']);
</script>
</body>
</html>


