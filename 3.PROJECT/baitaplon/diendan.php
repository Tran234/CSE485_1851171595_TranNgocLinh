<?php
    session_start();
    if(!isset($_SESSION['user']))
    {
        header("location:dangnhap.php");
        exit();
    }
?>
<!doctype html>
<html lang="en">
  <head>
    <title>Diễn đàn</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Ranchers&family=Roboto:ital,wght@1,300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="css/diendan.css">
</head>
  <body>
  <div class="LOGO">
        <div class="logo">
            <a href="trangchu.php"><img src="img/logo.jpg" alt=""></a>
        </div>
    </div>
    <nav class="navbar navbar-expand-sm navbar-dark bg-primary">
    <a class="navbar-brand" href="trangchu.php"><i class="fas fa-home"></i>Trang chủ</a>
    <button class="navbar-toggler d-lg-none" type="button" data-toggle="collapse" data-target="#collapsibleNavId" aria-controls="collapsibleNavId"
        aria-expanded="false" aria-label="Toggle navigation"></button>
    <div class="collapse navbar-collapse" id="collapsibleNavId">
        <ul class="navbar-nav mr-auto mt-2 mt-lg-0">
            <li class="nav-item active">
                <a class="nav-link" href="#">Giới thiệu</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="#">Nghiên cứu khoa học</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="#">Đào tạo</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="#">Bộ môn-Trung tâm</a>
            </li>
            <li class="nav-item active dd">
                    <?php
                        if(!isset($_SESSION['user'])){
                        header("Location:diendan.php");
                   ?>    
                    <?php
                        }else{
                    ?>
       <li class="dx">
                <?php echo "Xin chào : ".$_SESSION['user']; ?>
                <a href="dangxuat.php">/Đăng xuất</a></li>
            </li>
                    <?php 
                        }
                    ?>     
        </ul>
    </div>
    <div class="section search">
            <h2 class="section-title"></h2>
            <form action="index.html" method="post">
                <input type="text" name="search-term" class="text-input" placeholder="Search...">
            </form>
        </div> 
</nav>
    <div class="main">
        <div class="container">
            <div class="row sk">
                <h1>1. CSE Forum</h1>
            </div>
            <div class="sukien">
            <ul>
                <li><a href="sukien.php"><i class="far fa-comment"></i>Sự kiện CSE Forum</a></li>        
                <li><a href=""><i class="far fa-comment"></i>Góp ý - Kiến nghị cho CSE Forum</a></li>
                <li><a href=""><i class="far fa-comment"></i>Phòng truyền thống CSE</a></li>
            </ul>
            </div>
        </div>
        <div class="container">
            <div class="row sk">
                <h1>2. Đồng hành mùa thi</h1>
            </div>
            <div class="sukien">
            <ul>
                <li><a href=""><i class="far fa-comment"></i>Thông tin tuyển sinh</a></li>        
                <li><a href=""><i class="far fa-comment"></i>Chia sẻ kinh nghiệm</a></li>
                <li><a href=""><i class="far fa-comment"></i>Đồng hành mùa thu</a></li>
            </ul>
            </div>
        </div>
        <div class="container">
            <div class="row sk">
                <h1>3. Hành lang lớp học</h1>
            </div>
            <div class="sukien">
            <ul>
                <li><a href=""><i class="far fa-comment"></i>Ngoài giảng đường</a></li>        
                <li><a href=""><i class="far fa-comment"></i>Trên giảng đường</a></li>
            </ul>
            </div>
        </div>
        <div class="container">
            <div class="row sk">
                <h1>4. Đào tạo - Hướng nghiệp</h1>
            </div>
            <div class="sukien">
            <ul>
                <li><a href=""><i class="far fa-comment"></i>Chia sẻ tài liệu bằng tiếng Việt</a></li>        
                <li><a href=""><i class="far fa-comment"></i>Các chứng chỉ Quốc tế về CNTT,tiếng Anh</a></li>
                <li><a href=""><i class="far fa-comment"></i>Chia sẻ tài liệu bằng tiếng Anh</a></li>
            </ul>
            </div>
        </div>
        <div class="container">
            <div class="row sk">
                <h1>5. Các thế thệ sinh viên</h1>
            </div>
            <div class="sukien">
            <ul>
                <li><a href=""><i class="far fa-comment"></i>K58</a></li>        
                <li><a href=""><i class="far fa-comment"></i>K60</a></li>
                <li><a href=""><i class="far fa-comment"></i>K59</a></li>
                <li><a href=""><i class="far fa-comment"></i>K61</a></li>
            </ul>
            </div>
        </div>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>