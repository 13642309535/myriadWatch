<?php
// 连接数据库
$con = mysqli_connect("127.0.0.1", "root", "", "newegg");

// // 默认,价格,等总商品数
$sqlTotal = "SELECT * FROM xiangqingye";
$resulTotal = mysqli_query($con,$sqlTotal);
$total=$resulTotal->num_rows;

// // 假设每一页显示7条商品
$itemNum=7;

// 页码数对应的商品起始索引
$index=($_POST['pagenum']-1)*$itemNum;

// // 点击默认排序
// 点击页码返回对应数据
$sql = "SELECT * FROM xiangqingye limit $index,$itemNum";

// 在结果中搜索值
$search = isset($_POST['search']) ? $_POST['search'] : '';

if($_POST['type1']=="默认"){
    $sql = "SELECT * FROM xiangqingye limit $index,$itemNum";

    if($search !=""){
        $sql = "SELECT * FROM xiangqingye  where title like '%$search%'  limit $index,$itemNum";
    
         //默认 在结果中搜索 总商品数
       $sqlAllGood = "SELECT * FROM xiangqingye  where title like '%$search%' ";
       $resultAllGood = mysqli_query($con,$sqlAllGood);
       $total=$resultAllGood->num_rows;
     }
}

// // 按价格高低渲染部分商品列表
if($_POST['type1']=="价格"){
    $order = isset($_POST['order']) ? $_POST['order'] : '';
    // 点击页码返回对应数据
    $sql = "SELECT * FROM xiangqingye ORDER BY nowprice $order  limit $index,$itemNum";

    if($search !=""){
        $sql = "SELECT * FROM xiangqingye where title like '%$search%'  ORDER BY nowprice $order limit $index,$itemNum";
    
         //价格高低 在结果中搜索 总商品数
       $sqlAllGood = "SELECT * FROM xiangqingye where title like '%$search%'  ORDER BY nowprice $order";
       $resultAllGood = mysqli_query($con,$sqlAllGood);
       $total=$resultAllGood->num_rows;
     }
}

// // 按价格区间渲染数据
if($_POST['type1']=="筛选"){
 $a=$_POST['origin'];
 $b=$_POST['end'];
 $sql= "SELECT * from xiangqingye where nowprice between  $a and $b  limit $index,$itemNum";

 //价格区间 总商品数
 $sqlAllGood = "SELECT * from xiangqingye where nowprice between  $a and $b";
 $resultAllGood = mysqli_query($con,$sqlAllGood);
 $total=$resultAllGood->num_rows;

 if($search !=''){
    $sql = "SELECT * FROM xiangqingye  where title like '%$search%' and  nowprice between  $a and $b limit $index,$itemNum";

     //价格区间 总商品数
   $sqlAllGood = "SELECT * FROM xiangqingye  where title like '%$search%' and  nowprice between  $a and $b";
   $resultAllGood = mysqli_query($con,$sqlAllGood);
   $total=$resultAllGood->num_rows;
 }

}

// // 找到对应页码的数据
$result = mysqli_query($con,$sql);
$data=mysqli_fetch_all($result, MYSQLI_ASSOC);
$all=array("total"=>$total,"data"=>$data  );
echo json_encode($all);
?>