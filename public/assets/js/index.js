/**
 * Created by Administrator on 2017/8/18.
 */

$(document).ready(function(){
    //关闭点击事件
    $(document).off('click.bs.dropdown.data-api');
    dropdownOpen();
    //修改menu的active选中
    changeMenuActive();
    //左侧菜单浮动，下拉数据加载
    var tarheight = $('.topbar').height()+$('.middlebar-box').height();
    var viewheight = $(window).height();
    $(window).scroll(function (e) {
        resizePosition(this,tarheight,viewheight);
    });
    resizePosition(window,tarheight,viewheight);
});

//调整浮动位置
function resizePosition(obj,tarheight,viewheight) {
    var wheight = $(this).scrollTop();
    var cheight = $('body').get(0).scrollHeight;
    if( wheight > tarheight){
        //不可见
        $('.left-channel').css('top','10px');
        $('.share-box').css('top','10px');
    }else{
        //可见
        $('.left-channel').css('top',50-wheight+'px');
        $('.share-box').css('top',105-wheight+'px');
    }
    if(viewheight+wheight >= cheight){
        loadArticleList();
    }
}

/**
 * 修改菜单的选中样式
 */
function changeMenuActive() {
    var w = window;
    var mlis = $('.left-channel-ul').find('li');
    var href = window.location.href;
    $.each(mlis,function (n,m) {
        var li =  $(m);
        var mHost = w.location.protocol+'//'+w.location.host+li.attr('data');
        if(mHost == href){
            li.attr('class','active');
        }
    })
}


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


