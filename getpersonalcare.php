<?php
$conn = mysqli_connect("localhost","root","","appdatabase");

$resident_id = $_GET['resident_id'];
$date = $_GET['date'];

$query = "SELECT * from personalcare WHERE `resident_id` LIKE '$resident_id' AND `date` LIKE '$date'";
$result = mysqli_query($conn, $query);
$response = array();
while ($row = mysqli_fetch_assoc($result)) {
    array_push($response, array('personal_id' => $row['personal_id'], 'date' => $row['date'], 'resident_id' => $row['resident_id'], 'bathing' => $row['bathing'], 'skin_care' => $row['skin_care'], 'oral_care' => $row['oral_care'], 'dressing' => $row['dressing'], 'pad_change' => $row['pad_change'], 'hair_care' => $row['hair_care']));
}
echo json_encode($response);
?>