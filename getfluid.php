<?php
$conn = mysqli_connect("localhost","root","","appdatabase");

$resident_id = $_GET['resident_id'];
$date = $_GET['date'];

$query = "SELECT * from fluid WHERE `resident_id` LIKE '$resident_id' AND `date` LIKE '$date'";
$result = mysqli_query($conn, $query);
$response = array();
while ($row = mysqli_fetch_assoc($result)) {
    array_push($response, array('fluid_id' => $row['fluid_id'], 'date' => $row['date'], 'resident_id' => $row['resident_id'], '150ml' => $row['150ml'], '250ml' => $row['250ml'], '350ml' => $row['350ml'], 'more' => $row['more']));
}
echo json_encode($response);
?>