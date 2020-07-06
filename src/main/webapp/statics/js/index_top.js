$(document).ready(function () {
    //小图片，大图片，首页分类的游戏及其rank
    $.ajax({
        /*如果传的是0那就获取整个列表，反之limit*/
        "url": "game/List/top/0",
        "type": "get",
        "success": function (result) {
            console.log(result);
            var items = result.extend.rank;
            $.each(items,function (index,item) {
                var article=$("<article style=\"position: absolute; width: 100%; opacity: 0;\"></article>");
                var aLabl=$("<a></a>").attr("href","#");
                var littlePic = $("<div></div>").addClass("banner-top").append($("<img/>").addClass("img-responsive").attr("src","/statics/images/top/top1/"+item.gameU.littlePic));
                var bigPic = $("<div></div>").addClass("banner-top banner-bottom").append($("<img/>").addClass("img-responsive").attr("src","/statics/images/top/top2/"+item.gameU.bigPic));
                var undiv=$("<div></div>").addClass("clearfix");
                article.append($("<div></div>").addClass("banner-wrap").append(aLabl.append(littlePic).append(bigPic)).append(undiv));
                article.appendTo($(".wmuSliderWrapper"));
            })
            $('.example1').wmuSlider({
                pagination: true,
                nav: false,
            });
        },
        "error": function () {
            alert("error");
        }
    });


})



