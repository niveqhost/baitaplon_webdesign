<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" width="device-width, initial-scale=1.0">
	<title>Liên hệ</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="font-awesome/css/all.min.css">
	<style type="text/css">
		a {
			text-decoration: none !important;
		}

		#wrapper {
			width: 90%;
			margin: 0 auto;
		}

		#wrapper div#link {
			padding: 15px 0;
		}

		#wrapper div#link a {
			color: #55595C;
		}

		#wrapper div#link a span {
			padding: 0 10px;
		}

		#wrapper div#link b {
			padding: 0 15px;
			color: #80BB35;
		}

		#wrapper h4 {
			margin-bottom: 10px;
		}

		#contact-form input[type="text"], #contact-form textarea {
			width: 100%;
			min-height: 40px;
			background-color: #FFF;
			border-radius: 5px;
			border: 1px #EBEBEB solid;
			margin: 10px 0;
			padding: .375rem 20px;
			color: #55595C;
		}

		#contact-form textarea {
			resize: none;
			height: 200px;
		}

		#contact-form input[type="submit"] {
			line-height: 40px;
			min-height: 40px;
			text-align: center;
			cursor: pointer;
			border: none;
			font-weight: 400;
			background-color: #80BB35;
			color: #fff;
			border-radius: 5px;
			padding: 0 40px;
			margin: 15px 0;
		}

		#contact-form input[type=submit]:hover {
			background-color: #8DC940;
		}

		#contact-box-info i {
			width: 40px;
			height: 40px;
			background-color: #80BB35;
			color: #FFF;
			text-align: center;
			line-height: 40px;
			border-radius: 50%;
			margin: 10px;
		}

		#contact-box-info .info {
			margin: 10px;
		}

		#contact-box-info .info label {
			color: #707070;
			font-weight: bold;
		}

		#contact-box-info .info p {
			margin-left: 65px;
		}

		#contact-box-info .info a {
			margin-left: 65px;
			color: #FE9705;
		}

		#contact-box-info .info a#google-map-button {
			text-align: center;
			padding: 15px;
			background-color: #31b0d5;
			color: #fff !important;
			border-radius: 5px;
			border-color: #269abc;
			width: 90%;
			display: inline-block;
			line-height: 15px;
		}
	</style>
</head>

<body>
	<hr>
	<div id="wrapper" class="col-sm-12 col-xs-12 col-md-12">
		<div id="link">
			<a href="#"><i class="fas fa-home"></i><span>Trang chủ</span></a>
			<i class="fas fa-angle-right"></i><b>Liên hệ với chúng tôi</b>
		</div>
		<h4> <span>Thông tin liên hệ</span></h4>
		<div id="contact-box" class="col-md-6" style="float: left;">
				<form action="" id="contact-form">
					<input type="text" name="name" placeholder="Tên của bạn">
					<input type="text" name="email" placeholder="Địa chỉ email">
					<textarea placeholder="Nội dung"></textarea>
					<input type="submit" name="submit" value="Gửi đi">
				</form>
		</div>
		<div id="contact-box-info" class="col-md-6" style="float: right;">
				<div class="info">
					<i class="fas fa-map-marker-alt"></i>
					<label>Địa chỉ </label>
					<p>
						A12, Đinh Tiên Hoàng, Q. Hoàn Kiếm, Hà Nội
					</p>				
					<a href="#" id="google-map-button">Xem bản đồ Google</a>
				</div>
				<div class="info">
					<i class="fas fa-phone-alt"></i>
					<label>Điện thoại</label>
					<br>
					<a href="#">0123456789</a>
					<p>Thứ 2-CN: 8h - 18h</p>
				</div>
				<div class="info">
					<i class="fas fa-envelope"></i>
					<label>Email</label>
					<br>
					<a href="#">contact@yourdomain.com</a>
				</div>
		</div>
		<div style="clear:both;"></div>
		<div id="map" class="col-md-12">
			<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59585.57153763693!2d105.75589415624123!3d21.028755581716904!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3135ab5756f91033%3A0x576917442d674bfd!2zQ-G6p3UgR2nhuqV5LCBIw6AgTuG7mWksIFZp4buHdCBOYW0!5e0!3m2!1svi!2s!4v1576375193929!5m2!1svi!2s" width="100%" height="300" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
		</div>
	</div>
</body>

</html>