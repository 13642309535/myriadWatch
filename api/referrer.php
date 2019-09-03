<?php
$db = mysqli_connect("127.0.0.1","root","","myriadwatch");
$phone2 =isset($_POST['phone2']) ? $_POST['phone2'] :'';
$sql2 = "SELECT * FROM user where phone=$phone2";
$result2 = mysqli_query($db, $sql2);
$total=$result2->num_rows;
echo $total;
?>