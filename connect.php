<?php

$checkindate = $_POST['checkindate'];
$checkoutdate =$_POST['checkoutdate'];
$adult = $_POST['adult'];
$children = $_POST['children'];
$rooms = $_POST['rooms'];

//database connection
$conn = new mysqli('localhost','root','','test');
if($conn->connect_error){
    die('connect fail : '.$conn1->connect_error);
}else{
    $stmt = $conn->prepare("insert into registration(checkindate,checkoutdate,adult,children,rooms)values(?, ?, ?, ?,? )");
    $stmt->bind_param("ssiii",$checkindate,$checkoutdate,$adult,$children,$rooms);
    $stmt->execute();
    echo "You are all set to select your desired Room!";
    $stmt->close();
    $conn->close();
}



?>

