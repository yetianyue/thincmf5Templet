/**
 * Created by Administrator on 2017/8/18.
 */

$(document).ready(function(){
    //关闭点击事件
    $(document).off('click.bs.dropdown.data-api');
    dropdownOpen();
    //左侧菜单浮动，下拉数据加载
    var tarheight = $('.topbar').height();
    var viewheight = $(window).height();
    $(window).scroll(function (e) {
        var wheight = $(this).scrollTop();
        var cheight = $('body').get(0).scrollHeight;
        if( wheight > tarheight){
            //不可见
            $('.left-channel').css('top','10px');
        }else{
            //可见
            $('.left-channel').css('top',50-wheight+'px');
        }
        if(viewheight+wheight >= cheight){
            loadArticleList();
        }
    });
});

/**
 * 下拉加载数据
 */
function loadArticleList(){

}

/**
 * 关闭模态框点击事件
 */
function dropdownOpen() {
    var $dropdownLi = $('li.dropdown');
    $dropdownLi.mouseover(function() {
        $(this).addClass('open');
    }).mouseout(function() {
        $(this).removeClass('open');
    });
}