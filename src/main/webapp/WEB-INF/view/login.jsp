<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="CN">
<!--[if lte IE 9]>
<html class="ie-style lt-ie9" xmlns="http://www.w3.org/1999/xhtml"> <![endif]-->
<!--[if gt IE 9]><!-->
<html><!--<![endif]-->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>steamPlus</title>
    <meta name="keywords" content=""/>
    <meta name="description" content=""/>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <link rel="Shortcut Icon" href="">
    <link rel="apple-touch-icon-precomposed" href="">
    <link rel="stylesheet" type="text/css" href="/statics/css/top.css">
    <link rel="stylesheet" type="text/css" href="/statics/css/index.css">
</head>
<body>
<!--content-->
<div class="common-box lg-box">
<%--    <div class="lg-open-logo"></div>
    <div class="lg-open-p-box">
        <p class="lg-open-p">欢迎来到streamPuls</p>
    </div>--%>
    <%--<div class="lg-open-btn" id="wsAskBtn">登录/注册</div>--%>
</div>
<!--content END-->
<!--Mask 遮罩-->
<%--<div class="lg-mask" id="popMask"></div>--%>
<div class="lg-lrf-box" id="wsLrfBox">
    <!-- 注册 -->
    <div class="lg-reg-box" id="wsRegBox">
        <div class="lg-reg-tit-box">
            <h2 class="lg-reg-tit">注册</h2>
            <a href="javascript:" class="lg-reg-turn" id="wsLoginLink">登录<i></i></a>
        </div>
        <form class="lg-form" method="post" aciton="" id="regForm">
            <div class="lg-common-form-line lt-form-line clearfix">
                <div class="fl lg-common-input mr20 js_input_txt clearfix">
                    <input type="text" id="real_name" name="userName" placeholder="请输入用户名">
                    <div class="remind-icon lt-remind"><i class="arrow arrow-bottom remind-arrow"></i>要求中英文混合,3-10字符以内
                    </div>
                </div>
                <div class="fl lg-common-input js_input_txt clearfix">
                    <input type="text" id="phone" name="phone" placeholder="请输入手机号码">
                    <div class="remind-icon lt-remind"><i class="arrow arrow-bottom remind-arrow"></i>手机号输入错误</div>
                </div>
            </div>
            <div class="lg-common-form-line bl-form-line clearfix mb38">
                <div class="fl lg-common-input mr20 js_input_txt clearfix">
                    <input type="password" id="password" name="userPassword" placeholder="请输入密码">
                    <div class="remind-icon bl-remind"><i class="arrow arrow-bottom remind-arrow"></i>至少6位字符密码</div>
                </div>
                <div class="fl lg-common-input clearfix js_input_txt">
                    <input type="text" id="Invitation_code" name="headPic" placeholder="请输入手机验证码">
                    <div class="remind-icon bl-remind"><i class="arrow arrow-bottom remind-arrow"></i>验证码不可以为空</div>
                    <div href="javascript:" class="js_reload1" id="vCode" title="发送验证码">
                        <div class="son">发送验证码</div>
                    </div>

                </div>
            </div>
            <div class="lg-common-form-line lg-btn-line tac" id="regDiv">
                <input type="button" class="ma-at common-btn lg-common-pink-btn lg-login-btn" id="regSub" value="注册">
            </div>
            <div class="suc-tips ma-at success"><i></i>恭喜您，注册成功！</div>
            <div class="error"></div>
        </form>
    </div>
    <!-- 登录 -->
    <div class="lg-reg-box lg-login-box" id="wsLoginBox">
        <div class="lg-reg-tit-box">
            <h2 class="lg-reg-tit">登录</h2>
            <a href="javascript:" class="lg-reg-turn" id="wsRegLink">注册<i></i></a>
        </div>
        <form class="lg-form" method="post" aciton="" id="loginForm">
            <div class="lg-common-form-line lt-form-line clearfix">
                <div class="fl lg-common-input mr20 js_input_txt clearfix">
                    <input type="text" id="loginUserName" name="userName" placeholder="请输入邮箱/手机号">
                    <div class="remind-icon lt-remind"><i class="arrow arrow-bottom remind-arrow"></i>请输入正确的邮箱/手机号</div>
                </div>
                <div class="fl lg-common-input js_input_txt clearfix">
                    <input type="password" id="loginPassWord" name="userPassword" placeholder="至少6个字符">
                    <div class="remind-icon lt-remind"><i class="arrow arrow-bottom remind-arrow"></i>至少6个字符</div>
                </div>
            </div>
            <div class="lg-common-form-line bl-form-line mb38">
                <div class="lg-common-input s-code-input js_input_txt ma-at clearfix">
                    <input type="text" id="loginIntCode" name="headPic" placeholder="请输入验证码">
                    <div class="remind-icon bl-remind"><i class="arrow arrow-bottom remind-arrow"></i>请输入验证码</div>
                    <div href="javascript:" class="js_reload" onclick="getVerify();" title="更换一张验证码图片">
                        <img class="imgVerify" src="" alt="点击更换验证码"/>
                    </div>
                </div>
            </div>
            <div class="lg-common-form-line lg-check-box clearfix">
                <div class="lg-common-checkbox js_rc_input">
                    <input type="checkbox" id="remember">
                </div>

                <a href="javascript:" class="lg-forget-link" id="wsFindpwLink"><i></i>忘记密码？</a>
            </div>
            <div class="lg-common-form-line lg-btn-line tac" id="loginDiv">
                <input type="button" class="ma-at common-btn lg-common-pink-btn lg-login-btn" value="登录" id="loginBtn">
            </div>
            <div class="error-tips ma-at success"><i></i>登录失败</div>
            <div class="error"></div>
        </form>
    </div>
    <!-- 找回密码 -->
    <div class="lg-reg-box lg-findpw-box" id="wsFindpwBox">
        <div class="lg-reg-tit-box">
            <h2 class="lg-reg-tit">密码重置</h2>
            <a href="javascript:" class="lg-reg-turn" id="wsFpwLoginLink">登录<i></i></a>
        </div>
        <form class="lg-form" method="post" aciton="" id="findForm">
            <div class="lg-common-form-line bl-form-line mb38">
                <div class="lg-common-input s-code-input js_input_txt ma-at clearfix">
                    <input type="text" id="findUserPhone" name="phone" placeholder="请输入手机号码">
                    <div class="remind-icon lt-remind"><i class="arrow arrow-bottom remind-arrow"></i>手机号输入错误</div>
                </div>
            </div>
            <div class="lg-common-form-line bl-form-line mb38">
                <div class="lg-common-input s-code-input js_input_txt ma-at clearfix">
                    <input type="password" id="newPassword" name="userPassword" placeholder="请输入密码">
                    <div class="remind-icon bl-remind"><i class="arrow arrow-bottom remind-arrow"></i>密码最少6位</div>
                </div>
            </div>
            <div class="lg-common-form-line bl-form-line mb38">
                <div class="lg-common-input s-code-input js_input_txt ma-at clearfix">
                    <input type="text" id="findUserCode" name="headPic" placeholder="请输入手机验证码">
                    <div class="remind-icon bl-remind"><i class="arrow arrow-bottom remind-arrow"></i>验证码不可以为空</div>
                    <div href="javascript:" class="js_reload1" id="sendFindUserCode" title="发送验证码">
                        <div class="son1">发送验证码</div>
                    </div>
                </div>
            </div>


            <div class="lg-common-form-line lg-btn-line tac" id="findUserDiv">
                <input type="button" class="ma-at common-btn lg-common-pink-btn lg-login-btn" id="findUserBtn" value="更改密码" id="">
            </div>
            <div class="suc-tips ma-at" style="display: none"><i></i>更改成功</div>
        </form>
    </div>
</div>
<div class="lg-mask tip-mask"></div>
</body>
<script src="/statics/js/jquery.min.js"></script>
<script src="/statics/js/index.js"></script>
<%--发送验证码，更改验证码--%>
<script>
    $(document.body).ready(function () {
        //首次获取验证码
        $(".imgVerify").attr("src", "/getVerify?" + Math.random());
    });

    //获取验证码
    function getVerify() {
        var src1 = $(".imgVerify");
        src1.attr("src", "/getVerify?" + Math.random());
    }

    // 发送验证码
    var flag = 60;
    var flag1 = 60;
    var obj = $(".son");
    var obj1 = $(".son1");

    function timer() {
        flag--;
        obj.text(flag + "秒");
        if (flag == 0) {
            obj.text("获取验证码");
            flag = 60;
        } else {
            setTimeout("timer()", 1000);    // 每一秒递归调用
        }
    }
    function timer1() {
        flag1--;
        obj1.text(flag1 + "秒");
        if (flag1 == 0) {
            obj1.text("获取验证码");
            flag1 = 60;
        } else {
            setTimeout("timer1()", 1000);    // 每一秒递归调用
        }
    }

    $("#sendFindUserCode").click(function () {
        if (!(/^1(3|4|5|6|7|8|9)\d{9}$/.test($("#findUserPhone").val()))) {
            alert("手机号格式错误");
            return false;
        }
        if (flag1< 10) {
            return;
        }
        timer1();
        $.ajax({
            "url": "/sendNoteCode/" + $("#findUserPhone").val(),
            "type": "get",
            "success": function (result) {
                if (result.code != "100") {
                    alert("发送失败")
                }
            }, "error": function () {
                alert("发送error");
            }
        })
    });
    $("#vCode").click(function () {
        if (!(/^1(3|4|5|6|7|8|9)\d{9}$/.test($("#phone").val()))) {
            alert("手机号错误");
            return false;
        }
        if (flag < 10) {
            return;
        }
        timer();
        $.ajax({
            "url": "/sendNoteCode/" + $("#phone").val(),
            "type": "get",
            "success": function (result) {
                if (result.code != "100") {
                    alert("发送失败")
                }
            }, "error": function () {
                alert("发送error");
            }
        })
    })
    /*$("body").css({"background-image": "url(/statics/images/login/bac1.jpg)", "background-size": "100% 100%"});*/

</script>
<%--注册--%>
<script>
    $(function () {
        $("#regSub").attr("disabled", "true");
    })
    var realName = $("#real_name");
    var phone = $("#phone");
    var password = $("#password");
    var Invitation_code = $("#Invitation_code");

    function optionReg() {
        var nameLen = computedStrLen(realName.val());

        if ((!(/^[\u4E00-\u9FA5A-Za-z0-9_]+$/.test(realName.val()))) || (!(nameLen >= 3 && nameLen <= 10))) {
            realName.next().css("display", "inline");
            return false;
        } else {
            realName.next().css("display", "none");
        }

        if (!/^(13[0-9]|14[5|7]|15[0|1|2|3|4|5|6|7|8|9]|18[0|1|2|3|5|6|7|8|9])\d{8}$/.test(phone.val())) {
            phone.next().css("display", "inline");
            return false;
        } else {
            phone.next().css("display", "none");
        }
        if (!/^.{6,}$/.test(password.val())) {
            password.next().css("display", "inline");
            return false;
        } else {
            password.next().css("display", "none");
        }
        if (Invitation_code.val() == null||Invitation_code.val() == "" || Invitation_code.val() == undefined) {
            Invitation_code.next().css("display", "inline");
            return false;
        } else {
            Invitation_code.next().css("display", "none");
        }
        return true;
    }
    var opt = false;
    $("#regForm input[type='text'],input[type='password']").change(function () {
        if (!optionReg()) {
            opt = false;
            $("#regSub").attr("disabled", "true");
        } else {
            opt = true;
            $("#regSub").removeAttr("disabled");
        }
    })

    $("#regDiv").mouseenter(function () {
        if (!optionReg()) {
            opt = false;
            $("#regSub").attr("disabled", "true");
        } else {
            opt = true;
            $("#regSub").removeAttr("disabled");
        }
    })
    $("#regSub").click(function () {
        if(opt==true){
            $.ajax({
            "url": "/regUser",
            "data": $("#regForm").serialize(),
            "type": "get",
            "success": function (result) {
                if (result.code != "100") {
                    alert(result.extend.msg);
                } else {
                    $("#regSub").parent().next().css("display", "inline");
                }
            }, "error": function () {
                alert("发送error");
            }
        })
        }

    })

    function computedStrLen(str) {
        var len = 0;
        for (var i = 0; i < str.length; i++) {
            var c = str.charCodeAt(i);
            //单字节加1
            if ((c >= 0x0001 && c <= 0x007e) || (0xff60 <= c && c <= 0xff9f)) {
                len++;
            } else {
                len += 2;
            }
        }
        return len;
    }


</script>
<%--登录--%>
<script>
    var loginUserName = $("#loginUserName");
    var loginPassWord = $("#loginPassWord");
    var loginIntCode = $("#loginIntCode");
    var optionLog = false;
    $("#loginDiv").mouseenter(function () {
        if (!optionLogin()) {
            optionLog = false;
            $("#loginBtn").attr("disabled", "true");
        } else {
            optionLog = true;
            $("#loginBtn").removeAttr("disabled");
        }
    })
    $("#loginForm input[type='text'],input[type='password']").change(function () {
        if (!optionLogin()) {
            optionLog = false;
            $("#loginBtn").attr("disabled", "true");
        } else {
            optionLog = true;
            $("#loginBtn").removeAttr("disabled");
        }
    })
    $("#loginBtn").click(function () {
        if(optionLog==true){
            // 登录
            $.ajax({
                "url": "/loginUser",
                "data": $("#loginForm").serialize(),
                "type": "get",
                "success": function (result) {
                    if (result.code != "100") {
                        $("#loginBtn").parent().next().text(result.extend.msg);
                        $("#loginBtn").parent().next().css("display", "inline");
                    }else{
                        alert(window.parent.location);
                        window.parent.location.href=window.parent.location;
                    }
                }, "error": function () {
                    alert("发送error");
                }
            })
        }
    })

    function optionLogin() {
        if (!(/^([a-zA-Z\d])(\w|\-)+@[a-zA-Z\d]+\.[a-zA-Z]{2,4}$/).test(loginUserName.val())) {

            if (!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(loginUserName.val()))) {
                loginUserName.next().css("display", "inline");
                return false;
            } else {
                loginUserName.next().css("display", "none");
            }
        } else {
            loginUserName.next().css("display", "none");
        }

        if (!/^.{6,}$/.test(loginPassWord.val())) {
            loginPassWord.next().css("display", "inline");
            return false;
        } else {
            loginPassWord.next().css("display", "none");
        }

        if (loginIntCode.val() == null || loginIntCode.val() == "" || loginIntCode.val() == undefined) {
            loginIntCode.next().css("display", "inline");
            return false;
        } else {
            loginIntCode.next().css("display", "none");
        }
        return true;
    }

</script>
<%--找回密码--%>
<script>
    var findOptionFlag = false;

    var findUserPhoneV = $("#findUserPhone");
    var newPasswordV = $("#newPassword");
    var findUserCode = $("#findUserCode");

    function optionFind() {
        if (!(/^1(3|4|5|6|7|8|9)\d{9}$/.test(findUserPhoneV.val()))) {
            findUserPhoneV.next().css("display", "inline");
            return false;
        } else {
            findUserPhoneV.next().css("display", "none");
        }
        if (!/^.{6,}$/.test(newPasswordV.val())) {
            newPasswordV.next().css("display", "inline");
            return false;
        } else {
            newPasswordV.next().css("display", "none");
        }
        if (findUserCode.val() == null || findUserCode.val() == "" || findUserCode.val() == undefined) {
            findUserCode.next().css("display", "inline");
            return false;
        } else {
            findUserCode.next().css("display", "none");
        }
        return true;
    }

    $("#findUserDiv").mouseenter(function () {
        if (!optionFind()) {
            findOptionFlag = false;
            $("#findUserDiv input").attr("disabled", "true");
        } else {
            findOptionFlag = true;
            $("#findUserDiv input").removeAttr("disabled");
        }
    })
    $("#findForm input[type='text'],input[type='password']").change(function () {
        if (!optionFind()) {
            findOptionFlag = false;
            $("#findUserDiv input").attr("disabled", "true");
        } else {
            findOptionFlag = true;
            $("#findUserDiv input").removeAttr("disabled");
        }
    })
    $("#findUserBtn").click(function () {
        if(findOptionFlag==true){
            $.ajax({
                "url": "/findPassword/",
                "data": $("#findForm").serialize(),
                "type": "get",
                "success": function (result) {
                    if (result.code != "100") {
                        alert(result.extend.msg);
                    } else {
                        $("#findUserBtn").parent().next().css("display", "inline");
                    }
                }, "error": function () {
                    alert("发送error");
                }
            })
        }

    })
</script>
</html>

