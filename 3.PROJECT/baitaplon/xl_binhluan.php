<?php
$nguoidang = $_POST['nguoidang'];
$noidung_binhluan = $_POST['noidung_binhluan'];
$idbaidang = $_POST['idbaidang'];
require('connect.php');
$id = $_GET['id'];
$sql = "INSERT INTO qlbinhluan(id_baidang,nguoidang,noidung_binhluan,date)
VALUES ('$idbaidang','$nguoidang','$noidung_binhluan',Now());";
if(mysqli_query($conn,$sql))
{
    header("location:baiviet.php?id=$id?>");
}
else
{
    echo("that bai");
}
?>