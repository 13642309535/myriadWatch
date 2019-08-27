<?php
// 按模糊查询渲染数据
$a=$_POST['key'];
$con = mysqli_connect("127.0.0.1", "root", "", "newegg");
$sql = "SELECT * FROM xiangqingye where title like '%耳机%'";
$result = mysqli_query($con,$sql);
$data=mysqli_fetch_all($result, MYSQLI_ASSOC);
echo json_encode($data);
?>