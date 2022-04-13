<?php
$conn = mysqli_connect("localhost","root","","appdatabase");

$date = $_GET['date'];
$resident_id = $_GET['resident_id'];
$bathing = $_GET['bathing'];
$skin_care = $_GET['skin_care'];
$oral_care = $_GET['oral_care'];
$dressing = $_GET['dressing'];
$pad_change = $_GET['pad_change'];
$hair_care = $_GET['hair_care'];

$query = "INSERT INTO `personalcare` (`date`, `resident_id`, `bathing`, `skin_care`, `oral_care`, `dressing`, `pad_change`, `hair_care`) VALUES ('$date', '$resident_id', '$bathing', '$skin_care', '$oral_care', '$dressing', '$pad_change', '$hair_care')
ON DUPLICATE KEY UPDATE 
bathing = VALUES(bathing),
skin_care = VALUES(skin_care),
oral_care = VALUES(oral_care),
dressing = VALUES(dressing),
pad_change = VALUES(pad_change),
hair_care = VALUES(hair_care)";

mysqli_query($conn, $query);

$count = mysqli_affected_rows($conn);
$response = array();
array_push($response, array('count' => $count));
echo json_encode($response);
?>