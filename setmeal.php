<?php
$conn = mysqli_connect("localhost","root","","appdatabase");

$date = $_GET['date'];
$resident_id = $_GET['resident_id'];
$breakfast = $_GET['breakfast'];
$snack = $_GET['snack'];
$lunch = $_GET['lunch'];
$dinner = $_GET['dinner'];

$query = "INSERT INTO `meal` (`date`, `resident_id`,`breakfast`, `snack`, `lunch`, `dinner`) VALUES ('$date', '$resident_id', '$breakfast','$snack', '$lunch', '$dinner')
ON DUPLICATE KEY UPDATE 
breakfast = VALUES(breakfast),
snack = VALUES(snack),
lunch = VALUES(lunch),
dinner = VALUES(dinner)";
mysqli_query($conn, $query);

$count = mysqli_affected_rows($conn);
$response = array();
array_push($response, array('count' => $count));
echo json_encode($response);
?>