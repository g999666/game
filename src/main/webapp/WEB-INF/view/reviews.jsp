<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="CN">
<head>
    <title>Reviews</title>
    <%--     <link href="http://libs.baidu.com/bootstrap/3.0.3/css/bootstrap.min.css" rel="stylesheet">
  <%--   <script src="http://libs.baidu.com/jquery/2.0.0/jquery.min.js"></script>
      <script src="http://libs.baidu.com/bootstrap/3.0.3/js/bootstrap.min.js"></script>--%>
    <link rel="stylesheet" href="/statics/css/style2.css">
    <link href="${APP_PATH}/statics/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="/statics/css/bootstrap.css">
    <script src="${APP_PATH}/statics/js/jquery.min.js"></script>
    <script src="${APP_PATH}/statics/js/bootstrap.min.js"></script>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href="${APP_PATH}/statics/css/style1.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/statics/css/popup-box.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="/statics/css/style.css" rel="stylesheet" type="text/css" media="all"/>
	<%-- <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
   <meta name="keywords" content="Games Center Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>--%>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);
    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <link href='#css?family=Montserrat+Alternates:400,700' rel='stylesheet' type='text/css'>
    <link href='#css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
    <script src="${APP_PATH}/statics/js/reviews.js"></script>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
<%--    <link rel="stylesheet" href="${APP_PATH}/statics/css/bootstrap.css">--%>
    <style>
        /* Make the image fully responsive */
        .carousel-inner img {
            width: 100%;
            height: 100%;
        }
    </style>
</head>
<body>
<!--header-->
<%@include file="header.jsp" %>

<!--content-->
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="6000">
    <!-- Indicators -->
    <ol class="carousel-indicators">
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox" id="reviews_Click">

    </div>

    <!-- Controls -->
    <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
        <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
        <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>

<div class="gallery-w3layouts" id="gallery">
    <div class="container">
        <%@include file="gameList.jsp"%>
    </div>
</div>
<!--//gallery -->
<%--<script>
    $(document).ready(function () {
        $('.popup-with-zoom-anim').magnificPopup({
            type: 'inline',
            fixedContentPos: false,
            fixedBgPos: true,
            overflowY: 'auto',
            closeBtnInside: true,
            preloader: false,
            midClick: true,
            removalDelay: 300,
            mainClass: 'my-mfp-zoom-in'
        });

    });
</script>--%>

<%@include file="footer.jsp" %>

</body>
<script>
    $.ajax({
        "url": "game/gethotCharge/6",
            "type": "get",
            "success": function (result) {
                var items = result.extend.rank;
                $.each(items,function (index,item) {
                    var fa=$("        <div class=\"item\">\n" +
                        "            <img src=\"${APP_PATH}/statics/images/blog/"+item.gameU.pic+"\" alt=\""+item.gameDesc+"\">\n" +
                        "        </div>");
                    var field = $("<li data-target=\"#carousel-example-generic\" data-slide-to=\"" + index + "\"></li>");
                    field.appendTo(".carousel-indicators");
                    fa.appendTo("#reviews_Click");
                })
                $(".carousel-indicators li:first").addClass("active");
                $("#reviews_Click div:first").addClass("active");
            },
            "error":function () {
                alert("error");
            }
    })
</script>
</html>