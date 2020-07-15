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
                    <b></b>
                    <span></span>
                </div>
                <div class="top-blog">
                    <a class="fast" href="#">公告:${game.topic.content}</a>
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




        </div>
        <!---->
        <div class="single-bottom">

            <h3>编辑评论</h3>
            <form action="" method="post">
                <div class="clearfix"></div>
                <textarea id="sendText" cols="77" rows="6" placeholder="限制200字符
温馨提示:
1、您的回帖是对游戏莫大的鼓励和支持,请不要发布纯表情、无意义内容的帖子;
2、请不要用讽刺、鄙视、不屑的方式沟通,如果您是对方,您也不会舒服;
3、鄙视、不屑的方式沟通,如果您是对方,您也不会舒服;
4、如果您希望别人怎么对待您也请您先以同样的方式对待其他人;"></textarea>

                <input type="submit" value="发送">
                <!-- 打开弹窗按钮 -->
            </form>
        </div>
    </div>
</div>
<!-- 弹窗 -->
<div id="myModal" class="modal">

    <!-- 弹窗内容 -->
    <div class="modal-content">
        <div class="modal-header">
            <span class="close">&times;</span>
            <h2 id="replyName"></h2>
        </div>
                <textarea id="sendText1" style="width: 100%;height: 100%" cols="77" rows="6" placeholder="限制200字符
温馨提示:
1、您的回帖是对游戏莫大的鼓励和支持,请不要发布纯表情、无意义内容的帖子;
2、请不要用讽刺、鄙视、不屑的方式沟通,如果您是对方,您也不会舒服;
3、鄙视、不屑的方式沟通,如果您是对方,您也不会舒服;
4、如果您希望别人怎么对待您也请您先以同样的方式对待其他人;"></textarea>

        <div class="modal-footer">
            <h3 id="sub" style="text-align: center">提交</h3>
        </div>
    </div>
</div>
<!---->
<%@include file="footer.jsp" %>
</body>
<script>

    $(function () {
        $("form").submit(function () {
             subText(1,$("#sendText").val());
            return false;
        })
        loadTopic();
    })

    function subText(reply,txt) {
        if(computedStrLen(txt)<1){
            alert("请先输入");
            return false;
        }
        if(computedStrLen(txt)>200){
            alert("请输入小于200字节的评论");
            return false;
        }
        $.ajax({
            "url":"/saveTopic/"+reply+"/"+'${game.id}'+"/"+txt,
            "type": "post",
            "success":function (result) {
                if (result.code != "100") {
                    alert(result.extend.msg);
                    return false;
                } else{
                    loadTopic();
                    return true;
                }
            },"error":function () {
                alert("异常");
                return false;
            }

        })
        return true;
    }
    function loadTopic() {
        $(".single-middle").empty();
        var tempTime='${game.topic.createTime}';
        var times = tempTime.split(" ");
        $(".blog-left span").empty();
        $(".blog-left b").empty();
        $(".blog-left span").append(times[1]);
        $(".blog-left b").append(times[2]);
        $(".single-middle").append("<h3>"+'${game.topic.topicNum}'+"条评论</h3>");
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
                    var $1=null;
                    if (res[index].parentTopicName == null) {
                        $1 = "";
                    }else{
                        $1 = "@" + res[index].parentTopicName+" ";
                    }
                    var $media = ("            <div class=\"media\" id=\""+res[index].id+"\">\n" +
                        "                <div class=\"media-left\">\n" +
                        "                    <a href=\"#\">\n" +
                        "                        <img class=\"media-object\" style='width: 64px;height: 64px' src=\"/statics/images/head/"+res[index].user.headPic+"\" onerror=\"this.src='/statics/images/1.jpg';\">\n" +
                        "                    </a>\n" +
                        "                </div>\n" +
                        "                <div class=\"media-body\">\n" +
                        "                    <h4 class=\"media-heading\"><a href=\"#\">"+res[index].user.userName+"</a></h4>\n" +
                        "                    <p>"+$1+res[index].content+"</p>\n" +
                        "                    <p><a class='myBtn' id="+res[index].id+">回复</a> <c:if test="${game.user.userId}=='res[index].id'"></c:if> </p>\n" +
                        "                </div>\n" +
                        "            </div>");
                    $(".single-middle").append($media);
                });

                recursionRes(res);


            },"error":function () {
                alert("查询评论异常");
            }
        })
    }
    function recursionRes(res) {
        var tempArrays = [res.length];
        var tempNum = 0;
        for (let i = 0; i <res.length ; i++) {
            if(res[i].parentId==1){
                continue;
            }
            if(res[i]==undefined){
                break;
            }
            var $1=null;
            if (res[i].parentTopicName == null) {
                $1 = "";
            }else{
                $1 = "@" + res[i].parentTopicName+" ";
            }
            var $mediaIn=$("           <div class=\"media in-media\" id=\""+res[i].id+"\">\n" +
                "                <div class=\"media-left\">\n" +
                "                    <a href=\"#\">\n" +
                "                        <img class=\"media-object\" style='width: 64px;height: 64px' src=\"/statics/images/head/"+res[i].user.headPic+"\" onerror=\"this.src='/statics/images/1.jpg';\">\n" +
                "                    </a>\n" +
                "                </div>\n" +
                "                <div class=\"media-body\">\n" +
                "                    <h4 class=\"media-heading\"><a href=\"#\">"+res[i].user.userName+"</a></h4>\n" +
                "                    <p>"+$1+res[i].content+"</p>\n" +
                "                    <p><a class='myBtn' id="+res[i].id+">回复 </a></p>\n" +
                "                </div>\n" +
                "            </div>");
            if($("#"+ res[i].parentId).length==0) {
                tempArrays[tempNum] = res[i];
                tempNum++;
                continue;
            }
            $("#" + res[i].parentId + "").after($mediaIn);
        }
        recursionRes(tempArrays);
    }
    //计算字符串长度，英文1个字符，中文2个字符
    function computedStrLen(str) {
        var len = 0;
        for (var i = 0; i < str.length; i++) {
            var c = str.charCodeAt(i);
            //单字节加1
            if ((c >= 0x0001 && c <= 0x007e) || (0xff60 <= c && c <= 0xff9f)) {
                len++;
            }
            else {
                len += 2;
            }
        }
        return len;
    }

</script>
<style>
    /* 弹窗 (background) */
    .modal {
        display: none; /* 默认隐藏 */
        position: fixed;
        z-index: 1;
        padding-top: 100px;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        overflow: auto;
        background-color: rgb(0,0,0);
        background-color: rgba(0,0,0,0.4);
    }

    /* 弹窗内容 */
    .modal-content {
        position: relative;
        background-color: #fefefe;
        margin: auto;
        padding: 0;
        border: 1px solid #888;
        width: 80%;
        box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),0 6px 20px 0 rgba(0,0,0,0.19);
        -webkit-animation-name: animatetop;
        -webkit-animation-duration: 0.4s;
        animation-name: animatetop;
        animation-duration: 0.4s
    }

    /* 添加动画 */
    @-webkit-keyframes animatetop {
        from {top:-300px; opacity:0}
        to {top:0; opacity:1}
    }

    @keyframes animatetop {
        from {top:-300px; opacity:0}
        to {top:0; opacity:1}
    }

    /* 关闭按钮 */
    .close {
        color: white;
        float: right;
        font-size: 28px;
        font-weight: bold;
    }

    .close:hover,
    .close:focus {
        color: #000;
        text-decoration: none;
        cursor: pointer;
    }

    .modal-header {
        padding: 2px 16px;
        background-color: #5cb85c;
        color: white;
    }

    .modal-body {padding: 2px 16px;}

    .modal-footer {
        padding: 2px 16px;
        background-color: #5cb85c;
        color: white;
    }
</style>
<script>// 获取弹窗
var modal = document.getElementById('myModal');

// 打开弹窗的按钮对象
var btn = document.getElementsByClassName("myBtn");

// 获取 <span> 元素，用于关闭弹窗 that closes the modal
var span = document.getElementsByClassName("close")[0];

$(document).on('click', ".myBtn", function(){
    modal.style.display = "block"
    $("#replyName").empty();
    $("#replyName").append("回复@"+$(this).parent().prev().prev().children().html());
    $("#sub").removeClass();
    $("#sub").addClass($(this).parent().parent().parent().prop("id"));

})

// 点击 <span> (x), 关闭弹窗
span.onclick = function() {
    modal.style.display = "none";
}
$("#sub").click(function () {
    if (subText($("#sub").prop("class"), $("#sendText1").val())) {
        modal.style.display = "none";
    }
})

// 在用户点击其他地方时，关闭弹窗
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}</script>
</html>