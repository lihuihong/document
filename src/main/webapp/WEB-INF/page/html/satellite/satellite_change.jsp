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
    <title>卫星地面接收-受罚情况</title>
    <link href="/view/css/style.css" rel="stylesheet" media="all" charset="UTF-8">
    <link href="/view/css/style-responsive.css" rel="stylesheet" media="all" charset="UTF-8">
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
            <span>变更情况</span>
        </header>
        <div class="panel-body">
            <form class="form-horizontal" role="form">
                <div class="col-lg-6 col-sm-6 col-md-6">
                    <div class="form-group">
                        <label for="unitName" class="col-lg-3 col-sm-3 col-md-3  control-label" title="单位名称">单位名称</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="hidden" class="form-control" id="id" name="id" placeholder="id">
                            <input type="text" class="form-control" id="unitName" name="unitName"
                                   placeholder="请输入单位名称">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="legalRepresentative" class="col-lg-3 col-sm-3 col-md-3 control-label" title="法定代表人">法定代表人</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="legalRepresentative" name="legalRepresentative"
                                   placeholder="请输入法定代表人">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="address" class="col-lg-3 col-sm-3 col-md-3 control-label" title="地址">地址</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="address" name="address"
                                   placeholder="请输入地址">
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-6 col-md-6">
                    <div class="form-group">
                        <label for="unitNameTime" class="col-lg-3 col-sm-3  col-md-3 control-label " title="单位名称变更时间">单位名称变更时间</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control default-date-picker" id="unitNameTime" name="unitNameTime"

                                   placeholder="请输入单位名称变更时间">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="representativeTime" class="col-lg-3 col-sm-3 col-md-3 control-label" title="法定代表人变更时间">法定代表人变更时间</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control default-date-picker" id="representativeTime" name="representativeTime"
                                   placeholder="请输入法定代表人变更时间">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="addressTime" class="col-lg-3 col-sm-3 col-md-3 control-label" title="地址变更时间">地址变更时间</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control default-date-picker" id="addressTime" name="addressTime"
                                   placeholder="请输入地址变更时间">
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
    $('#submit').on('click', function () {
        $.ajax({
            url: '/view/json/submit.json',
            type: 'get',
            data: '',
            dataType: "json",
            beforeSend: function () {
                //do something
            },
            success: function (data) {
                //do something
                if (data.code == 0) {
                    layer.confirm('确定要保存？', {
                        skin: 'demo-class',
                        shade: -1,
                        btn: ['确定', '取消'] //按钮
                        , yes: function () {
                            layer.msg('保存成功，请等待管理员审核!')
                        }
                    });
                } else {
                    layer.msg('保存失败')
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
