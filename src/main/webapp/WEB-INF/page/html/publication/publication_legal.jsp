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
    <title>出版物-法定代表人</title>
    <link href="/view/css/style.css" rel="stylesheet">
    <link href="/view/css/style-responsive.css" rel="stylesheet">
    <script src="/view/js/html5shiv.js"></script>
    <script src="/view/js/respond.min.js"></script>
    <!--选框样式-->
    <link href="/view/js/iCheck/skins/minimal/minimal.css" rel="stylesheet">
    <link href="/view/js/iCheck/skins/minimal/red.css" rel="stylesheet">
    <link href="/view/js/iCheck/skins/minimal/green.css" rel="stylesheet">
    <link href="/view/js/iCheck/skins/minimal/blue.css" rel="stylesheet">
    <link href="/view/js/iCheck/skins/minimal/yellow.css" rel="stylesheet">
    <link href="/view/js/iCheck/skins/minimal/purple.css" rel="stylesheet">

    <link href="/view/js/iCheck/skins/square/square.css" rel="stylesheet">
    <link href="/view/js/iCheck/skins/square/red.css" rel="stylesheet">
    <link href="/view/js/iCheck/skins/square/green.css" rel="stylesheet">
    <link href="/view/js/iCheck/skins/square/blue.css" rel="stylesheet">
    <link href="/view/js/iCheck/skins/square/yellow.css" rel="stylesheet">
    <link href="/view/js/iCheck/skins/square/purple.css" rel="stylesheet">

    <link href="/view/js/iCheck/skins/flat/grey.css" rel="stylesheet">
    <link href="/view/js/iCheck/skins/flat/red.css" rel="stylesheet">
    <link href="/view/js/iCheck/skins/flat/green.css" rel="stylesheet">
    <link href="/view/js/iCheck/skins/flat/blue.css" rel="stylesheet">
    <link href="/view/js/iCheck/skins/flat/yellow.css" rel="stylesheet">
    <link href="/view/js/iCheck/skins/flat/purple.css" rel="stylesheet">
    <!--文件上传-->
    <link rel="stylesheet" type="text/css" href="/view/css/bootstrap-fileupload.min.css"/>
    <!--时间控件样式-->
    <link rel="stylesheet" type="text/css" href="/view/js/bootstrap-datepicker/css/datepicker-custom.css" />
    <link rel="stylesheet" type="text/css" href="/view/js/bootstrap-timepicker/css/timepicker.css" />
    <link rel="stylesheet" type="text/css" href="/view/js/bootstrap-colorpicker/css/colorpicker.css" />
    <link rel="stylesheet" type="text/css" href="/view/js/bootstrap-daterangepicker/daterangepicker-bs3.css" />
    <link rel="stylesheet" type="text/css" href="/view/js/bootstrap-datetimepicker/css/datetimepicker-custom.css" />
</head>
<body>
<div class="row" style="margin: 0px;padding: 0px">
    <section class="panel">
        <header class="panel-heading">
            <span>法定代表人</span>
        </header>
        <div class="panel-body">
            <form class="form-horizontal" role="form" id="form">
                <input type="hidden" name="typeInfoId" value="8">
                <input type="hidden" name="alias" value="0">
                <div class="col-lg-6 col-sm-6 col-md-6">
                    <div class="form-group">
                        <label for="name" class="col-lg-3 col-sm-3 col-md-3  control-label" title="姓名">姓名</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="hidden" class="form-control" id="id" name="id" placeholder="id">
                            <input type="text" class="form-control" id="name" name="name"
                                   placeholder="请输入姓名">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="sex" class="col-lg-3 col-sm-3 col-sm-3  control-label" title="性别">性别</label>
                        <div class="col-lg-9 col-sm-9 col-md-9 icheck">
                            <div class="square-green single-row" id="sex">
                                <div class="checkbox">
                                    <input type="radio" name="sex" checked value="1">
                                    <label>男</label>
                                </div>
                                <div class="checkbox">
                                    <input type="radio" name="sex" value="2">
                                    <label>女</label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="translate" class="col-lg-3 col-sm-3 col-md-3 control-label">民族</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="translate" name="translate" placeholder="汉">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="birth" class="col-lg-3 col-sm-3 col-md-3 control-label">出生年月</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control default-date-picker1" id="birth" name="birth"
                                   placeholder="请输入出生年月 yyyy-mm">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="politicalOutlook" class="col-lg-3 col-sm-3  col-md-3 control-label">政治面貌</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <select class="form-control" id="politicalOutlook" name="politicalOutlook">
                                <option value="" selected="selected">请选择政治面貌</option>
                                <option value="1" >群众</option>
                                <option value="2">团员</option>
                                <option value="3">党员</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="degree" class="col-lg-3 col-sm-3  col-md-3 control-label"> 学历</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <select class="form-control" id="degree" name="degree">
                                <option value="" selected="selected">请选择学历</option>
                                <option value="1">小学</option>
                                <option value="2">初中</option>
                                <option value="3">高中</option>
                                <option value="4">大学</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="address" class="col-lg-3 col-sm-3 col-md-3 control-label" title="住址"> 住址</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="address" name="address"
                                   placeholder="请输入住址">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="idcard" class="col-lg-3 col-sm-3 col-md-3 control-label" title="身份证号码">身份证号码</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="idcard" name="idcard"
                                   placeholder="请输入身份证号码">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-6 col-md-6">
                    <div class="form-group">
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <button type="button" class="layui-btn" id="test1">
                                    <i class="layui-icon">&#xe67c;</i>上传照片
                                </button>
                            </div>
                            <input type="hidden" id="photo" name="photo" value="" />
                        </div>
                        <div class="layui-form-item">
                            <div class="layui-input-block">
                                <img class="layui-upload-img" width="100px" height="80px"
                                     id="demo1" />
                                <p id="demoText"></p>
                            </div>
                        </div>
                    </div>


                    <div class="form-group">
                        <label for="landline" class="col-lg-3 col-sm-3  col-md-3 control-label" title="座机">座机</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="landline" name="landline"
                                   placeholder="请输入座机">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="phone" class="col-lg-3 col-sm-3 col-md-3 control-label"
                               title="联系电话">联系电话</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="phone" name="phone"
                                   placeholder="请输入联系电话">
                        </div>
                    </div>
                </div>
                <div class="form-btn">
                    <input type="submit" class="btn btn-success" value="确定保存" id="submit">
                    <input type="reset" class="btn btn-default" value="重置">
                </div>
            </form>
        </div>
    </section>
</div>
<script src="/view/js/jquery-1.10.2.min.js"></script>
<script src="/view/js/jquery-ui-1.9.2.custom.min.js"></script>
<script src="/view/js/bootstrap.min.js"></script>
<!--单选-->
<script src="/view/js/iCheck/jquery.icheck.js"></script>
<script src="/view/js/icheck-init.js"></script>
<!--文件上传-->
<script type="text/javascript" src="/view/js/bootstrap-fileupload.min.js"></script>
<!--时间控件插件-->
<script type="text/javascript" src="/view/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="/view/js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="/view/js/bootstrap-daterangepicker/moment.min.js"></script>
<script type="text/javascript" src="/view/js/bootstrap-daterangepicker/daterangepicker.js"></script>
<script type="text/javascript" src="/view/js/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script type="text/javascript" src="/view/js/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
<!--初始化时间控件-->
<script src="/view/js/pickers-init.js"></script>
<script src="/resources/layui/layui.js" charset="utf-8"></script>
<script>
    var  layer;
    layui.use(['form', 'upload','laydate','layer'], function() {
        var form = layui.form;
        var $ = layui.jquery;
        var upload = layui.upload;
        var laydate = layui.laydate;
        layer= layui.layer;
        var uploadInst = upload.render({
            elem: '#test1' //绑定元素
            ,url:'/admin/sys/upload/img' //上传接口
            ,before: function(obj){
                //预读本地文件示例，不支持ie8
                obj.preview(function(index, file, result){
                    $('#demo1').attr('src', result); //图片链接（base64）
                });
            }
            ,done: function(res){
                //如果上传失败
                if(res.code > 0){
                    return layer.msg('上传失败,(可能原因：图片格式不正确)');
                }
                //上传成功
                document.getElementById("photo").value = res.url;//隐藏域保存文件路径

            }
            ,error: function(){
                //演示失败状态，并实现重传
                var demoText = $('#demoText');
                demoText.html('<span style="color: #FF5722;">上传失败,(可能原因：图片格式不正确)</span> <a class="layui-btn layui-btn-mini demo-reload">重试</a>');
                demoText.find('.demo-reload').on('click', function(){
                    uploadInst.upload();
                });
            }
        });
    $('#submit').on('click',function () {
        $.ajax({
            url:'/document/representative/saveOrEdit',
            type:'post',
            data:$("#form").serialize(),
            dataType:"json",
            beforeSend:function(){
                //do something
            },
            success:function(data){
                //do something
                if(data.code==0){
                    layer.confirm('确定要保存？', {
                        skin: 'demo-class',
                        shade:-1,
                        btn: ['确定','取消'] //按钮
                        ,yes:function () {
                            layer.msg('保存成功，请等待管理员审核!')
                        }
                    });
                } else {
                    layer.msg('保存失败')
                }
            },
            error:function(data){
                //do something
                layer.msg('与服务器连接失败',{icon: 2});
            }
        });
        return false;
    });

    $.ajax({
        url:'/document/representative/listUser',
        type:'post',
        dataType:"json",
        data:{"page":1,"limit":999,"alias":0,"typeInfoId":8},
        beforeSend:function(){
            //do something
        },
        success:function(data){
            //do something
            if(data.code==0){
                if (data.data[0].type === "0") {
                    layer.open({
                        type: 1,
                        closeBtn: 0,
                        title: '信息',
                        content: '<div style="margin:20px 20px">审核成功</div>' //这里content是一个普通的String
                    });
                }else if (data.data[0].type === "1") {
                    layer.open({
                        type: 1,
                        closeBtn: 0,
                        title: '信息',
                        content: '<div style="margin:20px 20px">审核失败</div>' //这里content是一个普通的String
                    });
                }else if (data.data[0].type === "2") {
                    layer.open({
                        type: 1,
                        closeBtn: 0,
                        title: '信息',
                        content: '<div style="margin:20px 20px">未审核</div>' //这里content是一个普通的String
                    });
                }

            } else {

            }
        },
        error:function(data){
            //do something
            layer.msg('与服务器连接失败',{icon: 2});
        }
    });
    });
</script>
</body>
</html>
