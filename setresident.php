<?php
$conn = mysqli_connect("localhost","root","","appdatabase");

$name = $_GET['name'];
$dob = $_GET['dob'];
$care_type = $_GET['care_type'];
$sex = $_GET['sex'];
$room_no = $_GET['room_no'];
$query = "INSERT INTO `resident`(`name`, `dob`, `care_type`, `sex`, `room_no`) VALUES (
'$name',
'$dob',
'$care_type',
'$sex',
'$room_no')";
mysqli_query($conn, $query);

$query2 = "SELECT * FROM resident ORDER BY resident_id DESC LIMIT 0, 1";
$result = mysqli_query($conn, $query2);
$response = array();
while ($row = mysqli_fetch_assoc($result)) {
    array_push($response, array('resident_id' => $row['resident_id'], 'name' => $row['name'], 'dob' => $row['dob'], 'care_type' => $row['care_type'], 'sex' => $row['sex'], 'room_no' => $row['room_no']));
}
echo json_encode($response);

?>