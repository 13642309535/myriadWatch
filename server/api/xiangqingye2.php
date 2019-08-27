<?php

// 渲染部分商品列表(按默认排序)
$con = mysqli_connect("127.0.0.1", "root", "", "newegg");

// 总商品数
$sqlTotal = "SELECT * FROM xiangqingye";
$resulTotal = mysqli_query($con,$sqlTotal);
$total=$resulTotal->num_rows;

// 默认排序第一页数据

// 假设每一页显示7条商品
$itemNum=7;
$sql = "SELECT * FROM xiangqingye limit $itemNum";
$result = mysqli_query($con,$sql);
$data=mysqli_fetch_all($result, MYSQLI_ASSOC);

// 页码点击事件
$sql = "SELECT * FROM xiangqingye limit $index,7";

$all=array("total"=>$total,"data"=>$data);
echo json_encode($all);
?>