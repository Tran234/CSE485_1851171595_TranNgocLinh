<?php
$nguoidang = $_POST['nguoidang'];
$tieude = $_POST['tieude'];
$noidung = $_POST['noidung'];
$anh = $_POST['anh'];
require('connect.php');
$sql = "INSERT INTO qlbaidang(nguoidang,tieude,noidung,anh,date)
VALUES ('$nguoidang','$tieude','$noidung','$anh',Now());";
if(mysqli_query($conn,$sql))
{
    header("location:sukien.php");
}
else
{
    echo("that bai");
}
?>