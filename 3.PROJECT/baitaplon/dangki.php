<?php 
require('connect.php');
if(isset($_POST["taikhoan"]))
{
    if(!isset($_SERVER['HTTP_X_REQUESTED_WITH']) AND strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) != 'xmlhttprequest') {
        die();
    }  
    $taikhoan =  strtolower(trim($_POST["taikhoan"]));
    $taikhoan = filter_var($taikhoan, FILTER_SANITIZE_STRING, FILTER_FLAG_STRIP_LOW|FILTER_FLAG_STRIP_HIGH);
    $results = mysqli_query($conn,"SELECT taikhoan FROM thongtinsinhvien WHERE taikhoan='$taikhoan'");
    $taikhoan_exist = mysqli_num_rows($results);
    if($taikhoan_exist) {
        echo("khong co san");
    }else{
        echo( "co san");
    }
    mysqli_close($conn);
}
?>
<!doctype html>
<html lang="en">

<head>
    <title>Đăng kí</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link rel="stylesheet" href="css/dangki.css">
</head>

<body>
<div class="logo">
        <div class="logo-text">
            <a href="trangchu.php"><img src="http://cse.tlu.edu.vn/cse/assets/images/logo.jpg" alt=""></a>
        </div>
    </div>
<nav class="navbar navbar-expand-sm navbar-dark bg-primary">
    <a class="navbar-brand" href="trangchu.php"><i class="fas fa-home"></i>Trang chủ</a>
    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
        aria-expanded="false" aria-label="Toggle navigation"></button>
</nav>
    <div class="container">
        <form action="xl_dangki.php" method="post">
            <div class="form-group">
                <label for="">Tài khoản</label>
                <input type="text" class="form-control" name="txt_taikhoan" id="txt_taikhoan" aria-describedby="helpId" placeholder="">
            </div>
            <div class="form-group">
                <label for="">Mật khẩu</label>
                <input type="password" class="form-control" name="txt_password" id="txt_password" placeholder="">
            </div>
            <div class="form-group">
                <label for="">Nhập lại mật khẩu</label>
                <input type="password" class="form-control" name="txt_password1" id="txt_password1" placeholder="">
            </div>
            <div class="form-group">
                <label for="">Email</label>
                <input type="email" class="form-control" name="txt_email" id="txt_email" aria-describedby="emailHelpId" placeholder="">
                <a href="dangnhap.php">Quay lại đăng nhập</a>
            </div>
            <button type="submit" class="btn btn-primary d">Đăng kí</button>
        </form>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="js/jquery-3.5.1.min.js"></script>
    <script src="js/dangki.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</body>

</html>