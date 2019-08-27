<?php
// 按价格区间渲染数据
// $a = isset($_POST['a']) ? $_POST['a'] : '';
// $b = isset($_POST['b']) ? $_POST['b'] : '';

$con = mysqli_connect("127.0.0.1", "root", "", "newegg");
$a=$_POST['a'];
$b = $_POST['b'];
$sql = "SELECT * from xiangqingye where nowprice between  $a and $b";

$result = mysqli_query($con,$sql);
$data=mysqli_fetch_all($result, MYSQLI_ASSOC);
echo json_encode($data);
?>