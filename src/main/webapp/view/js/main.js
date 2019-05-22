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
        url: '/user/logout',
        type: 'get',
        //验证用户名是否可用
        success: function (data) {
            if (data.code === 0) {
                layer.msg("退出成功")
                setTimeout(function () {
                    window.location.href = '/';
                }, 1000);
            } else {
                layer.msg(data.message)
            }

        }
    })
    return false;
});
