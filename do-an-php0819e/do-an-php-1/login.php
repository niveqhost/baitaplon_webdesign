<!DOCTYPE html>
<html>
<head>
	<title>Fresh Food-Hệ thống cửa hàng thực phẩm sạch</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/login.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<body>
    <!-- login form -->

    <div id="content" class="container col-sm-12 col-xs-12 col-md-12">
        <section class="bread_crumb py-4">
            <div class="container">
                <div class="row">
                    <div class="col-xs-12">
                        <ul class="breadcrumb">
                            <li>
                                <a href="#"><span><i class="fa fa-home"></i> Trang chủ</span></a>
                                <span><i class="fa fa-angle-right"></i></span>
                            </li>
                            <li>
                                <a href="#"><span>Tài khoản</span></a>
                                <span><i class="fa fa-angle-right"></i></span>
                            </li>
                            <li>
                                <a href="#"> <strong>Đăng nhập</strong></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <div class="alert alert-danger">
            <i class="fa fa-exclamation-circle"></i> Cảnh báo: Địa chỉ Email hoặc Mật khẩu không chính xác.
        </div>
        <div class="row">
            <div class="col-sm-6 col-md-6">
                <div class="well">
                    <h2>Khách hàng mới</h2>
                    <p><strong>Đăng ký</strong></p>
                    <p>Bằng việc tạo tài khoản bạn có thể mua sắm nhanh hơn, theo dõi trạng thái đơn hàng, và theo dõi đơn hàng mà bạn đã đặt.</p> <a href="#" class="btn btn-primary">Tiếp tục</a>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="well">
                    <h2>Khách hàng cũ</h2>
                    <p><strong>Tôi là khách hàng cũ</strong></p>
                    <form action="https://freshfood.exdomain.net/account/login" method="post" enctype="multipart/form-data">
                        <div class="form-group">
                            <label class="control-label" for="input-email">Địa chỉ Email</label> 
                            <input type="text" name="email" value="" placeholder="Địa chỉ Email" id="input-email" class="form-control"> 
                        </div>
                        <div class="form-group"> 
                            <label class="control-label" for="input-password">Mật khẩu</label> 
                            <input type="password" name="password" value="" placeholder="Mật khẩu" id="input-password" class="form-control"> <a href="https://freshfood.exdomain.net/account/forgotten">Quên mật khẩu?</a> 
                        </div> 
                        <input type="submit" value="Đăng nhập" class="btn btn-primary">
                    </form>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
