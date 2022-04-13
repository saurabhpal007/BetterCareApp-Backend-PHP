<?php
$conn = mysqli_connect("localhost","root","","appdatabase");

$user_name = $_GET['user_name'];
$query = "SELECT * FROM `admin` WHERE `user_name` LIKE '$user_name'";
$result = mysqli_query($conn, $query);
$response = array();
while ($row = mysqli_fetch_assoc($result)) {
    array_push($response, array('admin_id' => $row['admin_id'], 'user_name' => $row['user_name'], 'password' => $row['password']));
}
echo json_encode($response);

?>