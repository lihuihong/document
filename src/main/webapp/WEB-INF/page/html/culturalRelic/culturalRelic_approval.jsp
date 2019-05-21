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
    <title>文物-文物安全</title>
    <link href="/view/css/style.css" rel="stylesheet">
    <link href="/view/css/style-responsive.css" rel="stylesheet">
    <script src="/view/js/html5shiv.js"></script>
    <script src="/view/js/respond.min.js"></script>
</head>
<body>
<div class="row" style="margin: 0px;padding: 0px">
    <section class="panel">
        <header class="panel-heading">
            <span>文物安全</span>
        </header>
        <div class="panel-body">
            <form class="form-horizontal" role="form" id="form">
                <input type="hidden" name="typeInfoId" value="13">
                <div class="col-lg-6 col-sm-6 col-md-6">
                    <div class="form-group">
                        <label for="camera" class="col-lg-3 col-sm-3 col-md-3  control-label" title="摄像镜头">摄像镜头</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="hidden" class="form-control" id="id" name="id" placeholder="id">
                            <input type="text" class="form-control" id="camera" name="camera"
                                   placeholder="请输入摄像镜头">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="annihilator" class="col-lg-3 col-sm-3 col-md-3 control-label" title="灭火器">灭火器</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="annihilator" name="annihilator"
                                   placeholder="请输入灭火器">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="automaticSprinkling" class="col-lg-3 col-sm-3 col-md-3 control-label" title="自动喷淋">自动喷淋</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="automaticSprinkling" name="automaticSprinkling"
                                   placeholder="请输入自动喷淋">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="security" class="col-lg-3 col-sm-3 col-md-3 control-label" title="保安人数">保安人数</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="security" name="security"
                                   placeholder="请输入保安人数">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="contingencyPlan" class="col-lg-3 col-sm-3 col-md-3 control-label" title="应急预案">应急预案</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="contingencyPlan" name="Anti-theftDoor"
                                   placeholder="请输入应急预案">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-6 col-md-6">
                    <div class="form-group">
                        <label for="Anti-theftDoor" class="col-lg-3 col-sm-3  col-md-3 control-label" title="防盗门">防盗门</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="Anti-theftDoor" name="Anti-theftDoor"
                                   placeholder="请输入防盗门">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="alarmDevice" class="col-lg-3 col-sm-3 col-md-3 control-label" title="报警装置">报警装置</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="alarmDevice" name="alarmDevice"
                                   placeholder="请输入报警装置">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="fireHydrant" class="col-lg-3 col-sm-3 col-md-3 control-label" title="消防栓">消防栓</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="fireHydrant" name="fireHydrant"
                                   placeholder="请输入消防栓">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="rulesRegulations" class="col-lg-3 col-sm-3 col-md-3 control-label" title="规章制度">规章制度</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="rulesRegulations" name="rulesRegulations"
                                   placeholder="请输入规章制度">
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
        data:{"page":1,"limit":999,"typeInfoId":13},
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
