<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="CN">
<head>
<title>Contact</title>
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
					<form>	
						<input type="text" value="Name" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='名字';}">
					
						<input type="text" value="Email" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='邮箱';}">
						<input type="text" value="Subject" onfocus="this.value='';" onblur="if (this.value == '') {this.value ='主题';}">
						
						<textarea cols="77" rows="6" value=" " onfocus="this.value='';" onblur="if (this.value == '') {this.value = '信息';}">Message</textarea>
						<div class="send">
							<input type="submit" value="发送" >
						</div>
					</form>
				</div>
				<div class="col-md-4 contact-in">

						<div class="address-more">
						<h4>地址</h4>
							<p>流批克拉斯公司,</p>
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
		<div class="map">
				<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d37494223.23909492!2d103!3d55!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x453c569a896724fb%3A0x1409fdf86611f613!2sRussia!5e0!3m2!1sen!2sin!4v1415776049771"></iframe>
			</div>
	</div>
	<!---->
<%@include file="footer.jsp"%>

</body>
</html>