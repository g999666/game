$(document).ready(function () {
    //小图片，大图片，首页分类的游戏及其rank
    $.ajax({
        /*如果传的是0那就获取整个列表，反之limit*/
        "url": "game/List/top/0",
        "type": "get",
        "success": function (result) {
            var items = result.extend.rank;
            $.each(items,function (index,item) {
                var article=$("<article style=\"position: absolute; width: 100%; opacity: 0;\"></article>");
                var aLabl=$("<a></a>").attr("href","#");
                var littlePic = $("<div></div>").addClass("banner-top").append($("<img/>").addClass("img-responsive").attr("src","/statics/images/top/top1/"+item.gameU.pic));
                var bigPic = $("<div></div>").addClass("banner-top banner-bottom").append($("<img/>").addClass("img-responsive").attr("src","/statics/images/top/top2/"+item.gameU.pic));
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

    //小图片，大图片，首页分类的游戏及其rank
    $.ajax({
        /*如果传的是0那就获取整个列表，反之limit*/
        "url": "game/List/poster/0",
        "type": "get",
        "success": function (result) {
            items=result.extend.rank;
            $.each(items,function (index,item) {
                var $h3 = $("<h3></h3>").append(item.gameName);
                var $p = $("<p></p>").append(item.gameDesc);
                var $a=$("<a></a>").append(item.gameDesc).addClass("more-in").attr("href","#");
                $("#posterField").append($h3).append($p).append($a);
                $(".col-mn").css("background-image","url(statics/images/poster/"+item.gameU.pic+")");
            })
        },
        "error": function () {
            alert("error");
        }
    });

    $.ajax({
        /*如果传的是0那就获取整个列表，反之limit*/
        "url": "game/HomeList",
        "type": "get",
        "success": function (result) {
            console.log(result);
            var maps = result.extend.homeGames;
            $.each(maps,function (key,values) {
                    var $gameType=$("<div></div>").addClass("col-md-4 latest");
                    var $teitle=$("<h4></h4>").append("<a href=games/"+key+">"+key+"</a>").appendTo($gameType);
                    $.each(values,function (index,item) {
                        var $game = $("<div></div>").addClass("late");
                            var $img=$("<img/>").addClass("img-responsive ").attr("src","/statics/images/low/" + item.gameU.pic);
                            var $al = $("<a></a>").attr("href", "#").addClass("fashion").append($img);
                            var $grid = $("<div></div>").addClass("grid-product").append($("<span></span>").append(item.gameName)).append($("<p></p>").append("<a></a>").attr("href","#").append(item.gameDesc)).append($("<a></a>").addClass("comment").attr("href", "#").append("<i></i>").append(item.id));
                            var $clearfix = $("<div></div>").addClass("clearfix");
                        $game.append($al).append($grid).append($clearfix).appendTo($gameType);
                    } )
                $gameType.appendTo("#gameTypes");
            })
        },
        "error": function () {
            alert("error");
        }
    });
})



