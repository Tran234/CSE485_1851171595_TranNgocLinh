<?php
    session_start();
    if(!isset($_SESSION['user']))
    {
        header("location:sukien.php");
        exit();
    }
?>
<!doctype html>
<html lang="en">
  <head>
    <title>Đăng bài</title>
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
    <div class="container">
        <form action="xl_dangbai.php" method="post" enctype="multipart/form-data">
            <div class="form-group">
              <input type="hidden" name="nguoidang" id="nguoidang" value="<?php echo "".$_SESSION['user']; ?>">
            </div>
            <div class="form-group td">
              <label for="">Tiêu đề</label>
              <input type="text"class="form-control" name="tieude"  >
            </div>
            <div class="form-group nd">
              <label for="">Nội dung</label>
              <textarea name="noidung" id="noidung"></textarea>
            </div>
            <div class="form-group image">
              <label for="">Ảnh</label>
              <input type="hidden" name="size" value="1000000"> 
                <input type="file" name="image">
            </div>
                 
            <button type="submit" class="btn btn-primary db">Đăng</button>
          </form>
    </div>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="https://cdn.ckeditor.com/ckeditor5/23.1.0/classic/ckeditor.js"></script>
    <script src="js/scripts.js"></script>

  </body>
</html>