<?php
// 连接数据库
$con = mysqli_connect("127.0.0.1", "root", "", "myriadwatch");

$data_goodid = isset($_POST['data_goodid']) ? $_POST['data_goodid'] : '';
$valInput = isset($_POST['valInput']) ? $_POST['valInput'] : '';
$user = isset($_POST['user']) ? $_POST['user'] : '';

$shop = isset($_POST['shop']) ? $_POST['shop'] : '';
$imgSrc = isset($_POST['imgSrc']) ? $_POST['imgSrc'] : '';
$goodsName = isset($_POST['goodsName']) ? $_POST['goodsName'] : '';
$price = isset($_POST['price']) ? $_POST['price'] : '';
$version = isset($_POST['version']) ? $_POST['version'] : '';
$storeNumber = isset($_POST['storeNumber']) ? $_POST['storeNumber'] : '';



// 调试用
// $data_goodid =6;
// $valInput=6;
// $user='';
$sql1 ="SELECT * from orderform where data_goodid=$data_goodid";
$result1 = mysqli_query($con,$sql1);
$total1=$result1->num_rows;
if($total1==0)
{
$sql ="INSERT INTO orderform(`data_goodid`,`goodNum`,`user`,`shop`,`imgSrc`,`goodsName`,`price`,`version`,`storeNumber`) VALUES('$data_goodid','$valInput','$user','$shop','$imgSrc','$goodsName','$price','$version','$storeNumber')";

$result = mysqli_query($con,$sql);
}else{
    
    $sql ="UPDATE orderform set goodNum=goodNum+$valInput where data_goodid=$data_goodid";
    mysqli_query($con,$sql);

}
?>