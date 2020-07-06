<%--
  Created by IntelliJ IDEA.
  User: 32867
  Date: 2020/7/5
  Time: 9:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="header" >
    <div class="top-header" >
        <div class="container">
            <div class="top-head" >
                <ul class="header-in">
                    <li ><a href="#" >  帮助</a></li>
                    <li><a href="contact.jsp">   反馈</a></li>
                    <li ><a href="#" >   如何使用</a></li>
                </ul>
                <div class="search">
                    <form>
                        <input type="text" value="搜索些什么 ?" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'search about something ?';}" >
                        <input type="submit" value="" >
                    </form>
                </div>

                <div class="clearfix"> </div>
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
                        <li class="active"><a class="color1" href="index.jsp">主页</a></li>
                        <li><a class="color2" href="/games"  >游戏</a></li>
                        <li><a class="color3" href="/reviews"  >评论</a></li>
                        <li><a class="color4" href="/404" >新闻</a></li>
                        <li><a class="color5" href="/blog"  >论坛</a></li>
                        <li><a class="color6" href="/contact" >反馈</a></li>
                        <div class="clearfix"></div>
                    </ul>

                    <!--script-->
                    <script>
                        $("span.menu").click(function(){
                            $(".top-nav ul").slideToggle(500, function(){
                            });
                        });
                    </script>

                </div>

                <div class="clearfix"> </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>
