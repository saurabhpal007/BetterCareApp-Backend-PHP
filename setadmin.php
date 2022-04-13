<?php
$conn = mysqli_connect("localhost","root","","appdatabase");

$user_name = $_GET['user_name'];
$password = $_GET['password'];

$query = "INSERT INTO `admin` (`user_name`, `password`) VALUES ('$user_name', '$password')";
mysqli_query($conn, $query);

$count = mysqli_affected_rows($conn);
$response = array();
array_push($response, array('count' => $count));
echo json_encode($response);

?>