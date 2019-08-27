<?php
//建表
$con=mysqli_connect("127.0.0.1","root","","newegg");

$data=file_get_contents("G:\wamp\www\ProjectOne\server\data\detailHtmlTable.json");

$arr=json_decode($data,true);

foreach($arr as $value){

    $sql="INSERT INTO `detailpage` (`img1`,`img2`,`img3`,`title`,`discounts`,`brand`,`version`,`color`,`price`,`day7Support`,`store`,`commentNum`,`commentScore`,`goodID`,`productID`) 
    VALUES  ('$value[img1]','$value[img2]','$value[img3]','$value[title]','$value[discounts]','$value[brand]','$value[version]','$value[color]','$value[price]','$value[day7Support]','$value[store]','$value[commentNum]','$value[commentScore]','$value[goodID]','$value[productID]')";
    echo( $sql);


    mysqli_query($con,$sql);
    // echo("$value[day7Support]");


}



?>