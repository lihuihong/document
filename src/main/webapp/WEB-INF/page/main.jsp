<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/1/4
  Time: 10:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>管理系统</title>
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/resources/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/resources/css/main.css" media="all">
</head>
<body>
<div class="layui-layout">
    <!-- 头部区域 -->
    <div class="layui-header">
        <ul class="box">
            <li class="header-left">
                <a href="javascript:;" class="btnHeader flexible" title="侧边伸缩">
                    <i class="layui-icon layui-icon-shrink-right"></i>
                </a>
                <a href="javascript:;" class="btnHeader refresh" title="刷新">
                    <i class="layui-icon layui-icon-refresh-3"></i>
                </a>
            </li>
            <li class="header-right">
				<span class="navHeader">
					<div class="layui-nav">
						<div class="layui-nav-item">
							<a href="javascript:;">
								<cite>${sessionScope.userInfo.name}</cite>
							</a>
							<dl class="layui-nav-child">
								<dd><a id="personalPassword">修改密码</a></dd>
							</dl>
						</div>
					</div>
				</span>
                <a href="javascript:;" class="btnHeader logout" id="out">安全退出</a>
            </li>
        </ul>
    </div>
    <!-- 侧边菜单 -->
    <div class="layui-side">
        <div class="layui-side-scroll">
            <div class="layui-logo" lay-href="html/index.html">
                <img src="/images/logo.png" style="width:40px;margin:10px"/>
                <span>管理系统</span>
            </div>
            <ul class="layui-nav layui-nav-tree" lay-filter="nav">
                <li data-name="home" class="layui-nav-item layui-this">
                    <a href="javascript:;" lay-href="/web/page/home/index" class="nav-tab" lay-id="home"
                       data-type="tabChange" lay-tips="控制台">
                        <i class="layui-icon layui-icon-theme"></i><label>控制台</label>
                    </a>
                </li>
                <li data-name="template" class="layui-nav-item">
                    <a href="javascript:;" lay-tips="分类管理">
                        <i class="layui-icon layui-icon-util"></i><label>分类管理</label>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a lay-href="/web/page/show/typeList" class="nav-tab" lay-id="1" data-type="tabAdd">
                                <i class="layui-icon"></i><label>分类管理</label>
                            </a>
                        </dd>
                    </dl>
                </li>
                <li data-name="template" class="layui-nav-item">
                    <a href="javascript:;" lay-tips="网吧管理">
                        <i class="layui-icon layui-icon-util"></i><label>网吧管理</label>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a lay-href="/web/page/netba/situationList" class="nav-tab" lay-id="12" data-type="tabAdd">
                                <i class="layui-icon"></i><label>单位管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/netba/alterationList" class="nav-tab" lay-id="16" data-type="tabAdd">
                                <i class="layui-icon"></i><label>变更情况管理</label>
                            </a>
                        </dd>
                    </dl>
                </li>
                <li data-name="template" class="layui-nav-item">
                    <a href="javascript:;" lay-tips="歌舞娱乐场所管理">
                        <i class="layui-icon layui-icon-util"></i><label>歌舞娱乐场所管理</label>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a lay-href="/web/page/sing/situationList" class="nav-tab" lay-id="77" data-type="tabAdd">
                                <i class="layui-icon"></i><label>单位管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/sing/alterationList" class="nav-tab" lay-id="78" data-type="tabAdd">
                                <i class="layui-icon"></i><label>变更情况管理</label>
                            </a>
                        </dd>
                    </dl>
                </li>
                <li data-name="template" class="layui-nav-item">
                    <a href="javascript:;" lay-tips="游艺娱乐场所管理">
                        <i class="layui-icon layui-icon-util"></i><label>游艺娱乐场所管理</label>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a lay-href="/web/page/places/situationList" class="nav-tab" lay-id="79" data-type="tabAdd">
                                <i class="layui-icon"></i><label>单位管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/places/alterationList" class="nav-tab" lay-id="80" data-type="tabAdd">
                                <i class="layui-icon"></i><label>变更情况管理</label>
                            </a>
                        </dd>
                    </dl>
                </li>
                <li data-name="template" class="layui-nav-item">
                    <a href="javascript:;" lay-tips="音像管理">
                        <i class="layui-icon layui-icon-util"></i><label>音像管理</label>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a lay-href="/web/page/audio/typeList" class="nav-tab" lay-id="81" data-type="tabAdd">
                                <i class="layui-icon"></i><label>分类管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/audio/situationList" class="nav-tab" lay-id="82" data-type="tabAdd">
                                <i class="layui-icon"></i><label>单位管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/audio/alterationList" class="nav-tab" lay-id="83" data-type="tabAdd">
                                <i class="layui-icon"></i><label>变更情况管理</label>
                            </a>
                        </dd>
                    </dl>
                </li>
                <li data-name="template" class="layui-nav-item">
                    <a href="javascript:;" lay-tips="电影管理">
                        <i class="layui-icon layui-icon-util"></i><label>电影管理</label>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a lay-href="/web/page/video/typeList" class="nav-tab" lay-id="84" data-type="tabAdd">
                                <i class="layui-icon"></i><label>分类管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/video/situationList" class="nav-tab" lay-id="85" data-type="tabAdd">
                                <i class="layui-icon"></i><label>单位管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/video/alterationList" class="nav-tab" lay-id="86" data-type="tabAdd">
                                <i class="layui-icon"></i><label>变更情况管理</label>
                            </a>
                        </dd>
                    </dl>
                </li>
                <li data-name="template" class="layui-nav-item">
                    <a href="javascript:;" lay-tips="营业性演出管理">
                        <i class="layui-icon layui-icon-util"></i><label>营业性演出管理</label>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a lay-href="/web/page/business/typeList" class="nav-tab" lay-id="87" data-type="tabAdd">
                                <i class="layui-icon"></i><label>分类管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/business/situationList" class="nav-tab" lay-id="88" data-type="tabAdd">
                                <i class="layui-icon"></i><label>单位管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/business/alterationList" class="nav-tab" lay-id="89" data-type="tabAdd">
                                <i class="layui-icon"></i><label>变更情况管理</label>
                            </a>
                        </dd>
                    </dl>
                </li>
                <li data-name="template" class="layui-nav-item">
                    <a href="javascript:;" lay-tips="印刷企业管理">
                        <i class="layui-icon layui-icon-util"></i><label>印刷企业管理</label>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a lay-href="/web/page/enterprise/typeList" class="nav-tab" lay-id="90" data-type="tabAdd">
                                <i class="layui-icon"></i><label>分类管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/enterprise/situationList" class="nav-tab" lay-id="91" data-type="tabAdd">
                                <i class="layui-icon"></i><label>单位管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/enterprise/alterationList" class="nav-tab" lay-id="92" data-type="tabAdd">
                                <i class="layui-icon"></i><label>变更情况管理</label>
                            </a>
                        </dd>
                    </dl>
                </li>
                <li data-name="template" class="layui-nav-item">
                    <a href="javascript:;" lay-tips="出版物管理">
                        <i class="layui-icon layui-icon-util"></i><label>出版物管理</label>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a lay-href="/web/page/publication/typeList" class="nav-tab" lay-id="93" data-type="tabAdd">
                                <i class="layui-icon"></i><label>分类管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/publication/situationList" class="nav-tab" lay-id="94" data-type="tabAdd">
                                <i class="layui-icon"></i><label>单位管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/publication/alterationList" class="nav-tab" lay-id="95" data-type="tabAdd">
                                <i class="layui-icon"></i><label>变更情况管理</label>
                            </a>
                        </dd>
                    </dl>
                </li>
                <li data-name="template" class="layui-nav-item">
                    <a href="javascript:;" lay-tips="广播电视管理">
                        <i class="layui-icon layui-icon-util"></i><label>广播电视管理</label>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a lay-href="/web/page/radio/situationList" class="nav-tab" lay-id="96" data-type="tabAdd">
                                <i class="layui-icon"></i><label>单位管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/radio/alterationList" class="nav-tab" lay-id="97" data-type="tabAdd">
                                <i class="layui-icon"></i><label>变更情况管理</label>
                            </a>
                        </dd>
                    </dl>
                </li>
                <li data-name="template" class="layui-nav-item">
                    <a href="javascript:;" lay-tips="卫星地面接收管理">
                        <i class="layui-icon layui-icon-util"></i><label>卫星地面接收管理</label>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a lay-href="/web/page/management/situationList" class="nav-tab" lay-id="98" data-type="tabAdd">
                                <i class="layui-icon"></i><label>单位管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/management/alterationList" class="nav-tab" lay-id="99" data-type="tabAdd">
                                <i class="layui-icon"></i><label>变更情况管理</label>
                            </a>
                        </dd>
                    </dl>
                </li>
                <li data-name="template" class="layui-nav-item">
                    <a href="javascript:;" lay-tips="互联网站管理">
                        <i class="layui-icon layui-icon-util"></i><label>互联网站管理</label>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a lay-href="/web/page/Internet/situationList" class="nav-tab" lay-id="100" data-type="tabAdd">
                                <i class="layui-icon"></i><label>单位管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/Internet/alterationList" class="nav-tab" lay-id="101" data-type="tabAdd">
                                <i class="layui-icon"></i><label>变更情况管理</label>
                            </a>
                        </dd>
                    </dl>
                </li>
                <li data-name="template" class="layui-nav-item">
                    <a href="javascript:;" lay-tips="书（店）报摊管理">
                        <i class="layui-icon layui-icon-util"></i><label>书（店）报摊管理</label>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a lay-href="/web/page/book/situationList" class="nav-tab" lay-id="102" data-type="tabAdd">
                                <i class="layui-icon"></i><label>单位管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/book/alterationList" class="nav-tab" lay-id="103" data-type="tabAdd">
                                <i class="layui-icon"></i><label>变更情况管理</label>
                            </a>
                        </dd>
                    </dl>
                </li>
                <li data-name="template" class="layui-nav-item">
                    <a href="javascript:;" lay-tips="文物管理">
                        <i class="layui-icon layui-icon-util"></i><label>文物管理</label>
                    </a>
                    <dl class="layui-nav-child">
                        <dd>
                            <a lay-href="/web/page/cultural/situationList" class="nav-tab" lay-id="104" data-type="tabAdd">
                                <i class="layui-icon"></i><label>单位管理</label>
                            </a>
                        </dd>
                        <dd>
                            <a lay-href="/web/page/cultural/alterationList" class="nav-tab" lay-id="105" data-type="tabAdd">
                                <i class="layui-icon"></i><label>变更情况管理</label>
                            </a>
                        </dd>
                    </dl>
                </li>
                <li data-name="template" class="layui-nav-item">
                <a href="javascript:;" lay-tips="其他管理">
                    <i class="layui-icon layui-icon-util"></i><label>其他管理</label>
                </a>
                <dl class="layui-nav-child">
                    <dd>
                        <a lay-href="/web/page/representative/list" class="nav-tab" lay-id="3" data-type="tabAdd">
                            <i class="layui-icon"></i><label>法律代表管理</label>
                        </a>
                    </dd>
                    <dd>
                        <a lay-href="/web/page/punishment/list" class="nav-tab" lay-id="4" data-type="tabAdd">
                            <i class="layui-icon"></i><label>受处罚情况管理</label>
                        </a>
                    </dd>
                    <dd>
                        <a lay-href="/web/page/document/list" class="nav-tab" lay-id="5" data-type="tabAdd">
                            <i class="layui-icon"></i><label>其他审批文件管理</label>
                        </a>
                    </dd>
                </dl>
            </li>
            </ul>
        </div>
    </div>
    <!-- 主体内容 -->
    <div class="layui-bodier">
        <div class="layui-tab" lay-filter="tab" lay-allowClose="true">
            <ul class="layui-tab-title">
                <li class="firstTab layui-this" lay-id="home">控制台</li>
            </ul>
            <div class="layui-tab-content">
                <div class="layui-tab-item layui-show">
                    <iframe src="/web/page/home/index" frameborder="0" name="tabFrame" class="tabFrame"></iframe>
                </div>
            </div>
        </div>
    </div>
    <!-- 版权信息 -->
    <div class="layui-footer">
        <span>管理系统  Copyright  ©资质管理系统</span>
    </div>
</div>
</body>
<script src="http://libs.baidu.com/jquery/2.1.4/jquery.min.js"></script>
<script src="/resources/layui/layui.js"></script>
<script src="/resources/js/main.js" charset="utf-8"></script>
<script>
    layui.use(['form', 'jquery', 'layer'], function () {
        var form = layui.form;
        var $ = layui.jquery;
        var layer = layui.layer;
        $("#out").click(function () {
            $.ajax({
                url: '/user/logout',
                type: 'get',
                //验证用户名是否可用
                success: function (data) {
                    if (data.code === 0) {
                        layer.msg("退出成功")
                        setTimeout(function () {
                            window.location.href = "${pageContext.request.contextPath}/web/page/login";
                        }, 1000);
                    } else {
                        layer.msg(data.message)
                    }

                }
            })
        })
        $("#personalPassword").on('click', function () {
            var index = layer.confirm('<form class="layui-form" style=""><div class="layui-form-item"><label class="layui-form-label">旧密码：</label><div class="layui-input-inline"><input type="password" class="layui-input" id="old" name="password" /></div></div><div class="layui-form-item"><label class="layui-form-label">新密码：</label><div class="layui-input-inline"><input type="password" class="layui-input" id="newPassword" name="newPassword" lay-verify="pass1"/></div></div><div class="layui-form-item"><label class="layui-form-label">确认密码：</label><div class="layui-input-inline"><input type="password" class="layui-input" id="new2" name="new2" lay-verify="pass2" /></div></div><div style="text-align:center;color:rgb(204,0,0)" id="tip"></div><button class="layui-btn btnSubmit" style="display:none" lay-submit lay-filter="*"></button></form>', {title: '修改登录密码'}, function (index) {
                //do something
                var old = $('#old').val();
                var new1 = $('#newPassword').val();
                var new2 = $('#new2').val();
                form.on('submit(*)', function (data) {
                    // console.log(data.field);
                    $.post("/user/updatePwd", data.field, function (d) {
                        if (d.code === 0) {
                            layer.close(index);
                            layer.alert('修改成功！', {icon: 1});
                        } else {
                            $('#tip').html(d.msg);
                        }
                    });
                    return false; //阻止表单跳转。如果需要表单跳转，去掉这段即可。
                });

                form.verify({
                    pass1: function (value, item) {
                        if (value.length < 8 || value.length > 16) {
                            return "密码长度为8-16位!";
                        }
                    },
                    pass2: function (value, item) {
                        if (value.length < 8 || value.length > 18) {
                            return "密码长度为8-16位!";
                        }
                    }
                })
                if (old == '') {
                    $('#tip').html('请输入有效字符');
                    $('#old').focus();
                } else if (new1 == '' && new1.length) {
                    $('#tip').html('请输入有效字符');
                    $('#new1').focus();
                } else if (new2 == '') {
                    $('#tip').html('请输入有效字符');
                    $('#new2').focus();
                } else {
                    if (old == new1) {
                        $('#tip').html('新密码不能和旧密码一致！');
                        $('#new1').focus();
                    } else if (new1 != new2) {
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


</script>
</html>
