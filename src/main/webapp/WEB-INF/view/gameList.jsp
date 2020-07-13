<%--
  Created by IntelliJ IDEA.
  User: 32867
  Date: 2020/7/12
  Time: 18:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="CN">
<head>
    <title>Title</title>
</head>
<body>
<div id="tour">
    <section class="center ">
        <h2>精品收费游戏</h2>
        <p>买不了吃亏，卖不了上当</p>
    </section>

</div>
<script>
    $(function () {
        $.ajax({
            "url": "game/getCharge",
            "type": "get",
            "success": function (result) {
                var items = result.extend.rank;
                $.each(items,function (index,item) {
                    var fa=$("    <figure>\n" +
                        "        <img src=\"/statics/images/all/"+item.gameU.pic+"\" alt=\"\">\n" +
                        "        <figcaption>\n" +
                        "            <div class=\"tour_title\">\n" +
                        "                <strong>&lt;"+item.gameName+"&gt;</strong> "+item.gameDesc+"\n" +
                        "            </div>\n" +
                        "            <div class=\"info\">\n" +
                        "                <a href=\"#\" class=\"sat\">查看更多>>></a>\n" +
                        "                <span class=\"price\"> ￥<strong>"+item.gameprice+"</strong></span>\n" +
                        "            </div>\n" +
                        "        </figcaption>\n" +
                        "    </figure>");
                    fa.appendTo("#tour");
                })

            }, "error": function () {
                alert("发送error");
            }
        })
    })

</script>
</body>
</html>
