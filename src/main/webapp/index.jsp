<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="CN">
<head>
    <%pageContext.getRequest().setAttribute("APP_PATH", request.getContextPath());%>
    <title>Home</title>
    <link href="statics/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <script src="statics/js/jquery.min.js"></script>
    <script src="statics/js/index_top.js"></script>
    <link href="statics/css/style1.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="statics/css/style.css" rel="stylesheet" type="text/css" media="all" />
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
    <div class="new-w3-agile">
        <div class="container" id="newGames">
            <h3>New Games</h3>

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
            var items = result.extend.rank;
            $.each(items, function (index, item) {
                var $newGames=("            <div class=\"col-md-3 new-grid-w3l view view-eighth\">\n" +
                    "                <img src=\"/statics/images/thumbs/thumb1/"+item.gameU.pic+"\" alt=\" \" />\n" +
                    "                <div class=\"mask\">\n" +
                    "                    <a href=\"single.html\"><h4>"+item.gameName+"</h4></a>\n" +
                    "                    <p>"+item.gameDesc+"</p>\n" +
                    "                </div>\n" +
                    "            </div>\n");
                $("#newGames").append($newGames);
            })
            $("#newGames").append("<div class=\"clearfix\"></div>");
        },
        "error": function () {
            alert("error");
        }
    });

</script>
</body>
</html>