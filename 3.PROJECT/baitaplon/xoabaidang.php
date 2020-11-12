<?php
$delete = $_GET['id'];
require('connect.php');
include('functions.php');
if(deleteid($delete))
{
    header("location:qlbaiviet.php");
}
else
{
    echo("that bai");
}

?>