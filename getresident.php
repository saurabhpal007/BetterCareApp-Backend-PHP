<?php
$conn = mysqli_connect("localhost","root","","appdatabase");
$query = "SELECT * from resident";
$result = mysqli_query($conn, $query);
$response = array();
while ($row = mysqli_fetch_assoc($result)) {
    array_push($response, array('resident_id' => $row['resident_id'], 'name' => $row['name'], 'dob' => $row['dob'], 'care_type' => $row['care_type'], 'sex' => $row['sex'], 'room_no' => $row['room_no']));
}
echo json_encode($response);
?>