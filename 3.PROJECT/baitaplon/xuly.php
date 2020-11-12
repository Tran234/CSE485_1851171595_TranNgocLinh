<?php
if($_SERVER['REQUEST_METHOD']=="POST") {
    $error = array();
    $target_dir = "uploads/";
    $target_file = $target_dirv . basename($_FILES['fileUpload']['name']);

    $type_file = pathinfo($_FILE['fileUpload']['name'], PATHINFO_EXTENSION);
    $type_file_allow = array('png','jpg','jpeg','gif','jfif');
    if(!in_array(strtolower($type_file), $type_file_allow)){
        $error['fileUpload'] = "";
    }

    $size_file = $_FILE['fileUpload']['size'];
    if($size_file > 5242880) {
        $error ['fileUpload'] = "";

    }

    if(file_exists($target_file)) {
        $error['fileUpload'] = "";
    }

    if(empty($error)) {
        if(move_upload_file($_FILES["fileUpload"]["tmp_name"], $target_file)){
            echo "bsnj đã upload file thành công";
            $flag = true;
        } else {
            echo "file bạn upload gặp sự cố";
        }
    }
}

?>