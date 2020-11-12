<?php
function getall()
{
    global $conn;
    $sql = "SELECT*FROM qlbaidang";
    $result = mysqli_query($conn, $sql);
    $user = mysqli_fetch_all($result); 
    return $user;
}
function deleteid($id)
{
    global $conn;
    $sql = "DELETE FROM qlbaidang WHERE id = '$id'";
    if(mysqli_query($conn, $sql))
        return true;
    else
        return false;
}
function getid($id)
{
    global $conn;
    $sql ="SELECT * from qlbinhluan where id = '$id'";
    $result = mysqli_query($conn,$sql);
    $user = mysqlI_fetch_array($result);
    return $user;
}
?>
