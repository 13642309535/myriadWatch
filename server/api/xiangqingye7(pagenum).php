<?php
//点击页码事件
$index=($_POST['pagenum']-1)*7;
$con = mysqli_connect("127.0.0.1", "root", "", "newegg");


// $sql = "SELECT * FROM xiangqingye ORDER BY nowprice $order limit 7";
$sql = "SELECT * FROM xiangqingye limit $index,7";

$result = mysqli_query($con,$sql);
$data=mysqli_fetch_all($result, MYSQLI_ASSOC);
echo json_encode($data);
?>