<?php
//建表
$con=mysqli_connect("127.0.0.1","root","","myriadwatch");

$data=file_get_contents("http://127.0.0.1/myriadWatch/js/listPage_data.json");
                         
$arr=json_decode($data,true);

foreach($arr as $value){

        
    $sql="INSERT INTO `listpage` (`imgGood`,`schoolOpenImg`,`schoolOpenPrice`,`fenqi_price`,`s_price`,`s_goods_name`,`goods_sale1`,`goods_sale2`,`s_shop`) VALUES('$value[imgGood]','$value[schoolOpenImg]','$value[schoolOpenPrice]','$value[fenqi_price]','$value[s_price]','$value[s_goods_name]','$value[goods_sale1]','$value[goods_sale2]','$value[s_shop]')";

    mysqli_query($con,$sql);
}



?>