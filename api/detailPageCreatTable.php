<?php
//建表
$con=mysqli_connect("127.0.0.1","root","","myriadwatch");

$data=file_get_contents("http://127.0.0.1/myriadWatch/js/detailPage_data.json");
                         
$arr=json_decode($data,true);

// var_dump($arr);

foreach($arr as $value){
    
    $sql="INSERT INTO `detailpage` (`data_goodid`,`img`,`s_goods_name`,`fenqi_price`,`s_price`,`market_price`,`s_shop`,`storeNumber`) VALUES ('$value[data_goodid]','$value[img]','$value[s_goods_name]','$value[fenqi_price]','$value[s_price]','$value[market_price]','$value[s_shop]','$value[storeNumber]')";

    mysqli_query($con,$sql);
}



?>