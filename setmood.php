<?php
$conn = mysqli_connect("localhost","root","","appdatabase");

$date = $_GET['date'];
$resident_id = $_GET['resident_id'];
$mood_type = $_GET['mood_type'];

$query = "INSERT INTO `mood` (`date`, `resident_id`, `mood_type`) VALUES ('$date', '$resident_id', '$mood_type') ON DUPLICATE KEY UPDATE 
mood_type = VALUES(mood_type)";

mysqli_query($conn, $query);

$count = mysqli_affected_rows($conn);
$response = array();
array_push($response, array('count' => $count));
echo json_encode($response);
?>