<?php
    session_start();
    if(!isset($_SESSION['user']))
    {
        header("location:baiviet.php");
        exit();
    }
 
?>
<!doctype html>
<html lang="en">
  <head>
    <title>Bài viết</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Ranchers&family=Roboto:ital,wght@1,300&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/baidang.css">
</head>
  <body>
  <div class="LOGO">
        <div class="logo">
            <a href="trangchu.php"><img src="img/logo.jpg" alt=""></a>
        </div>
    </div>
    <div class="main">
        <div class="baidang">
            <h><a href="sukien.php"><i class="fas fa-home"></i>Bài viết gần đây</a></h>
        </div>
    </div>
    <div class="noidungbl">
        <?php
            require('connect.php');
            include('functions.php');
            $user = $_GET['id'];
            $sql ="SELECT * from qlbinhluan where id_baidang = '$user'";
            $result = mysqli_query($conn,$sql);
            while($row = mysqli_fetch_assoc($result))
            {
        ?>
        <ul>
            <li><?php echo $row['nguoidang'];?></li>
            <li><?php echo $row['noidung_binhluan'];?></li>
            <li><?php echo $row['date'];?></li>
        </ul>
        <?php
            }
        ?>
    </div>
    <div class="container">
        <form action="xl_binhluan.php?id=<?php echo $user ; ?>" method="post">
            <div class="form-group">
              <input type="hidden" name="nguoidang" id="nguoidang" value="<?php echo "".$_SESSION['user']; ?>">
            </div>
            <div class="form-group">
              <input type="hidden" name="idbaidang" id="idbaidang" value="<?php echo $user ?>">
            </div>
            <div class="form-group nd">
              <label for="">Bình luận</label>
              <textarea name="noidung_binhluan" id="noidung_binhluan" cols="85" rows="2"></textarea>
            </div>
            <button type="submit" class="btn btn-primary db">Đăng</button>
          </form>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>