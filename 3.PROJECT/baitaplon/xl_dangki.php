<?php
$taikhoan = $_POST['txt_taikhoan'];
$password = $_POST['txt_password'];
$email = $_POST['txt_email'];
$guestpass = $_POST["txt_password1"]; 
if (!($password == $guestpass)) 
  { 
    echo('mat khau khong trung khop <a href="dangki.php">Quay lai dang ki</a>'); 
  } 
else 
{ 
  $pass = md5($password);
  require('connect.php');
  $sql = "INSERT INTO thongtinsinhvien(taikhoan,matkhau,email)
  VALUES ('$taikhoan','$pass','$email');";
  if(mysqli_query($conn,$sql))
    {
      header("location:dangnhap.php");
    }
  else
    {
      echo('ten tai khoan da co san <a href="dangki.php">Quay lai dang ki</a>');
    }
}
?>
