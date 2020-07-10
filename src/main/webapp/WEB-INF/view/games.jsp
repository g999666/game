<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="CN">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<head>
<title>Games</title>
<link href="${APP_PATH}/statics/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${APP_PATH}/statics/js/jquery.min.js"></script>
<!-- Custom Theme files -->
<!--theme-style-->
<link href="${APP_PATH}/statics/css/style1.css" rel="stylesheet" type="text/css" media="all" />
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Games Center Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--fonts-->
<link href='#css?family=Montserrat+Alternates:400,700' rel='stylesheet' type='text/css'>
<link href='#css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
<!--//fonts-->
<script src="${APP_PATH}/statics/js/modernizr.custom.js"></script>
	<link rel="stylesheet" type="text/css" href="${APP_PATH}/statics/css/component.css" />
</head>
<body> 
<!--header-->
<%@include file="header.jsp"%>


<!--content-->
	<div class="container">
			<div class="games">
				<h2>${key}</h2>
			<div class="wrap">	
			<div class="main">
				<ul id="og-grid" class="og-grid">
					</ul>
				</div>
			</div>
		</div>
	</div>
<nav id="page_nav_area">
<%--	<ul class="pagination">
		<li class="disabled"><a href="#" aria-label="Previous"><span aria-hidden="true">«</span></a></li>
		<li class="active"><a href="#">1 <span class="sr-only">(current)</span></a></li>
		<li><a href="#">2 <span class="sr-only"></span></a></li>
		<li><a href="#">3 <span class="sr-only"></span></a></li>
		<li><a href="#">4 <span class="sr-only"></span></a></li>
		<li><a href="#">5 <span class="sr-only"></span></a></li>
		<li> <a href="#" aria-label="Next"><span aria-hidden="true">»</span> </a> </li>
	</ul>--%>
</nav>
<%@include file="footer.jsp"%>
<script src="${APP_PATH}/statics/js/grid.js"></script>
<script>
	$(function() {
		to_page(1);
		function to_page(pageNum) {
			$.ajax({
				"url":"/game/"+$("h2").text()+"/"+pageNum,
				"type": "get",
				"success": function (result) {
					console.log(result);
					build_content(result);
					build_pageField(result);
				},
				"error": function () {
					alert("error");
				}
			});
			function build_content(result) {
				$(".main").empty();
				Grid.init();
				var items = result.extend.page.list;
				$.each(items, function (index, item) {
					var ull=$("<div></div>").attr("id","og-grid").addClass("og-grid");
					var lil = $("<li></li>");
					var al = $("<a></a>").attr("href", "#").attr("data-largesrc", "/statics/images/thumbs/thumb1/" + item.gameU.pic).attr("data-title", item.gameName).attr("data-description", item.gameDesc);
					var il = $("<img/>").addClass("img-responsive").attr("src", "/statics/images/thumbs/thumb2/" + item.gameU.pic).attr("alt", "img" + index);
					ull= ull.append(lil);
					ull.appendTo(".main");
					lil = lil.append(al.append(il)).appendTo('#og-grid');
					Grid.addItems(lil);
				})
				var cli = $("<div></div>").addClass("clearfix");
				cli.appendTo('#og-grid');
			}
			function build_pageField(result) {
				$("#page_nav_area").empty();
				var ul=$("<ul></ul>").addClass("pagination");
				var firstPageli=$("<li></li>").append($("<a></a>").append("首页").attr("href","#"));
				var prePageLi=$("<li></li>").append($("<a></a>").append("&laquo;"));
				if (result.extend.page.hasPreviousPage==false){
					firstPageli.addClass("disabled");
					prePageLi.addClass("disabled");
				}else {
					firstPageli.click(function () {
						to_page(1)
					});
					prePageLi.click(function () {
						to_page(result.extend.page.pageNum-1);
					})
				}
				var lastPageLi=$("<li></li>").append($("<a></a>").append("末页").attr("href","#"));
				var nextPageLi=$("<li></li>").append($("<a></a>").append("&raquo;"));
				if (result.extend.page.hasNextPage==false){
					nextPageLi.addClass("disabled");
					lastPageLi.addClass("disabled");
				}else {
					lastPageLi.click(function () {
						to_page(result.extend.page.pages);
					});
					nextPageLi.click(function () {
						to_page(result.extend.page.pageNum+1);
					})
				}
				ul.append(firstPageli).append(prePageLi);
				$.each(result.extend.page.navigatepageNums,function (index,item) {
					var numLi=$("<li></li>").append($("<a></a>").append(item));
					if (result.extend.page.pageNum==item){
						numLi.addClass("active");
					}
					numLi.click(function () {
						to_page(item);
					})
					ul.append(numLi);
					ul.append(nextPageLi).append(lastPageLi);
					var navEle=$("<nav></nav>").append(ul);
					navEle.appendTo("#page_nav_area");
				})
			}
		}
	});
</script>
</body>
</html>