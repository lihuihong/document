// iframe自适应高度
function changeFrameHeight() {
    var ifm = document.getElementById("external-frame");
    ifm.height = document.documentElement.clientHeight - 170;
}

window.onresize = function () {
    changeFrameHeight();
};
$(function () {
    changeFrameHeight();
});
// 菜单切换
$(document).ready(function () {
    $('.custom-nav').on('click', 'li', function () {
        $(this).addClass('active').siblings().removeClass('active');
    });
});
// 退出登录
$('.layout').on('click', function () {
    $.ajax({
        url: '../../json/submit.json',
        type: 'get',
        data: '',
        dataType: "json",
        beforeSend: function () {
            //do something
        },
        success: function (data) {
            //do something
            if (data.code == 0) {
                layer.confirm('确定要退出登录？', {
                    skin: 'demo-class',
                    shade: -1,
                    btn: ['确定', '取消'] //按钮
                    , yes: function () {
                        window.location.href = '../../login.html';
                    }
                });
            } else {
                layer.msg('退出失败');
            }
        },
        error: function (data) {
            //do something
            layer.msg('与服务器连接失败', {icon: 2});
        }
    });
    return false;
});
