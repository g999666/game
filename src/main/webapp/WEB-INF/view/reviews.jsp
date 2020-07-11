<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="CN">
<head>
    <title>Reviews</title>
    <link href="${APP_PATH}/statics/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <script src="${APP_PATH}/statics/js/jquery.min.js"></script>
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
<%--    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">--%>
    <link rel="stylesheet" href="${APP_PATH}/statics/css/bootstrap.css">
    <script src="${APP_PATH}/statics/js/bootstrap.min.js"></script>
	<script src="/statics/js/jquery.magnific-popup.js" type="text/javascript"></script>
	<script type="text/javascript" src="/statics/js/modernizr.custom.53451.js"></script>
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
<div id="carousel-example-generic" class="carousel slide" data-ride="carousel" data-interval="3000">
    <!-- Indicators -->
    <ol class="carousel-indicators">
        <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
        <li data-target="#carousel-example-generic" data-slide-to="1"></li>
        <li data-target="#carousel-example-generic" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox" id="reviews_Click">
        <div class="item active">
            <img src="${APP_PATH}/statics/images/blog/sin1.jpg" alt="...">
            <div class="carousel-caption">
                dfdfdfdfdfdf
            </div>
        </div>
        <div class="item">
            <img src="${APP_PATH}/statics/images/blog/sin1.jpg" alt="...">
            <div class="carousel-caption">
                ...
            </div>
        </div>
        <div class="item">
            <img src="${APP_PATH}/statics/images/blog/sin1.jpg" alt="...">
            <div class="carousel-caption">
                ...
            </div>
        </div>
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

<!-- banner -->

<!-- gallery -->
<div class="gallery-w3layouts" id="gallery">
    <div class="container">
        <h2>Exclusive Games</h2>
        <div class="gallery-grids">
            <div class="gallery-grid">
                <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s"
                   href="#small-dialog">
                    <img src="/statics/images/temp/g1.jpg" alt=" " class="img-responsive zoom-img"/>
                </a>
                <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s"
                   href="#small-dialog2">
                    <img src="/statics/images/temp/g2.jpg" alt=" " class="img-responsive zoom-img"/>
                </a>
            </div>
            <div class="gallery-grid">
                <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s"
                   href="#small-dialog3">
                    <img src="/statics/images/temp/g3.jpg" alt=" " class="img-responsive zoom-img"/>
                </a>
                <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s"
                   href="#small-dialog4">
                    <img src="/statics/images/temp/g5.jpg" alt=" " class="img-responsive zoom-img"/>
                </a>
            </div>
            <div class="gallery-grid">
                <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s"
                   href="#small-dialog5">
                    <img src="/statics/images/temp/g6.jpg" alt=" " class="img-responsive zoom-img"/>
                </a>
                <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s"
                   href="#small-dialog6">
                    <img src="/statics/images/temp/g7.jpg" alt=" " class="img-responsive zoom-img"/>
                </a>
            </div>
            <div class="gallery-grid">
                <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s"
                   href="#small-dialog7">
                    <img src="/statics/images/temp/g4.jpg" alt=" " class="img-responsive zoom-img"/>
                </a>
                <a class="book popup-with-zoom-anim button-isi zoomIn animated" data-wow-delay=".5s"
                   href="#small-dialog8">
                    <img src="/statics/images/temp/g8.jpg" alt=" " class="img-responsive zoom-img"/>
                </a>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!--//gallery -->
<script>
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
</script>
<div class="pop-up">
    <div id="small-dialog" class="mfp-hide book-form">
        <div class="pop-up-content-agileits-w3layouts">
            <div class="col-md-6 w3ls-left">
                <img src="/statics/images/temp/g1.jpg" alt=" " class="img-responsive zoom-img"/>
            </div>
            <div class="col-md-6 w3ls-right">
                <h4>Game-1</h4>
                <p>Duis sodales nibh vitae augue feugiat efficitur. Sed vel urna sollicitudin, interdum massa nec,
                    sagittis massa. </p>
                <p class="agileits">Etiam porttitor neque enim, sit amet mollis est sollicitudin sed.</p>
                <div class="span span1">
                    <p class="left">NAME</p>
                    <p class="right">: Sed Perst</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span2">
                    <p class="left">DEVELOPER</p>
                    <p class="right">: Martina</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span3">
                    <p class="left">REQUIRES</p>
                    <p class="right">: 2GB Hard Disk Space</p>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<div class="pop-up">
    <div id="small-dialog2" class="mfp-hide book-form">
        <div class="pop-up-content-agileits-w3layouts">
            <div class="col-md-6 w3ls-left">
                <img src="/statics/images/temp/g2big.jpg" alt=" " class="img-responsive zoom-img"/>
            </div>
            <div class="col-md-6 w3ls-right">
                <h4>Game-2</h4>
                <p>Duis sodales nibh vitae augue feugiat efficitur. Sed vel urna sollicitudin, interdum massa nec,
                    sagittis massa. </p>
                <p class="agileits">Etiam porttitor neque enim, sit amet mollis est sollicitudin sed.</p>
                <div class="span span1">
                    <p class="left">NAME</p>
                    <p class="right">: Vivamus</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span2">
                    <p class="left">DEVELOPER</p>
                    <p class="right">: Quentin</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span3">
                    <p class="left">REQUIRES</p>
                    <p class="right">: 3GB Hard Disk Space</p>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<div class="pop-up">
    <div id="small-dialog3" class="mfp-hide book-form">
        <div class="pop-up-content-agileits-w3layouts">
            <div class="col-md-6 w3ls-left">
                <img src="/statics/images/temp/g3big.jpg" alt=" " class="img-responsive zoom-img"/>
            </div>
            <div class="col-md-6 w3ls-right">
                <h4>Game-3</h4>
                <p>Duis sodales nibh vitae augue feugiat efficitur. Sed vel urna sollicitudin, interdum massa nec,
                    sagittis massa. </p>
                <p class="agileits">Etiam porttitor neque enim, sit amet mollis est sollicitudin sed.</p>
                <div class="span span1">
                    <p class="left">NAME</p>
                    <p class="right">: Venenatis</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span2">
                    <p class="left">DEVELOPER</p>
                    <p class="right">: Stanley</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span3">
                    <p class="left">REQUIRES</p>
                    <p class="right">: 1GB Hard Disk Space</p>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<div class="pop-up">
    <div id="small-dialog4" class="mfp-hide book-form">
        <div class="pop-up-content-agileits-w3layouts">
            <div class="col-md-6 w3ls-left">
                <img src="/statics/images/temp/g5.jpg" alt=" " class="img-responsive zoom-img"/>
            </div>
            <div class="col-md-6 w3ls-right">
                <h4>Game-4</h4>
                <p>Duis sodales nibh vitae augue feugiat efficitur. Sed vel urna sollicitudin, interdum massa nec,
                    sagittis massa. </p>
                <p class="agileits">Etiam porttitor neque enim, sit amet mollis est sollicitudin sed.</p>
                <div class="span span1">
                    <p class="left">NAME</p>
                    <p class="right">: Interdum</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span2">
                    <p class="left">DEVELOPER</p>
                    <p class="right">: Spielberg</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span3">
                    <p class="left">REQUIRES</p>
                    <p class="right">: 3GB Hard Disk Space</p>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<div class="pop-up">
    <div id="small-dialog5" class="mfp-hide book-form">
        <div class="pop-up-content-agileits-w3layouts">
            <div class="col-md-6 w3ls-left">
                <img src="/statics/images/temp/g6.jpg" alt=" " class="img-responsive zoom-img"/>
            </div>
            <div class="col-md-6 w3ls-right">
                <h4>Game-5</h4>
                <p>Duis sodales nibh vitae augue feugiat efficitur. Sed vel urna sollicitudin, interdum massa nec,
                    sagittis massa. </p>
                <p class="agileits">Etiam porttitor neque enim, sit amet mollis est sollicitudin sed.</p>
                <div class="span span1">
                    <p class="left">NAME</p>
                    <p class="right">: Faucibus</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span2">
                    <p class="left">DEVELOPER</p>
                    <p class="right">: Cameron</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span3">
                    <p class="left">REQUIRES</p>
                    <p class="right">: 2GB Hard Disk Space</p>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<div class="pop-up">
    <div id="small-dialog6" class="mfp-hide book-form">
        <div class="pop-up-content-agileits-w3layouts">
            <div class="col-md-6 w3ls-left">
                <img src="/statics/images/temp/g7big.jpg" alt=" " class="img-responsive zoom-img"/>
            </div>
            <div class="col-md-6 w3ls-right">
                <h4>Game-6</h4>
                <p>Duis sodales nibh vitae augue feugiat efficitur. Sed vel urna sollicitudin, interdum massa nec,
                    sagittis massa. </p>
                <p class="agileits">Etiam porttitor neque enim, sit amet mollis est sollicitudin sed.</p>
                <div class="span span1">
                    <p class="left">NAME</p>
                    <p class="right">: Tincidunt</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span2">
                    <p class="left">DEVELOPER</p>
                    <p class="right">: Jackson</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span3">
                    <p class="left">REQUIRES</p>
                    <p class="right">: 4GB Hard Disk Space</p>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<div class="pop-up">
    <div id="small-dialog7" class="mfp-hide book-form">
        <div class="pop-up-content-agileits-w3layouts">
            <div class="col-md-6 w3ls-left">
                <img src="/statics/images/temp/g4big.jpg" alt=" " class="img-responsive zoom-img"/>
            </div>
            <div class="col-md-6 w3ls-right">
                <h4>Game-7</h4>
                <p>Duis sodales nibh vitae augue feugiat efficitur. Sed vel urna sollicitudin, interdum massa nec,
                    sagittis massa. </p>
                <p class="agileits">Etiam porttitor neque enim, sit amet mollis est sollicitudin sed.</p>
                <div class="span span1">
                    <p class="left">NAME</p>
                    <p class="right">: Vestibulum</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span2">
                    <p class="left">DEVELOPER</p>
                    <p class="right">: Daniel</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span3">
                    <p class="left">REQUIRES</p>
                    <p class="right">: 2GB Hard Disk Space</p>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<div class="pop-up">
    <div id="small-dialog8" class="mfp-hide book-form">
        <div class="pop-up-content-agileits-w3layouts">
            <div class="col-md-6 w3ls-left">
                <img src="/statics/images/temp/g8.jpg" alt=" " class="img-responsive zoom-img"/>
            </div>
            <div class="col-md-6 w3ls-right">
                <h4>Game-8</h4>
                <p>Duis sodales nibh vitae augue feugiat efficitur. Sed vel urna sollicitudin, interdum massa nec,
                    sagittis massa. </p>
                <p class="agileits">Etiam porttitor neque enim, sit amet mollis est sollicitudin sed.</p>
                <div class="span span1">
                    <p class="left">NAME</p>
                    <p class="right">: Vehicula ligula</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span2">
                    <p class="left">DEVELOPER</p>
                    <p class="right">: Cyrill</p>
                    <div class="clearfix"></div>
                </div>
                <div class="span span3">
                    <p class="left">REQUIRES</p>
                    <p class="right">: 3GB Hard Disk Space</p>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        $("#review-XIAN").popover({
            trigger: 'manual',
            placement: 'right', //placement of the popover. also can use top, bottom, left or right
            title: '<div style="text-align:center; color:red; text-decoration:underline; font-size:14px;"> Muah ha ha</div>',
            html: 'true', //needed to show html of course
            content: '<div id="popOverBox"><img src="${APP_PATH}/statics/images/all/re.jpg" width="251" height="201" /></div>',
            animation: false
        }).on("mouseenter", function () {
            var _this = this;
            $(this).popover("show");
            $(this).siblings(".popover").on("mouseleave", function () {
                $(_this).popover('hide');
            });
        }).on("mouseleave", function () {
            var _this = this;
            setTimeout(function () {
                if (!$(".popover:hover").length) {
                    $(_this).popover("hide")
                }
            }, 100);
        });
    });

</script>
<%@include file="footer.jsp" %>

</body>
</html>