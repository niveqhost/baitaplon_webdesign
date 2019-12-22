<!DOCTYPE html>
<html>
<head>
    <title>Fresh Food-Hệ thống cửa hàng thực phẩm sạch</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/layout.css">

    <link rel="stylesheet" type="text/css" href="css/register.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
</head>
<body>
<!-- register form -->


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
                                <a href="#"> <strong>Đăng ký</strong></a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </section>
        <div id="login-section" class="col-md-6 float-left">
            <img src="images/store.png">
            <p>Đã có tài khoản? <a href="#">Đăng nhập ngay</a></p>
        </div>
        <div id="register-section" class="col-md-6 float-right">
            <h4><i class="fa fa-user-plus"></i> Đăng Ký</h4>
            <form id="formRegister" name="formRegister" action="#" method="post">
                <div class="field">
                    <label for="fullname">Họ và tên</label>
                    <div class="field error">
                        <input id="fullname" type="text" name="fullname" placeholder="Họ và tên" value="">
                        <div>Hãy nhập họ và tên</div>
                    </div>
                </div>
                <div class="field">
                    <label for="email">Email</label>
                    <div class="field error">
                        <input id="email" type="text" name="email" placeholder="Email" value="">
                        <div>Hãy nhập email</div>
                    </div>
                </div>
                <div class="field">
                    <label for="password">Mật khẩu</label>
                    <div class="field error">
                        <input id="password" type="password" name="password" placeholder="Mật khẩu" value="">
                        <div>Hãy nhập mật khẩu</div>
                    </div>
                </div>
                <div class="field">
                    <label for="repassword">Nhập lại mật khẩu</label>
                    <div class="field error">
                        <input id="repassword" type="password" name="repassword" placeholder="Nhập lại mật khẩu" value="">
                        <div>Hãy nhập lại mật khẩu</div>
                    </div>
                </div>
                <button type="submit" name="btnRegister">Đăng ký</button>
            </form>
        </div>
        <div class="clear-fix"></div>
    </div>
</body>
</html>
