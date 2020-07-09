<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="CN">
<head>
    <%pageContext.getRequest().setAttribute("APP_PATH", request.getContextPath());%>
    <title>Home</title>
    <link href="statics/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <script src="statics/js/jquery.min.js"></script>
    <script src="statics/js/index_top.js"></script>
    <link href="statics/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Games Center Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!--fonts-->
    <%--    <link href='#css?family=Montserrat+Alternates:400,700' rel='stylesheet' type='text/css'>
        <link href='#css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>--%>
    <!--//fonts-->
    <script src="statics/js/modernizr.custom.js"></script>
    <link rel="stylesheet" type="text/css" href="statics/css/component.css"/>
    <script src="/statics/js/grid.js"></script>

</head>
<body>

<!--header-->
<%@include file="WEB-INF/view/header.jsp" %>
<!--banner-->

<div class="banner">
    <div class="container">
        <div class="wmuSlider example1">
            <div class="wmuSliderWrapper">

            </div>

        </div>
        <!---->
        <script src="${APP_PATH}/statics/js/jquery.wmuSlider.js"></script>
        <script>
            $('.example1').wmuSlider({
                pagination: true,
                nav: false,
            });
        </script>

    </div>
</div>



<div class="content">
    <div class="container">
        <div class="content-top">
            <h2 class="new">新游戏</h2>
            <div class="wrap">
                <div class="main">
 <%--                   <ul id="og-grid" class="og-grid">
&lt;%&ndash;                        <li>
                            <a href="#" data-largesrc="/statics/images/1.jpg" data-title="Subway Surfers" data-description="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque malesuada purus a convallis dictum. Phasellus sodales varius diam, non sagittis lectus. Morbi id magna ultricies ipsum condimentum scelerisque vel quis felis.. Donec et purus nec leo interdum sodales nec sit amet magna. Ut nec suscipit purus, quis viverra urna.">
                                <img class="img-responsive" src="/statics/images/thumbs/1.jpg" alt="img01"/>
                            </a>
                        </li>
                        <div class="clearfix"> </div>&ndash;%&gt;
                    </ul>--%>
                </div>
            </div>
        </div>

    </div>
    <!----->
    <div class="col-mn">
        <div class="container">
            <div class="col-mn2" id="posterField">
            </div>
        </div>
    </div>
    <!---->
    <div class="featured">
        <div class="container" id="gameTypes">
        </div>
    </div>
</div>



<%@include file="WEB-INF/view/footer.jsp" %>

<script>
    $.ajax({
        "url": "game/List/new/9",
        "type": "get",
        "success": function (result) {
            Grid.init();
            var items = result.extend.rank;
            $.each(items, function (index, item) {
                var ull=$("<div></div>").attr("id","og-grid").addClass("og-grid");
                var lil = $("<li></li>");
                var al = $("<a></a>").attr("href", "#").attr("data-largesrc", "/statics/images/thumbs/thumb1/" + item.gameU.pic).attr("data-title", item.gameName).attr("data-description", item.gameDesc);
                var il = $("<img/>").addClass("img-responsive").attr("src", "/statics/images/thumbs/thumb2/" + item.gameU.pic).attr("alt", "img" + index);
                ull = ull.append(lil);
                ull.appendTo(".main");
                lil = lil.append(al.append(il)).appendTo('#og-grid');
                Grid.addItems(lil);
            })
            var cli = $("<div></div>").addClass("clearfix");
            cli.appendTo('#og-grid');
        },
        "error": function () {
            alert("error");
        }
    });

</script>
</body>
</html>