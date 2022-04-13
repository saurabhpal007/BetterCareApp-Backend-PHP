<?php
$conn = mysqli_connect("localhost","root","","appdatabase");

$resident_id = $_GET['resident_id'];
$date = $_GET['date'];

$query = "SELECT * from meal WHERE `resident_id` LIKE '$resident_id' AND `date` LIKE '$date'";

$result = mysqli_query($conn, $query);
$response = array();
while ($row = mysqli_fetch_assoc($result)) {
    array_push($response, array('meal_id' => $row['meal_id'], 'date' => $row['date'], 'resident_id' => $row['resident_id'], 'breakfast' => $row['breakfast'], 'snack' => $row['snack'], 'lunch' => $row['lunch'], 'dinner' => $row['dinner']));
}
echo json_encode($response);
?>