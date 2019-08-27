<?php
//建表
$con=mysqli_connect("127.0.0.1","root","","newegg");

$data=file_get_contents("G:\wamp\www\ProjectOne\server\data\list.json");
                         
$arr=json_decode($data,true);

foreach($arr as $value){

// $sql="INSERT INTO `xiangqingye` (`img1_src`) VALUES ($value[img1_src])";
        
    $sql="INSERT INTO `xiangqingye` (`img1_src`,`img2_bg_val`,`img3_bg_background`,`title`,`prom`,`rank_bg`,`cmt_num`,`del_price`,`nowprice`,`action1` ) VALUES  ('$value[img1_src]','$value[img2_bg_val]','$value[img3_bg_background]','$value[title]','$value[prom]','$value[rank_bg]','$value[cmt_num]','$value[del_price]','$value[nowprice]','$value[action1]')";

    mysqli_query($con,$sql);
}



?>