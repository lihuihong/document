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
    <title>营业性演出-其他审批文件</title>
    <link href="/view/css/style.css" rel="stylesheet">
    <link href="/view/css/style-responsive.css" rel="stylesheet">
    <script src="/view/js/html5shiv.js"></script>
    <script src="/view/js/respond.min.js"></script>
</head>
<body>
<div class="row" style="margin: 0px;padding: 0px">
    <section class="panel">
        <header class="panel-heading">
            <span>其他审批文件</span>
        </header>
        <div class="panel-body">
            <form class="form-horizontal" role="form" id="form">
                <input type="hidden" name="typeInfoId" value="6">
                <div class="col-lg-6 col-sm-6 col-md-6">
                    <div class="form-group">
                        <label for="fireControl" class="col-lg-3 col-sm-3 col-md-3  control-label" title="消防">消防</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="hidden" class="form-control" id="id" name="id" placeholder="id">
                            <input type="text" class="form-control" id="fireControl" name="fireControl"
                                   placeholder="请输入消防编号">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="environmentalProtection" class="col-lg-3 col-sm-3 col-md-3 control-label" title="环保">环保</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="environmentalProtection" name="environmentalProtection"
                                   placeholder="请输入环保编号">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-6 col-md-6">
                    <div class="form-group">
                        <label for="hygiene" class="col-lg-3 col-sm-3  col-md-3 control-label" title="卫生">卫生</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="hygiene" name="hygiene"
                                   placeholder="请输入卫生编号">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="businessCircles" class="col-lg-3 col-sm-3 col-md-3 control-label" title="工商">工商</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="businessCircles" name="businessCircles"
                                   placeholder="请输入工商编号">
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
<script src="/view/js/layer/layer.js"></script>
<script>
    $('#submit').on('click',function () {
        $.ajax({
            url:'/document/document/saveOrEdit',
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
        url:'/document/document/listUser',
        type:'post',
        dataType:"json",
        data:{"page":1,"limit":999,"typeInfoId":6},
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
