<?php
// 按价格高低渲染部分商品列表

// 假设每一页显示7条商品
$itemNum=7;

$order = isset($_POST['order']) ? $_POST['order'] : '';

$con = mysqli_connect("127.0.0.1", "root", "", "newegg");

// 价格排序后点击页码(初始默认$index为1)
$sql = "SELECT * FROM xiangqingye ORDER BY nowprice $order  limit $index,7";

// // 页码总数
// $sqlTotal = "SELECT * FROM xiangqingye ORDER BY nowprice $order";
// $resulTotal = mysqli_query($con,$sqlTotal);
// $dataTotal=mysqli_fetch_all($resulTotal->num_rows, MYSQLI_ASSOC);

$result = mysqli_query($con,$sql);


$data=mysqli_fetch_all($result, MYSQLI_ASSOC);
echo json_encode($data);
?>