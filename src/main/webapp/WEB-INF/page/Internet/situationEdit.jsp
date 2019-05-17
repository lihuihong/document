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
<form class="layui-form" lay-filter="form" style="padding: 20px 50px 20px 20px ;text-align: center" >
    <input type="hidden" name="id" id="id">
    <input type="hidden" name="typeInfoId" id="typeInfoId" value="11">
    <div class="layui-form-item">
        <label class="layui-form-label">单位名称</label>
        <div class="layui-input-block">
            <input type="text" name="unitName" id="unitName" required lay-verify="required" placeholder="请输入单位名称" autocomplete="off" class="layui-input">
        </div>
    </div>
    <%--<div class="layui-form-item">
        <label class="layui-form-label">所属分类</label>
        <div class="layui-input-block">
            <select name="typeInfoId" id="typeInfoId" lay-verify="required">
                <option value="">--请选择分类--</option>
            </select>
        </div>
    </div>--%>
    <div class="layui-form-item">
        <label class="layui-form-label">经营地址</label>
        <div class="layui-input-block">
            <input type="text" name="businessAddress" id="businessAddress" lay-verify="required" placeholder="请输入经营地址" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">经营性质</label>
        <div class="layui-input-block">
            <select name="management" id="management" lay-verify="required">
                <option value="">--请选择经营性质--</option>
                <option value="1">私营</option>
                <option value="2">国营</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">网络接入商</label>
        <div class="layui-input-block">
            <select name="networkAccess" id="networkAccess" lay-verify="required">
                <option value="">--请选择网络接入商--</option>
                <option value="1">中国移动</option>
                <option value="2">中国联通</option>
                <option value="3">中国电信</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">单位电话</label>
        <div class="layui-input-block">
            <input type="text" name="workTelephone" id="workTelephone"  lay-verify="required|phone" placeholder="请输入单位电话" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">经营面积（m2）</label>
        <div class="layui-input-block">
            <input type="text" name="operatingArea" id="operatingArea"  lay-verify="required" placeholder="请输入经营面积（m2）" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">设备台数</label>
        <div class="layui-input-block">
            <input type="text" name="terminalNumber" id="terminalNumber"  lay-verify="required|number" placeholder="请输入设备台数" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">IP地址</label>
        <div class="layui-input-block">
            <input type="text" name="ipaddress" id="ipaddress"  lay-verify="required" placeholder="请输入IP地址" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">ICP备案号</label>
        <div class="layui-input-block">
            <input type="text" name="ipnumber" id="ipnumber"  lay-verify="required" placeholder="请输入ICP备案号" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">每日最高浏览量</label>
        <div class="layui-input-block">
            <input type="text" name="address" id="address"  lay-verify="required" placeholder="请输入每日最高浏览量" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">备案号</label>
        <div class="layui-input-block">
            <input type="text" name="numberofServers" id="numberofServers"  lay-verify="required" placeholder="请输入备案号" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">服务器地址</label>
        <div class="layui-input-block">
            <input type="text" name="service" id="service"  lay-verify="required" placeholder="请输入服务器地址" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">是否传播视听节目</label>
        <div class="layui-input-block">
            <select name="program" id="program" lay-verify="required">
                <option value="">--请选择是否传播视听节目--</option>
                <option value="1">是</option>
                <option value="2">否</option>
            </select>
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">从业人员数</label>
        <div class="layui-input-block">
            <input type="text" name="peopleEmployed" id="peopleEmployed"  lay-verify="required|number" placeholder="请输入从业人员数" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">发证时间</label>
        <div class="layui-input-block">
            <input type="text" name="issuingTime" id="issuingTime"  lay-verify="required" placeholder="请选择发证时间" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">年检时间</label>
        <div class="layui-input-block">
            <input type="text" name="inspectionTime" id="inspectionTime"  lay-verify="required" placeholder="请选择年检时间" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">许可证号</label>
        <div class="layui-input-block">
            <input type="text" name="licenseKey" id="licenseKey"  lay-verify="required" placeholder="请输入许可证号" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">发证机关</label>
        <div class="layui-input-block">
            <input type="text" name="certificationAuthority" id="certificationAuthority"  lay-verify="required" placeholder="请输入发证机关" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">总投资额（万元）</label>
        <div class="layui-input-block">
            <input type="text" name="totalInvestment" id="totalInvestment"  lay-verify="required" placeholder="请输入总投资额（万元）" autocomplete="off" class="layui-input">
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
    layui.use(['form','laydate'], function() {
        var form = layui.form;
        var $ = layui.jquery;
        var laydate = layui.laydate;
        //表单初始赋值
        if (info != null){
            form.val('form',{
                "id":info.id,
                "ipaddress":info.ipaddress
                ,"unitName":info.unitName
                ,"ipnumber":info.ipnumber
                ,"service":info.service
                ,"program":info.program
                ,"numberofServers":info.numberofServers
                ,"typeInfoId":info.typeInfoId
                ,"businessAddress":info.businessAddress
                ,"management":info.management
                ,"workTelephone":info.workTelephone
                ,"operatingArea":info.operatingArea
                ,"peopleEmployed":info.peopleEmployed
                ,"licenseKey":info.licenseKey
                ,"issuingTime":info.issuingTime
                ,"address":info.address
                ,"networkAccess":info.networkAccess
                ,"certificationAuthority":info.certificationAuthority
                ,"inspectionTime":info.inspectionTime
                ,"terminalNumber":info.terminalNumber
                ,"totalInvestment":info.totalInvestment
            });
            form.render();
        }
        //执行一个laydate实例
        laydate.render({
            elem: '#issuingTime' //指定元素
        }); //执行一个laydate实例
        laydate.render({
            elem: '#inspectionTime' //指定元素
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
                        url:'/document/netba/situation/saveOrEdit',
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
                    $.ajax({
                        url:'/document/netba/situation/saveOrEdit',
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