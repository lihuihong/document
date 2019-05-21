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
    <title>互联网站-受罚情况</title>
    <link href="/view/css/style.css" rel="stylesheet">
    <link href="/view/css/style-responsive.css" rel="stylesheet">
    <script src="/view/js/html5shiv.js"></script>
    <script src="/view/js/respond.min.js"></script>
    <link rel="stylesheet" type="text/css" href="/view/js/ios-switch/switchery.css"/>
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
            <span>受罚情况</span>
        </header>
        <div class="panel-body">
            <form class="form-horizontal" role="form" id="form">
                <input type="hidden" name="typeInfoId" value="11">
                <div class="col-lg-6 col-sm-6 col-md-6">
                    <div class="form-group">
                        <label for="warning" class="col-lg-3 col-sm-3 col-md-3  control-label"
                               title="警告(次数)">警告(次数)</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="hidden" class="form-control" id="id" name="id" placeholder="id">
                            <input type="text" class="form-control" id="warning" name="warning"
                                   placeholder="请输入警告(次数)">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="fine" class="col-lg-3 col-sm-3 col-md-3 control-label" title="环保">罚款（元）</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="fine" name="fine"
                                   placeholder="请输入罚款金额（元）">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="rectify" class="col-lg-3 col-sm-3 col-md-3 control-label" title="责令停业整顿（天）">责令停业整顿
                            （天）</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="rectify" name="rectify"
                                   placeholder="请输入责令停业整顿（天）">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="revocationPermit" class="col-lg-3 col-sm-3 col-md-3 control-label" title="吊销许可证">吊销许可证</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="checkbox" class="js-switch" id="revocationPermit" name="revocationPermit"
                                   checked/>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="confiscationIncome" class="col-lg-3 col-sm-3 col-md-3 control-label"
                               title="没收违法所得（元）">没收违法所得（元）</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="confiscationIncome" name="confiscationIncome"
                                   placeholder="请输入没收违法金额">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="confiscationProperty" class="col-lg-3 col-sm-3 col-md-3 control-label"
                               title="没收非法财物">没收非法财物</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="file" id="confiscationProperty" name="confiscationProperty"
                                   placeholder="请输入没收非法财物">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-6 col-md-6">
                    <div class="form-group">
                        <label for="warningTime" class="col-lg-3 col-sm-3  col-md-3 control-label"
                               title="警告时间">警告时间</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control default-date-picker" id="warningTime"
                                   name="warningTime"
                                   placeholder="请输入警告时间">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="fineTime" class="col-lg-3 col-sm-3 col-md-3 control-label" title="罚款时间">罚款时间</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control default-date-picker" id="fineTime" name="fineTime"
                                   placeholder="请输入罚款时间">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="rectifyTime" class="col-lg-3 col-sm-3 col-md-3 control-label"
                               title="整顿时间">整顿时间</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control default-date-picker" id="rectifyTime"
                                   name="rectifyTime"
                                   placeholder="请输入整顿时间">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="revocationPermitTime" class="col-lg-3 col-sm-3 col-md-3 control-label"
                               title="吊销许可证">吊销许可证</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control default-date-picker" id="revocationPermitTime"
                                   name="revocationPermitTime"
                                   placeholder="请输入吊销许可证时间">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="confiscationIncomeTime" class="col-lg-3 col-sm-3 col-md-3 control-label"
                               title="没收所得时间">没收所得时间</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control default-date-picker" id="confiscationIncomeTime"
                                   name="confiscationIncomeTime"
                                   placeholder="请输入没收所得时间">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="confiscationPropertyTime" class="col-lg-3 col-sm-3 col-md-3 control-label"
                               title="没收财物时间">没收财物时间</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control default-date-picker" id="confiscationPropertyTime"
                                   name="confiscationPropertyTime"
                                   placeholder="请输入没收财物时间">
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
<script src="/view/js/ios-switch/switchery.js"></script>
<script src="/view/js/ios-switch/ios-init.js"></script>
<!--时间控件插件-->
<script type="text/javascript" src="/view/js/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="/view/js/bootstrap-datetimepicker/js/bootstrap-datetimepicker.js"></script>
<script type="text/javascript" src="/view/js/bootstrap-daterangepicker/moment.min.js"></script>
<script type="text/javascript" src="/view/js/bootstrap-daterangepicker/daterangepicker.js"></script>
<script type="text/javascript" src="/view/js/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>
<script type="text/javascript" src="/view/js/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>

<!--初始化时间控件-->
<script src="/view/js/pickers-init.js"></script>
<script src="/view/js/layer/layer.js"></script>
<script>
    $('#submit').on('click',function () {
        $.ajax({
            url:'/document/punishment/saveOrEdit',
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
        url:'/document/punishment/listUser',
        type:'post',
        dataType:"json",
        data:{"page":1,"limit":999,"typeInfoId":11},
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
</script>
</body>
</html>
