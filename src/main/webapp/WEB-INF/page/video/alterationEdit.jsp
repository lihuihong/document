<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/resources/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/resources/css/login.css" media="all">
    <title>用户管理</title>

</head>

<body>
<form class="layui-form" lay-filter="form" style="padding: 20px 50px 20px 20px;text-align: center">
    <input type="hidden" name="id" id="id">
    <input type="hidden" name="typeInfoId" id="typeInfoId" value="5">
    <%--<div class="layui-form-item">
        <label class="layui-form-label">所属分类</label>
        <div class="layui-input-block">
            <select name="typeInfoId" id="typeInfoId" lay-verify="required">
                <option value="">--请选择分类--</option>
            </select>
        </div>
    </div>--%>
    <div class="layui-form-item">
        <label class="layui-form-label">单位名称</label>
        <div class="layui-input-block">
            <input type="text" name="unitName" id="unitName" required lay-verify="required" placeholder="单位名称" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">单位名称时间</label>
        <div class="layui-input-block">
            <input type="text" name="unitNameTime" id="unitNameTime" lay-verify="required" placeholder="单位名称时间" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">法定代表人</label>
        <div class="layui-input-block">
            <input type="text" name="legalRepresentative" id="legalRepresentative"  lay-verify="required" placeholder="请输入法定代表人" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">法定代表人时间</label>
        <div class="layui-input-block">
            <input type="text" name="representativeTime" id="representativeTime"  lay-verify="required" placeholder="法定代表人时间" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">地址</label>
        <div class="layui-input-block">
            <input type="text" name="address" id="address"  lay-verify="required" placeholder="请输入地址" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">地址时间</label>
        <div class="layui-input-block">
            <input type="text" name="addressTime" id="addressTime"  lay-verify="required" placeholder="地址时间" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">面积</label>
        <div class="layui-input-block">
            <input type="text" name="area" id="area"  lay-verify="required|number" placeholder="请输入面积" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">面积时间</label>
        <div class="layui-input-block">
            <input type="text" name="areaTime" id="areaTime"  lay-verify="required" placeholder="面积时间" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">包厢数量</label>
        <div class="layui-input-block">
            <input type="text" name="terminalNumbe" id="terminalNumbe"  lay-verify="required|number" placeholder="请输入包厢数量" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">包厢数量时间</label>
        <div class="layui-input-block">
            <input type="text" name="terminalNumbeTime" id="terminalNumbeTime"  lay-verify="required" placeholder="包厢数量时间" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">设备数量</label>
        <div class="layui-input-block">
            <input type="text" name="number" id="number"  lay-verify="required|number" placeholder="请输入设备数量" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">设备数量时间</label>
        <div class="layui-input-block">
            <input type="text" name="numbertime" id="numbertime"  lay-verify="required" placeholder="设备数量时间" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
            <button class="layui-btn" lay-submit lay-filter="formDemo">立即提交</button>
            <button type="reset" class="layui-btn layui-btn-primary">重置</button>
    </div>
</form>
</body>
<script src="/resources/layui/layui.js" charset="utf-8"></script>
<script>
    var info = parent.preDate;
    layui.use(['form', 'upload','laydate'], function() {
        var form = layui.form;
        var $ = layui.jquery;
        var upload = layui.upload;
        var laydate = layui.laydate;
        //表单初始赋值
        if (info != null){
            form.val('form',{
                "id":info.id
                ,"unitName":info.unitName
                ,"unitNameTime":info.unitNameTime
                ,"legalRepresentative":info.legalRepresentative
                ,"representativeTime":info.representativeTime
                ,"address":info.address
                ,"addressTime":info.addressTime
                ,"area":info.area
                ,"areaTime":info.areaTime
                ,"terminalNumbe":info.terminalNumbe
                ,"terminalNumbeTime":info.terminalNumbeTime
                ,"number":info.number
                ,"numbertime":info.numbertime
            });
            form.render();
        }

        //执行一个laydate实例
        laydate.render({
            elem: '#unitNameTime' //指定元素
        });
        //执行一个laydate实例
        laydate.render({
            elem: '#representativeTime' //指定元素
        });//执行一个laydate实例
        laydate.render({
            elem: '#addressTime' //指定元素
        });//执行一个laydate实例
        laydate.render({
            elem: '#areaTime' //指定元素
        });//执行一个laydate实例
        laydate.render({
            elem: '#terminalNumbeTime' //指定元素
        });
        laydate.render({
            elem: '#numbertime' //指定元素
        });

        /*$.ajax({
            url:'/typeInfo/typeList',
            type:'post',
            data:{"page":1,"limit":99999999},
            dataType:"json",
            success:function(data){
                var html = '';
                if(data.code===0){
                    $.each(data.data,function(index,value){
                        html += '<option value="'+value.id+'">'+value.name+'</option>';
                        //alert(html);
                    });
                    //alert(html);
                    $('#typeInfoId').html(html);

                    if (info != null &&info.typeInfoId != null){
                        $('#typeInfoId').val(info.typeInfoId);
                    }
                    form.render('select');
                } else {
                    layer.alert('抱歉，系统繁忙，请稍后再试！',{icon:2});
                }
            },
        });*/
        //监听提交
        form.on('submit(formDemo)', function(data){
            if (data.field.id !== "" && data.field.id != null){
                layer.confirm('是否确定修改？',{icon: 3, title:'系统信息'},function(index){
                    $.ajax({
                        url:'/document/netba/alteration/saveOrEdit',
                        type:'post',
                        data:data.field,
                        dataType:"json",
                        beforeSend:function(){
                            //console.log(JSON.stringify(data.field));
                        },
                        success:function(data){
                            //do something
                            if(data.code===0){
                                var index = parent.layer.getFrameIndex(window.name);//获取当前窗口索引
                                parent.layer.msg(data.msg, {icon : 1});
                                parent.layer.close(index);
                                parent.layui.table.reload('tableList');//重新加载父级tabel数据
                            } else {
                                layer.alert(data.msg,{icon:2});
                            }
                        },
                        error:function(data){
                            //do something
                            layer.msg('与服务器连接失败',{icon: 2});
                        }
                    });
                    layer.close(index);
                });
            }else {
                layer.confirm('是否确定新增？',{icon: 3, title:'系统信息'},function(index){
                    console.log("========"+data.field);
                    $.ajax({
                        url:'/document/netba/alteration/saveOrEdit',
                        type:'post',
                        data:data.field,
                        dataType:"json",
                        beforeSend:function(){
                            //console.log(JSON.stringify(data.field));
                        },
                        success:function(data){
                            //do something
                            if(data.code===0){
                                var index = parent.layer.getFrameIndex(window.name);//获取当前窗口索引
                                parent.layer.msg(data.msg, {icon : 1});
                                parent.layer.close(index);
                                parent.layui.table.reload('tableList');//重新加载父级tabel数据
                            } else {
                                layer.alert(data.msg,{icon:2});
                            }
                        },
                        error:function(data){
                            //do something
                            layer.msg('与服务器连接失败',{icon: 2});
                        }
                    });
                    layer.close(index);
                });
            }

            return false;
        });

    });

</script>

</body>
</html>