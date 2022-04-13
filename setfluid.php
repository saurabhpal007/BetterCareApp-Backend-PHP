<?php
$conn = mysqli_connect("localhost","root","","appdatabase");

$date = $_GET['date'];
$resident_id = $_GET['resident_id'];
$ml150 = $_GET['150ml'];
$ml250 = $_GET['250ml'];
$ml350 = $_GET['350ml'];
$more = $_GET['more'];

$query = "INSERT INTO `fluid` (`date`, `resident_id`, `150ml`, `250ml`, `350ml`, `more`) VALUES ('$date', '$resident_id', '$ml150', '$ml250', '$ml350', '$more') ON DUPLICATE KEY UPDATE 
150ml = VALUES(150ml),
250ml = VALUES(250ml),
350ml = VALUES(350ml),
more = VALUES(more)";

mysqli_query($conn, $query);
$count = mysqli_affected_rows($conn);
$response = array();
array_push($response, array('count' => $count));
echo json_encode($response);
?>