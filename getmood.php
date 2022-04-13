<?php
$conn = mysqli_connect("localhost","root","","appdatabase");

$resident_id = $_GET['resident_id'];
$date = $_GET['date'];

$query = "SELECT * from mood WHERE `resident_id` LIKE '$resident_id' AND `date` LIKE '$date'";
$result = mysqli_query($conn, $query);
$response = array();
while ($row = mysqli_fetch_assoc($result)) {
    array_push($response, array('mood_id' => $row['mood_id'], 'date' => $row['date'], 'resident_id' => $row['resident_id'], 'mood_type' => $row['mood_type']));
}
echo json_encode($response);
?>