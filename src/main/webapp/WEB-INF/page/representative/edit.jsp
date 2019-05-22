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
    <div class="layui-form-item">
        <label class="layui-form-label">姓名</label>
        <div class="layui-input-block">
            <input type="text" name="name" id="name" required lay-verify="required" placeholder="请输入姓名" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">所属分类</label>
        <div class="layui-input-block">
            <select name="typeInfoId" id="typeInfoId" lay-verify="required">
                <option value="">--请选择分类--</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">性别</label>
        <div class="layui-input-block">
            <select name="sex" id="sex" lay-verify="required">
                <option value="">--请选择性别--</option>
                <option value="1">男</option>
                <option value="2">女</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">出生年月</label>
        <div class="layui-input-block">
            <input type="text" name="birth" id="birth"  lay-verify="required" placeholder="请选择出生年月" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">民族</label>
        <div class="layui-input-block">
            <input type="text" name="translate" id="translate"  placeholder="请输入民族（默认为汉族）" autocomplete="off" class="layui-input">
        </div>
    </div>

    <div class="layui-form-item">
        <label class="layui-form-label">政治面貌</label>
        <div class="layui-input-block">
            <select name="politicalOutlook" id="politicalOutlook" lay-verify="required">
                <option value="">--请选择政治面貌--</option>
                <option value="1">群众</option>
                <option value="2">团员</option>
                <option value="3">党员</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">学历</label>
        <div class="layui-input-block">
            <select name="degree" id="degree" lay-verify="required">
                <option value="">--请选择学历--</option>
                <option value="1">小学</option>
                <option value="2">初中</option>
                <option value="3">高中</option>
                <option value="4">大学</option>
            </select>
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">住址</label>
        <div class="layui-input-block">
            <input type="text" name="address" id="address"  lay-verify="required" placeholder="请输入住址" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">身份证号码</label>
        <div class="layui-input-block">
            <input type="text" name="idcard" id="idcard"  lay-verify="required|number" placeholder="请输入身份证号码" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">座机</label>
        <div class="layui-input-block">
            <input type="text" name="landline" id="landline"  lay-verify="required|number" placeholder="请输入座机" autocomplete="off" class="layui-input">
        </div>
    </div>
    <div class="layui-form-item">
        <label class="layui-form-label">联系电话</label>
        <div class="layui-input-block">
            <input type="text" name="phone" id="phone"  lay-verify="required|phone" placeholder="请输入联系电话" autocomplete="off" class="layui-input">
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
        //表单初始赋值
        if (info != null){
            form.val('form',{
                "id":info.id
                ,"name":info.name
                ,"sex":info.sex
                ,"birth":info.birth
                ,"translate":info.translate
                ,"photo":info.photo
                ,"politicalOutlook":info.politicalOutlook
                ,"degree":info.degree
                ,"address":info.address
                ,"idcard":info.idcard
                ,"landline":info.landline
                ,"phone":info.phone
                ,"type":info.type
                ,
            });
            form.render();
        }
        if (info != null){
            $('#demo1').attr('src', info.photo);
        }
        //执行一个laydate实例
        laydate.render({
            elem: '#birth' //指定元素
        }); //执行一个laydate实例
        laydate.render({
            elem: '#inspectionTime' //指定元素
        });

        $.ajax({
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
        });
        //监听提交
        form.on('submit(formDemo)', function(data){
            if (data.field.id !== "" && data.field.id != null){
                layer.confirm('是否确定修改？',{icon: 3, title:'系统信息'},function(index){
                    $.ajax({
                        url:'/document/representative/saveOrEdit',
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
                        url:'/document/representative/saveOrEdit',
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