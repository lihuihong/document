<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%><!DOCTYPE html><!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="author" content="ThemeBucket">
    <link rel="shortcut icon" href="/view/images/logo_icon.png" type="image/png">
    <title>出版物-单位经营情况</title>
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
            <span>单位经营情况</span>
        </header>
        <div class="panel-body">
            <form class="form-horizontal" role="form" id="form">
                <input type="hidden" name="typeInfoId" value="8">
                <div class="col-lg-6 col-sm-6 col-md-6">
                    <div class="form-group">
                        <label for="unitName" class="col-lg-3 col-sm-3 col-md-3  control-label"
                               title="单位名称">单位名称</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="hidden" class="form-control" id="id" name="id" placeholder="id">
                            <input type="text" class="form-control" id="unitName" name="unitName"
                                   placeholder="请输入单位名称">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="businessAddress" class="col-lg-3 col-sm-3 col-sm-3  control-label" title="经营地址">经营地址</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="businessAddress" name="businessAddress"
                                   placeholder="请输入经营地址">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="workTelephone" class="col-lg-3 col-sm-3 col-md-3 control-label">单位电话</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="workTelephone" name="workTelephone"
                                   placeholder="请输入单位电话">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="totalInvestment" class="col-lg-3 col-sm-3 col-md-3 control-label" title="总投资额（万元）">
                            总投资额（万元）</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="totalInvestment" name="totalInvestment"
                                   placeholder="请输入总投资额（万元）">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="peopleEmployed" class="col-lg-3 col-sm-3 col-md-3 control-label" title="从业人员数">从业人员数</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="peopleEmployed" name="peopleEmployed"
                                   placeholder="请输入从业人员数">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="licenseKey" class="col-lg-3 col-sm-3  col-md-3 control-label"> 许可证号</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="licenseKey" name="licenseKey"
                                   placeholder="请输入许可证号">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="certificationAuthority" class="col-lg-3 col-sm-3  col-md-3 control-label"> 发证机关</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="certificationAuthority" name="certificationAuthority"
                                   placeholder="请输入发证机关">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="rules" class="col-lg-3 col-sm-3 col-md-3 control-label">规章制度</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="checkbox" class="js-switch" checked id="rules" name="rules"/>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 col-sm-6 col-md-6">
                    <div class="form-group">
                        <label for="management" class="col-lg-3 col-sm-3 col-md-3 control-label">经营性质</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <select class="form-control" id="management" name="management">
                                <option value="" selected>请选择经营性质</option>
                                <option value="1">私营</option>
                                <option value="2">国营</option>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="operatingArea" class="col-lg-3 col-sm-3 col-md-3 control-label"
                               title="经营面积（m2)">经营面积（m2)</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="operatingArea" name="operatingArea"
                                   placeholder="请输入经营面积（m2）">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="terminalNumber" class="col-lg-3 col-sm-3 col-md-3 control-label"
                               title="设备台数">设备台数</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control" id="terminalNumber" name="terminalNumber"
                                   placeholder="请输入设备台数">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="issuingTime" class="col-lg-3 col-sm-3 col-md-3 control-label">发证时间</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control default-date-picker" id="issuingTime" name="issuingTime"
                                   placeholder="请输入发证时间">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="inspectionTime" class="col-lg-3 col-sm-3 col-md-3 control-label">年检时间</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <input type="text" class="form-control default-date-picker" id="inspectionTime" name="inspectionTime"
                                   placeholder="yyyy-mm-dd">
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="address" class="col-lg-3 col-sm-3 col-md-3 control-label"
                               title="出版方式">出版方式</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <select class="form-control" id="address" name="address">
                                <option value="" selected>请选择出版方式</option>
                                <option value="1">自助出版</option>
                                <option value="2">定制出版</option>
                            </select>
                        </div>
                    </div>

                    <div class="form-group">
                        <label for="child" class="col-lg-3 col-sm-3 col-md-3 control-label">分类</label>
                        <div class="col-lg-9 col-sm-9 col-md-9">
                            <select class="form-control" id="child" name="child">
                                <option value="">请选择分类</option>
                            </select>
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

<script src="/view/js/pickers-init.js"></script>
<script src="/view/js/layer/layer.js"></script>
<script>
    $('#submit').on('click',function () {
        $.ajax({
            url:'/document/netba/situation/saveOrEdit',
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
        url:'/document/typeInfoOne/list',
        type:'post',
        data:{"page":1,"limit":99999999,"typeInfoId":8},
        dataType:"json",
        success:function(data){
            var html = '';
            if(data.code===0){
                $.each(data.data,function(index,value){
                    html += '<option value="'+value.id+'">'+value.name+'</option>';
                    //alert(html);
                });
                //alert(html);
                $('#child').html(html);
            }
        },
    });

    $.ajax({
        url:'/document/netba/situation/listUser',
        type:'post',
        dataType:"json",
        data:{"page":1,"limit":999,"typeInfoId":8},
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
