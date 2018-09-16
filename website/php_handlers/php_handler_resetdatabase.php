<?php
$servername = 'den1.mysql6.gear.host';
$username = 'paranoiasystem';
$password = 'Eb09c~g0~4vZ';
$db = 'paranoiasystem';

// Create connection
$conn = new mysqli($servername, $username, $password, $db);
// Check connection
if ($conn -> connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// SQL command to get all living players
$sql_resetdb = "UPDATE paranoia SET eliminated=0,elims=0";

// SELECT queries return a resultset; format that into an array
$results = $conn->query($sql_resetdb);
if ($results) {
  echo json_encode(1);
} else {
  echo json_encode(0);
}

// Close connection
$conn->close();
?>
