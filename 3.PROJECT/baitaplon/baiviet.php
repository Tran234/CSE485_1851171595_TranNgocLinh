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
    <title>Quản lí bài viết</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Ranchers&family=Roboto:ital,wght@1,300&display=swap" rel="stylesheet">

    <link rel="stylesheet" href="css/dang.css">
</head>
  <body>
  <div class="logo">
        <div class="logo-text">
            <a href="trangchu.php"><img src="img/logo.jpg" alt=""></a>
        </div>
    </div>
    <div class="main">
        <div class="baidang">
            <h><a href="sukien.php"><i class="fas fa-home"></i>Bài viết</a></h>
        </div>
        <div class="baidang">
            <a href="dangbai.php"><i class="fas fa-comment-dots"></i>Đăng bài</a>
        </div>
    </div>
    <table class="table table-striped">
          <thead>
              <tr>
                  <th>Tiêu đề</th>
                  <th>Nội dung</th>
                  <th>Ngày đăng</th>
                  <th>Chi tiết</th>
                  <th>Xóa</th>
              </tr>
          </thead>
          <tbody>
          <?php
            require('connect.php');
            include('functions.php');
            $user = $_SESSION['user'];
            $sql = "SELECT * FROM qlbaidang where nguoidang = '$user'";
            $result = mysqli_query($conn,$sql);
            while($row = mysqli_fetch_assoc($result))
            {
            ?>
              <tr>
                  <td scope="row"><?php echo $row['tieude'];?></td>
                  <td><?php echo $row['noidung'];?></td>
                  <td><?php echo $row['anh'];?></td>
                  <td><?php echo $row['date'];?></td>
                  <td><a href="xoabaidang.php?nguoidang=<?php echo $row[1];?>"><i class="fas fa-info-circle"></i></a></td>
                  <td><a href="xoabaidang.php?id=<?php echo $row['id'];?>"><i class="fas fa-trash-alt"></i></a></td>
              </tr>
              <?php
              }
              ?>
          </tbody>
      </table>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  </body>
</html>