<?php
$conn = mysqli_connect("localhost","root","","appdatabase");

$resident_id = $_GET['resident_id'];

$query = "DELETE FROM `resident` WHERE `resident_id` = $resident_id";
mysqli_query($conn, $query);

$count = mysqli_affected_rows($conn);
$response = array();
array_push($response, array('count' => $count));
echo json_encode($response);
?>