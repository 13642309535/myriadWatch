<?php

// 连接数据库
$con = mysqli_connect("127.0.0.1", "root", "", "myriadwatch");

$user = isset($_POST['user']) ? $_POST['user'] : '';


$sql ="SELECT * from orderform where `user`='$user'";

$result = mysqli_query($con,$sql);
$data=mysqli_fetch_all($result, MYSQLI_ASSOC);
echo json_encode($data);
    
?>