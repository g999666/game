<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="CN">
<head>
<title>Contact</title>
<link href="${APP_PATH}/statics/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${APP_PATH}/statics/js/jquery.min.js"></script>
	<script src="${APP_PATH}/statics/js/bootstrap.min.js"></script>
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
<!--//fonts-->

</head>
<body>
<!--header-->
<%@include file="header.jsp"%>

<!--banner-->

<!--content-->
	<div class="contact">

			<div class="container">
				<h2>反馈</h2>
			<div class="contact-form">

				<div class="col-md-8 contact-grid">
					<form action="" method="post" id="contextForm" enctype="multipart/form-data">
						<input id="subject" name="subject" type="text" placeholder="主题"/>
						<textarea id="msg" name="content"  cols="77" rows="6" placeholder="输入信息，要求10-200字符"></textarea>
						<input id="verify" name="verifyCode"  type="text" name="verification" id="verification" <%--class="form-control"--%> placeholder="请输入验证码" style="width: 50%">
						<img id="imgVerify" src="" onclick="getVerify();" alt="点击更换验证码"/>
						<div class="send">
							<input type="submit" id="send" value="发送" >
						</div>
					</form>

					<div class="form-group has-feedback">

					</div>
				</div>
				<div class="col-md-4 contact-in">

						<div class="address-more">
						<h4>地址</h4>
							<p>流批克拉斯公司</p>
							<p>美国纽约曼哈顿233号</p>
						</div>
						<div class="address-more">
						<h4>详细</h4>
							<p>电话:010-62605500</p>
							<p>传真:190-4509-494</p>
							<p>邮箱:<a href="mailto:g999666@foxmail.com"> g999666@foxmail.com</a></p>
						</div>

				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
<%--		<div class="map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d37494223.23909492!2d103!3d55!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x453c569a896724fb%3A0x1409fdf86611f613!2sRussia!5e0!3m2!1sen!2sin!4v1415776049771"></iframe>
			</div>--%>
	</div>
	<!---->
<%@include file="footer.jsp"%>
<script>
	$(document.body).ready(function () {
		//首次获取验证码
		$("#imgVerify").attr("src","/getVerify?"+Math.random());
	});
	//获取验证码
	function getVerify(){
		var src1=document.getElementById('imgVerify')
		src1.src = "/getVerify?"+Math.random();
	}

	$("#send").click(function () {
		var subNum = computedStrLen($("#subject").val());
		var msgNum = computedStrLen($("#msg").val());
		if (!(subNum > 6 && subNum < 20)) {
			alert("标题要大于3个字和小于20个字");
			return false;
		}else if(!(msgNum>40&&msgNum<400)){
			alert("信息要大于20个字和小于400个字");
			return false;
		}else{
			save();
			return false;
		}
		function save(){
			$.ajax({
				"url":"/Verify",
				"data":{"content": $("#subject").val() + "&_&" + $("#msg").val() + "&_&" + $("#verify").val().toUpperCase()},
				"type": "post",
				"success":function (result) {
					alert(result.extend.msg);
					if (result.code == 100) {
						$("#contextForm")[0].reset();
						getVerify();
					}

				},"error":function () {
					alert("error");
				}
			})
		}

	})

	function verifyRex(ele,reg) {
		var temp = $(ele).val();
		if (!reg.test(temp)) {
			return false;
		}else{
			return true;
		}
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
</body>
</html>