<?php
//页码
$con = mysqli_connect("127.0.0.1", "root", "", "newegg");
$sql = "SELECT * FROM xiangqingye";
$result = mysqli_query($con,$sql);
echo json_encode($result->num_rows);
?>