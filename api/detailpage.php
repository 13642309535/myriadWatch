<?php
// 连接数据库
$con = mysqli_connect("127.0.0.1", "root", "", "myriadwatch");

$data_goodid = isset($_POST['data_goodid']) ? $_POST['data_goodid'] : '';

 $sql = "SELECT * FROM detailpage  where  detailpage.data_goodid=$data_goodid";

$result = mysqli_query($con,$sql);
$data=mysqli_fetch_all($result, MYSQLI_ASSOC);
echo json_encode($data);
?>