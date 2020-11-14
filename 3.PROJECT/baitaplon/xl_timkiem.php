<?php
if(isset($_GET['q']) && !empty($_GET['q'])){
    $keyword = $_GET['q'];

    $sql = "SELECT * FROM qlbaidang WHERE tieude LIKE '%$keyword%'";
} else {
    $sql = "SELECT * FROM qlbaidang";
}

$result = mysqli_query($conn, $sql);

if(!$result) {
    die("Cậu truy vấn sai");
}
?>