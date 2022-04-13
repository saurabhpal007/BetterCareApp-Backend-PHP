<?php
$conn = mysqli_connect("localhost","root","","appdatabase");

$resident_id = $_GET['resident_id'];
$date = $_GET['date'];

$query = "SELECT * from visit WHERE `resident_id` LIKE '$resident_id' AND `date` LIKE '$date'";
$result = mysqli_query($conn, $query);
$response = array();
while ($row = mysqli_fetch_assoc($result)) {
    array_push($response, array('visit_id' => $row['visit_id'], 'date' => $row['date'], 'resident_id' => $row['resident_id'], 'note' => $row['note']));
}
echo json_encode($response);
?>