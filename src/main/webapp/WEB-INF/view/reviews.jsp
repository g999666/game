<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="CN">
<head>
<title>Reviews</title>

<link href="${APP_PATH}/statics/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${APP_PATH}/statics/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="${APP_PATH}/statics/css/style.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Games Center Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='#css?family=Montserrat+Alternates:400,700' rel='stylesheet' type='text/css'>
<link href='#css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
	<script src="${APP_PATH}/statics/js/reviews.js"></script>
<!--//fonts-->
	<!--轮播图-->
	<title>轮播图</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="${APP_PATH}/statics/css/bootstrap.css">
	<script src="${APP_PATH}/statics/js/jquery.min.js"></script>

	<script src="${APP_PATH}/statics/js/bootstrap.min.js"></script>
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
<%@include file="header.jsp"%>

<!--content-->
		<div class="container" >
			<div id="carousel-example-generic" class="carousel slide" data-ride="carousel"  data-interval="3000">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox"  id="reviews_Click">
					<div class="item active">
						<img src="${APP_PATH}/statics/images/blog/sin.jpg" alt="...">
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
						<img src="${APP_PATH}/statics/images/blog/sin2.jpg" alt="...">
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


			<h2 >收费游戏</h2>
				<div class="review-md1">
				 <div class="col-md-4 sed-md" id="review-XIAN">
				 	 <div class=" col-1">
						 <a href="single.jsp"><img class="img-responsive" src="${APP_PATH}/statics/images/all/re.jpg" alt=""></a>
					 	<h4><a href="single.jsp">Sed ut perspiciatis unde omnis</a></h4>
						<p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
					 </div>
				 </div>
					<!--video视频标签，给上宽高-->
					         <video id="video" loop="loop" muted="muted" onMouseOver="this.play()" onmouseover="videoPlayback()" onmouseout="videoStopped()" onMouseOut="this.pause()" width="340px" height="190px">
					            <!--视频类型为视频和视频路径-->
					           <source type="audio/mp4" src="${APP_PATH}/statics/video/microtrailer.mp4"></source>
					       </video>
					</div>

				  <div class="col-md-4 sed-md">
				 	 <div class=" col-1">
						 <a href="single.jsp"><img class="img-responsive" src="${APP_PATH}/statics/images/all/re1.jpg" alt=""></a>
					 	<h4><a href="single.jsp">Sed ut perspiciatis unde omnis</a></h4>
						<p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
					 </div>
				 </div>
				  <div class="col-md-4 sed-md">
				 	 <div class=" col-1">
						 <a href="single.jsp"><img class="img-responsive" src="${APP_PATH}/statics/images/all/re2.jpg" alt=""></a>
					 	<h4><a href="single.jsp">Sed ut perspiciatis unde omnis</a></h4>
						<p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
					 </div>
				 </div>
				 <div class="clearfix"> </div>
				</div>
				<div class="review-md1">
				 <div class="col-md-4 sed-md">
				 	 <div class=" col-1">
						 <a href="single.jsp"><img class="img-responsive" src="${APP_PATH}/statics/images/all/re3.jpg" alt=""></a>
					 	<h4><a href="single.jsp">Sed ut perspiciatis unde omnis</a></h4>
						<p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
					 </div>
				 </div>
				  <div class="col-md-4 sed-md">
				 	 <div class=" col-1">
						 <a href="single.jsp"><img class="img-responsive" src="${APP_PATH}/statics/images/all/re4.jpg" alt=""></a>
					 	<h4><a href="single.jsp">Sed ut perspiciatis unde omnis</a></h4>
						<p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
					 </div>
				 </div>
				  <div class="col-md-4 sed-md">
				 	 <div class=" col-1">
						 <a href="single.jsp"><img class="img-responsive" src="${APP_PATH}/statics/images/all/re5.jpg" alt=""></a>
					 	<h4><a href="single.jsp">Sed ut perspiciatis unde omnis</a></h4>
						<p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
					 </div>
				 </div>
				 <div class="clearfix"> </div>
				</div>
				<div class="review-md1">
				 <div class="col-md-4 sed-md">
				 	 <div class=" col-1">
						 <a href="single.jsp"><img class="img-responsive" src="${APP_PATH}/statics/images/all/re6.jpg" alt=""></a>
					 	<h4><a href="single.jsp">Sed ut perspiciatis unde omnis</a></h4>
						<p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
					 </div>
				 </div>
				  <div class="col-md-4 sed-md">
				 	 <div class=" col-1">
						 <a href="single.jsp"><img class="img-responsive" src="${APP_PATH}/statics/images/all/re7.jpg" alt=""></a>
					 	<h4><a href="single.jsp">Sed ut perspiciatis unde omnis</a></h4>
						<p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
					 </div>
				 </div>
				  <div class="col-md-4 sed-md">
				 	 <div class=" col-1">
						 <a href="single.jsp"><img class="img-responsive" src="${APP_PATH}/statics/images/all/re1.jpg" alt=""></a>
					 	<h4><a href="single.jsp">Sed ut perspiciatis unde omnis</a></h4>
						<p>Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature</p>
					 </div>
				 </div>
				 <div class="clearfix"> </div>
				</div>
		</div>
	</div>
<script type="text/javascript">
    $(function(){
        $("#review-XIAN").popover({
            trigger:'manual',
            placement : 'right', //placement of the popover. also can use top, bottom, left or right
            title : '<div style="text-align:center; color:red; text-decoration:underline; font-size:14px;"> Muah ha ha</div>',
            html: 'true', //needed to show html of course
            content : '<div id="popOverBox"><img src="${APP_PATH}/statics/images/all/re.jpg" width="251" height="201" /></div>',
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
	<!---->
<%@include file="footer.jsp"%>

</body>
</html>