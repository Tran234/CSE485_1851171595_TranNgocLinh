<?php
    session_start();
    if(!isset($_SESSION['user']))
    {
        header("location:dangnhap.php");
        exit();
    }
?>

<?php
$conn = mysqli_connect("localhost", "root", "", "baitaplon");

if(isset($_GET['q']) && !empty($_GET['q'])){
    $keyword = $_GET['q'];

    $sql = "SELECT * FROM qlbaidang WHERE tieude LIKE '%$keyword%'";
} else {
    $sql = "SELECT * FROM qlbaidang";
}

$result = mysqli_query($conn, $sql);

if(!$result) {
    die("Câu truy vấn sai");
}
?>


<!doctype html>
<html lang="en">
  <head>
    <title>Sự kiện</title></title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Ranchers&family=Roboto:ital,wght@1,300&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/sukien.css">
</head>
  <body>
  <div class="logo">
        <div class="logo-text">
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
                <a class="nav-link" href="diendan.php"><i class="fab fa-forumbee"></i> Diễn đàn</a>
            </li>
            <li class="nav-item active">
                <a class="nav-link" href="dangbai.php">Đăng bài</a>
            </li>
            <div class="nav-item active">
                <a class="nav-link" href="baiviet.php"><i class="fas fa-comment-dots"></i> Quản lí bài viết</a>
            </div>
            <li class="nav-item active d">
                    <?php
                        if(!isset($_SESSION['user'])){
                        header("Location:diendan.php");
                   ?>    
                    <?php
                        }else{
                    ?>
       <li class="x">
                <?php echo '<i class="fas fa-user"></i> Xin chào : '.$_SESSION['user']; ?>
                <a href="dangxuat.php">/Đăng xuất</a></li>
            </li>
                    <?php 
                        }
                    ?>
        </ul>
        <ul class="section search">
            <h2 class="section-title"></h2>
           
            <form action="" method="get">
            Search: <input type="text" name="p" placeholder="" value="<?php if(isset($_GET['q'])) { echo $_GET['q'];}?>" />
            <button type="submit" name="submit">search</button>
        </form>

        </ul>
    </div>
</nav>
    <div class = "dang">
        <?php
            require('connect.php');
            include('functions.php');
            $user = getall();
            foreach($user as $row)
            {
        ?>
        <img src="" alt="">
        <ul>
            <li><a href="bai.php?id=<?php echo $row[0];?>"><?php echo $row[2];?></a></li>
            <li><?php echo $row[1];?></li>
            <li><?php echo $row[3];?></li>
            <li><?php echo $row[4];?></li>
            <li><?php echo $row[5];?></li>
        </ul>
        <?php
            }
        ?> 
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>