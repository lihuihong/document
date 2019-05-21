<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/resources/layui/css/layui.css" media="all">
    <link rel="stylesheet" href="/resources/css/login.css" media="all">
    <title>分类</title>
</head>

<body>
<form class="layui-form">
    <div class="layui-form-item layui-elem-quote">
        <label class="layui-form-label">单位名称</label>
        <div class="layui-input-inline">
            <input type="text" name="unitName" id="unitName" autocomplete="off" placeholder="请输入单位名称" class="layui-input">
        </div>
        <button type="button" class="layui-btn btnSearch" lay-filter="search" lay-submit>查询</button>
        <button type="button" class="layui-btn layui-btn-normal btnAdd">+ 新增变更情况</button>
    </div>
</form>
<table class="layui-hide" id="tableList" lay-filter="demo"></table>
</body>
<script src="/resources/layui/layui.js" charset="utf-8"></script>
<script type="text/javascript" src="http://libs.baidu.com/jquery/1.8.3/jquery.min.js"></script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs" lay-event="edit">修改</a>
    <a class="layui-btn layui-btn-xs" lay-event="examine">审核</a>
    <a class="layui-btn layui-btn-xs" lay-event="del">删除</a>
</script>
<script>
    var data;
    layui.use('table', function () {
        var table = layui.table;
        var $ = layui.jquery;
        //加载表格
        table.render({
            elem: '#tableList'
            , url: '/document/netba/alteration/list'
            , cellMinWidth: 80 //全局定义常规单元格的最小宽度，layui 2.2.1 新增
            , toolbar: 'true'
            , defaultToolbar: ['filter']
            , cols: [[
                {field: 'index', title: '排序', align: 'center', type: 'numbers'},
                {field: 'id', title: 'id', align: 'center', hide: true},
                {field: 'unitName', title: '单位名称', align: 'center'},
                {field:'username', title: '所属用户', align:'center'},
                {field: 'unitNameTime', title: '单位名称时间', align: 'center', hide: true},
                {field: 'legalRepresentative', title: '法定代表人', align: 'center'},
                {field: 'representativeTime', title: '法定代表人时间', align: 'center', hide: true},
                {field: 'address', title: '地址', align: 'center'},
                {field: 'addressTime', title: '地址时间', align: 'center', hide: true},
                {
                    field: 'type', title: '审核状态', align: 'center', templet: function (d) {
                        switch (d.type) {
                            case "0":
                                return "通过审核";
                            case "1":
                                return "未通过审核";
                            case "2":
                                return "未审核";
                        }
                    }
                },
                {fixed: 'right', width: 260, title: '操作', align: 'center', toolbar: '#barDemo'}
            ]],
            page: true,
            where:{"typeInfoId":"10"}
        });
        //重载表格
        $('.btnSearch').on('click', function () {
            table.reload('tableList', {
                page: {
                    curr: 1 //重新从第 1 页开始
                },
                where: {
                    'unitName': $('#unitName').val()
                }
            });
        });
        //监听工具条
        table.on('tool(demo)', function (obj) {
            data = obj.data;
            if (obj.event === 'edit') {
                preDate = data;
                layer.open({
                    title: '编辑信息',
                    type: 2,
                    shade: false,
                    area: ['800px', '850px'],
                    maxmin: true,
                    btnAlign: 'c',
                    anim: 0,
                    shade: [0.5, 'rgb(0,0,0)'],
                    content: '/web/page/management/alterationEdit',
                    zIndex: layer.zIndex, //重点1
                    success: function (layero, index) {
                        // 获取子页面的iframe
                        /*var iframe = window['layui-layer-iframe' + index];
                        // 向子页面的全局函数child传参
                        iframe.child(data);*/
                    },
                    yes: function (index, layero) {
                        //确认按钮
                    }
                });
            }
            if (obj.event === 'del') {
                layer.confirm('单位名称：' + data.unitName, {icon: 3, title: '是否确定删除?'}, function (index) {
                    $.ajax({
                        url: '/document/netba/alteration/del',
                        type: 'post',
                        data: {'alterationId': data.id},
                        dataType: "json",
                        beforeSend: function () {//console.log(JSON.stringify(data.field));
                        },
                        success: function (data) {//do something
                            if (data.code === 0) {
                                layer.msg('恭喜，删除成功！', {icon: 1});
                            } else {
                                layer.alert('抱歉，系统繁忙，请稍后再试！', {icon: 2});
                            }
                        },
                        error: function (data) {//do something
                            layer.msg('与服务器连接失败', {icon: 2});
                        }
                    });
                    layer.close(index);
                    layui.table.reload('tableList');
                });
            }
            if (obj.event === 'examine') {
                preDate = data;
                layer.open({
                    title: '审核信息',
                    type: 2,
                    shade: false,
                    area: ['600px', '250px'],
                    maxmin: true,
                    btnAlign: 'c',
                    anim: 0,
                    shade: [0.5, 'rgb(0,0,0)'],
                    content: '/web/page/management/alterationExamine',
                    zIndex: layer.zIndex, //重点1
                    success: function (layero) {
                        //layer.setTop(layero); //顶置窗口
                    },
                    yes: function (index, layero) {
                        //确认按钮
                    }
                });
            }
        });

        $('.btnAdd').on('click', function () {
            preDate = null;
            layer.open({
                title: '新增变更情况',
                type: 2,
                shade: false,
                area: ['800px', '800px'],
                maxmin: true,
                btnAlign: 'c',
                anim: 0,
                shade: [0.5, 'rgb(0,0,0)'],
                content: '/web/page/management/alterationEdit',
                zIndex: layer.zIndex, //重点1
                success: function (layero) {
                    //layer.setTop(layero); //顶置窗口
                },
                yes: function (index, layero) {
                    //确认按钮
                }
            });

        });

    });
</script>
</body>
</html>