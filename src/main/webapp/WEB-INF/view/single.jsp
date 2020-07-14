<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="CN">
<html>
<head>
    <title>Single</title>
    <link href="/statics/css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="/statics/js/jquery.min.js"></script>
    <!-- Custom Theme files -->
    <!--theme-style-->
    <link href="/statics/css/style1.css" rel="stylesheet" type="text/css" media="all"/>
<%--    <link href="/statics/css/style.css" rel="stylesheet" type="text/css" media="all"/>--%>
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
<div class="container">

    <div class="single">
        <div class="blog-to">
            <img class="img-responsive sin-on" src="/statics/images/blog/${game.gameU.pic}" alt=""/>
            <div class="blog-top">
                <div class="blog-left">
                    <b>23</b>
                    <span>July</span>
                </div>
                <div class="top-blog">
                    <a class="fast" href="#">${game.topic.content}</a>
                    <p>编辑自 <a href="#">${game.user.userName}</a> | ${game.topic.topicNum}条评论</p>
                    <p class="sed">${game.gameDesc}</p>
                    <div class="col-md-6 md-in">
                        <ul class="grid-part">
                            <li><a href="${game.gameU.downloadUrl}"><i class="sign"> </i>下载</a></li>
                        </ul>
                    </div>
                    <div class="col-md-6 md-in">
                        <ul class="grid-part">
                            <li><a href="${game.gameU.officialUrl}"><i class="sign"> </i>官方地址</a></li>
                        </ul>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>


        <div class="single-middle">

            <h3>${game.topic.topicNum}条评论</h3>


        </div>
        <!---->
        <div class="single-bottom">

            <h3>Leave A Comment</h3>
            <form>
                <div class="col-md-4 comment">
                    <input type="text" value="Name" onfocus="this.value='';"
                           onblur="if (this.value == '') {this.value ='Name';}">
                </div>
                <div class="col-md-4 comment">
                    <input type="text" value="Email" onfocus="this.value='';"
                           onblur="if (this.value == '') {this.value ='Email';}">
                </div>
                <div class="col-md-4 comment">
                    <input type="text" value="Subject" onfocus="this.value='';"
                           onblur="if (this.value == '') {this.value ='Subject';}">
                </div>
                <div class="clearfix"></div>
                <textarea cols="77" rows="6" value=" " onfocus="this.value='';"
                          onblur="if (this.value == '') {this.value = 'Message';}">Message</textarea>

                <input type="submit" value="Send">

            </form>
        </div>
    </div>
</div>
<!---->
<%@include file="footer.jsp" %>
</body>
<script>
    $(function () {
        $.ajax({
            "url":"/blog/topic/"+${game.id},
            "type": "get",
            "success":function (result) {
                var res = result.extend.topic;
                var tep = 0;
                $.each(res, function (index, item) {
                    if(res[index].parentId!=1){
                        return true;
                    }
                    if(res[index]==undefined){
                        return false;
                    }
                    var $media = ("            <div class=\"media\" id=\""+res[index].id+"\">\n" +
                        "                <div class=\"media-left\">\n" +
                        "                    <a href=\"#\">\n" +
                        "                        <img class=\"media-object\" src=\"/statics/images/head/"+res[index].user.headPic+"\" onerror=\"this.src='/statics/images/head/co.png';\">\n" +
                        "                    </a>\n" +
                        "                </div>\n" +
                        "                <div class=\"media-body\">\n" +
                        "                    <h4 class=\"media-heading\"><a href=\"#\">"+res[index].user.userName+"</a></h4>\n" +
                        "                    <p>"+res[index].content+"</p>\n" +
                        "                </div>\n" +
                        "            </div>");
                    $(".single-middle").append($media);
                });
                for (let i = 0; i <res.length ; i++) {
                    if(res[i].parentId==1){
                        continue;
                    }
                    if(res[i]==undefined){
                        break;
                    }
                    console.log(res[i]);
                    var $mediaIn=$("           <div class=\"media in-media\" id=\""+res[i].id+"\">\n" +
                        "                <div class=\"media-left\">\n" +
                        "                    <a href=\"#\">\n" +
                        "                        <img class=\"media-object\" src=\"/statics/images/head/"+res[i].user.headPic+"\" onerror=\"this.src='/statics/images/head/co.png';\">\n" +
                        "                    </a>\n" +
                        "                </div>\n" +
                        "                <div class=\"media-body\">\n" +
                        "                    <h4 class=\"media-heading\"><a href=\"#\">"+res[i].user.userName+"</a></h4>\n" +
                        "                    <p>"+res[i].content+"</p>\n" +
                        "                </div>\n" +
                        "            </div>");
                    $("#" + res[i].parentId + "").after($mediaIn);
                }

            },"error":function () {
                alert("查询评论异常");
            }
        })
    })
</script>
</html>