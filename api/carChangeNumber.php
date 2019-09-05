<?php
// 连接数据库
$con = mysqli_connect("127.0.0.1", "root", "", "myriadwatch");

$user = isset($_POST['user']) ? $_POST['user'] : '';
$data_goodid = isset($_POST['data_goodid']) ? $_POST['data_goodid'] : '';
$goodNum = isset($_POST['goodNum']) ? $_POST['goodNum'] : '';

$sql ="UPDATE orderform set goodNum=$goodNum where `user`='$user' &&`data_goodid`='$data_goodid'";

$result = mysqli_query($con,$sql);
echo "ok";
?>