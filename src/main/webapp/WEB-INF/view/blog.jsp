<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="CN">
<head>
    <title>Blog</title>
    <link href="${APP_PATH}/statics/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${APP_PATH}/statics/js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="${APP_PATH}/statics/css/style.css" rel="stylesheet" type="text/css" media="all"/>
    <!--//theme-style-->
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
    <link href='#css?family=Montserrat+Alternates:400,700' rel='stylesheet' type='text/css'>
    <link href='#css?family=PT+Sans:400,700' rel='stylesheet' type='text/css'>
    <!--//fonts-->
</head>
<body>
<!--header-->
<%@include file="header.jsp" %>

<!--content-->
<div class="blog">
    <div class="container">
        <h2>聊天打屁</h2>
        <div class="single-inline">
            <div class="blog-to">
                <a href="single.jsp"><img class="img-responsive sin-on" src="${APP_PATH}/statics/images/blog/sin1.jpg" alt=""/></a>
                <div class="blog-top">
                    <div class="blog-left">
                        <b>23</b>
                        <span>July</span>
                    </div>
                    <div class="top-blog">
                        <a class="fast" href="single.jsp">It is a long established fact that a reader will be
                            distracted </a>
                        <p>Posted by <a href="single.jsp">Admin</a> in <a href="#">General</a> | <a href="single.jsp">10
                            Comments</a></p>
                        <p class="sed">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem
                            Ipsum has been the industry's standard dummy text ever since the 1500
                            when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                            It has survived not only five centuries, but also the leap.
                            Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has
                            been the industry's standard dummy text ever since the 1500
                            when an unknown printer took a galley of type and scrambled it to make a type specimen book.
                            It has survived not only five centuries, but also the leap.</p>
                        <a href="single.jsp" class="more">Readmore<span> </span></a>

                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <nav id="page_nav_area">

        </nav>
    </div>
</div>

<script>
    $(function () {
        to_page(1);

        function to_page(pageNum) {
            $.ajax({
                "url": "/blog/all/" + pageNum,
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
                 $(".single-inline").empty();
                var items=result.extend.page.list;
                $.each(items, function (index, item) {
                    var time=item.topic.createTime;
                    time=time.replace(new RegExp(/-/gm) ,"/");
                    var date = new Date(time).toUTCString();
                    let split = date.split(' ');
                    var blogTo = $("<div></div>").addClass("blog-to");
                    blogTo.append($("<a></a>").attr("href", "#").append($("<img/>").addClass("img-responsive sin-on").attr("src", "/statics/images/blog/" + item.gameU.pic)));
                    var $blogTop=$("<div></div>").addClass("blog-top");
                        var $blogLeft=$("<div></div>").addClass("blog-left").append($("<b>"+split[2]+"</b>")).append("<span>"+split[1]+"</span>");
                        var $topBlog = $("<div></div>").addClass("top-blog");
                            $topBlog.append($("<a></a>").addClass("fast").attr("href", "#").append("<b>公告</b>:"+item.topic.content));
                            $topBlog.append($("<p></p>").append("编辑自").append($("<a></a>").attr("href","#").append(item.user.userName)).append(" | "+item.id+"条评论"))
                            $topBlog.append($("<p></p>").addClass("sed").append("12312321321321312"));
                            $topBlog.append($("<a></a>").attr("href","#").addClass("more").append("Readmore <span> </span>"));
                    $blogTop.append($blogLeft);
                    $blogTop.append($topBlog);
                    $blogTop.append("<div class=\"clearfix\"> </div>");
                    $blogTop.appendTo(blogTo);
                    blogTo.appendTo(".single-inline");
                });

            }

            function build_pageField(result) {
                $("#page_nav_area").empty();
                var ul = $("<ul></ul>").addClass("pagination");
                var firstPageli = $("<li></li>").append($("<a></a>").append("首页").attr("href", "#"));
                var prePageLi = $("<li></li>").append($("<a></a>").append("&laquo;"));
                if (result.extend.page.hasPreviousPage == false) {
                    firstPageli.addClass("disabled");
                    prePageLi.addClass("disabled");
                } else {
                    firstPageli.click(function () {
                        to_page(1)
                    });
                    prePageLi.click(function () {
                        to_page(result.extend.page.pageNum - 1);
                    })
                }
                var lastPageLi = $("<li></li>").append($("<a></a>").append("末页").attr("href", "#"));
                var nextPageLi = $("<li></li>").append($("<a></a>").append("&raquo;"));
                if (result.extend.page.hasNextPage == false) {
                    nextPageLi.addClass("disabled");
                    lastPageLi.addClass("disabled");
                } else {
                    lastPageLi.click(function () {
                        to_page(result.extend.page.pages);
                    });
                    nextPageLi.click(function () {
                        to_page(result.extend.page.pageNum + 1);
                    })
                }
                ul.append(firstPageli).append(prePageLi);
                $.each(result.extend.page.navigatepageNums, function (index, item) {
                    var numLi = $("<li></li>").append($("<a></a>").append(item));
                    if (result.extend.page.pageNum == item) {
                        numLi.addClass("active");
                    }
                    numLi.click(function () {
                        to_page(item);
                    })
                    ul.append(numLi);
                    ul.append(nextPageLi).append(lastPageLi);
                    var navEle = $("<nav></nav>").append(ul);
                    navEle.appendTo("#page_nav_area");
                })
            }
        }
    });
</script>
<%@include file="footer.jsp" %>

</body>
</html>