<%--
  Created by IntelliJ IDEA.
  User: 32867
  Date: 2020/7/5
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%pageContext.getRequest().setAttribute("APP_PATH", request.getContextPath());%></>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <script src="/statics/js/jquery.min.js"></script>
    <script>
        $.ajax({
            "url": "/game/getGameTypes",
            "type": "get",
            "success": function (result) {
                $.each(result.extend.types, function (index, item) {
                    $(".dropdown-content").append($("<a></a>").attr("href", "/games/" + item).append(item));
                })
            }, "error": function () {
                alert("游戏类查询异常");
            }
        })
    </script>
</head>
<body>
<div class="header">
    <div class="top-header">
        <div class="container">
            <div class="top-head">
                <ul class="header-in">
                    <li><a href="#"> 帮助</a></li>
                    <li><a href="contact.jsp"> 反馈</a></li>
                    <li><a href="#"> 如何使用</a></li>
                </ul>
                <div class="search">
                    <form>
                        <input type="text" value="搜索些什么 ?" onfocus="this.value = '';"
                               onblur="if (this.value == '') {this.value = 'search about something ?';}">
                        <input type="submit" value="">
                    </form>
                </div>

                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!---->

    <div class="header-top">
        <div class="container">
            <div class="head-top">
                <div class="logo">

                    <h1><a href="index.jsp"><span> G</span>ames <span>C</span>enter</a></h1>

                </div>
                <div class="top-nav">
                    <span class="menu"><img src="${APP_PATH}/statics/images/menu.png" alt=""> </span>

                    <ul>
                        <li class="active"><a class="color1" href="${APP_PATH}/index.jsp">主页</a></li>
                        <li><%--<a class="color2" href="/games/all">游戏</a>--%>

                            <a class="dropdown color2 dropbtn">
                                游戏分类↓↓↓
                            </a>
                            <div class="dropdown-content">
                                <a href="/games/all">all</a>

                            </div>

                        </li>
                        <li><a class="color3" href="/reviews">收费</a></li>
                        <li><a class="color5" href="/blog">论坛</a></li>
                        <li><a class="color6" href="/contact">反馈</a></li>
                        <c:if test="${empty sessionScope.user.userName}">
                            <li id="ac"><a id="a" class="color7" href="/login" target="myFrameName">登录/注册</a></li>
                        </c:if>
                        <c:if test="${not empty sessionScope.user.userName}">
                            <li><a class="color7" href="#">${sessionScope.user.userName}</a></li>
                        </c:if>
                        <div class="clearfix"></div>
                    </ul>

                    <!--script-->
                    <script>
                        $("span.menu").click(function () {
                            $(".top-nav ul").slideToggle(500, function () {
                            });
                        });
                    </script>

                </div>

                <div class="clearfix"></div>
            </div>
        </div>
    </div>
</div>

<style type="text/css">
    /*    #con{
            width: 200px;
            height: 200px;
            background-color: #1E90FF;
        }*/
    .center-in-center {

        position: fixed;
        top: 50%;
        left: 50%;
        z-index: 9999;
        -webkit-transform: translate(-50%, -50%);
        -moz-transform: translate(-50%, -50%);
        -ms-transform: translate(-50%, -50%);
        -o-transform: translate(-50%, -50%);
        transform: translate(-50%, -50%);
    }
</style>
<div class="center-in-center" id="con" style="width: 600px; height: 500px; display: none; overflow: hidden;">
    <i id="close"
       style="width: 30px; height: 30px; background: #ccc; color: #fff; float: right; font-size: 26px; line-height: 30px; text-align: center; font-style: normal;">×</i>
    <iframe id="myFrameId" style="width: 100%; height: 100%;" name="myFrameName" scrolling="no"
            frameborder="0"></iframe>
</div>

<script type="text/javascript">

    document.getElementById('ac').onclick = function () {
        document.getElementById('con').style.display = 'block'
        document.getElementById('a').click()
    }
    document.getElementById('close').onclick = function () {
        document.getElementById('con').style.display = 'none'
    }

</script>
<style>
    /*    .dropbtn {
            background-color: #4CAF50;
            color: white;
            padding: 16px;
            font-size: 16px;
            border: none;
            cursor: pointer;
        }*/

    .dropdown {
        position: relative;
        display: inline-block;
    }

    .dropdown-content {
        z-index: 999;
        display: none;
        position: absolute;
        background-color: #f9f9f9;
        min-width: 160px;
        box-shadow: 0px 8px 16px 0px rgba(0, 0, 0, 0.2);
    }

    .dropdown-content a {
        color: black;
        padding: 12px 16px;
        text-decoration: none;
        display: block;
    }

    .dropdown-content a:hover {
        background-color: #f3a946
    }

    .color2:hover .dropdown-content {
        display: block;
    }

    .dropdown:hover {
        background-color: #3e8e41;
    }
</style>
<script>
    /*    $(".color2").click(function () {
            $(".dropdown-content").css("display", "block");
        })
        $(".color2").click(function () {
            $(".dropdown-content").css("display", "none");
        })*/
    $(".color2").click(function () {
        $(".dropdown-content").toggle();
    });

</script>
</body>
</html>
