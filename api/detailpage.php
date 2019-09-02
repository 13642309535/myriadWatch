<?php
// 连接数据库
$con = mysqli_connect("127.0.0.1", "root", "", "myriadwatch");

$data_goodid = isset($_POST['data_goodid']) ? $_POST['data_goodid'] : '';
$valInput = isset($_POST['valInput']) ? $_POST['valInput'] : '';
$uesr = isset($_POST['uesr']) ? $_POST['uesr'] : '';

if($valInput){

    $sql ="INSERT INTO orderform(data_goodid,goodNum,uesr) VALUES($data_goodid,$valInput,$uesr)";
    $result = mysqli_query($con,$sql);

}else{
    $sql = "SELECT * FROM detailpage  where  detailpage.data_goodid=$data_goodid";
    $result = mysqli_query($con,$sql);
    $data=mysqli_fetch_all($result, MYSQLI_ASSOC);
    echo json_encode($data);
}


?>