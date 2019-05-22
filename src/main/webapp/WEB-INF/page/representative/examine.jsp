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
    <div class="layui-form-item">
        <label class="layui-form-label">是否通过审核</label>
        <div class="layui-input-block">
            <select name="type" id="type" lay-verify="required">
                <option value="2">--请选择--</option>
                <option value="0">通过审核</option>
                <option value="1">未通过</option>
            </select>
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
        //表单初始赋值
        if (info != null){
            form.val('form',{
                "id":info.id
                ,"type":info.type
            });
            form.render();
        }
        //监听提交
        form.on('submit(formDemo)', function(data){
            if (data.field.id !== "" && data.field.id != null){
                layer.confirm('是否确定该审核信息？',{icon: 3, title:'系统信息'},function(index){
                    $.ajax({
                        url:'/document/representative/examine',
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