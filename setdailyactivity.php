<?php
$conn = mysqli_connect("localhost","root","","appdatabase");

$date = $_GET['date'];
$resident_id = $_GET['resident_id'];
$note = $_GET['note'];

$query = "INSERT INTO `dailyactivity` (`date`, `resident_id`, `note`) VALUES ('$date', '$resident_id', '$note')
ON DUPLICATE KEY UPDATE 
note = VALUES(note)";
mysqli_query($conn, $query);

$count = mysqli_affected_rows($conn);
$response = array();
array_push($response, array('count' => $count));
echo json_encode($response);
?>