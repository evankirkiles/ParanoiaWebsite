<?php
$strJsonFileContents = file_get_contents("../config/configuration.json");
$dataArray = json_decode($strJsonFileContents, true);

$servername = $dataArray["MySQLDatabase"]["location"];
$username = $dataArray["MySQLDatabase"]["username"];
$password = $dataArray["MySQLDatabase"]["password"];
$db = $dataArray["MySQLDatabase"]["database"];

// Get input from login form
$usernumber = $_POST['usernumber'];
$userpassword = $_POST['password'];

// Create connection
$conn = new mysqli($servername, $username, $password, $db);
// Check connection
if ($conn -> connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// SQL command to get user password with given username
$sql_getuser = 'SELECT password FROM paranoiacontrol WHERE username LIKE "' . $usernumber . '%" LIMIT 1';

$results=$conn->query($sql_getuser);
if ($results) {
  if ($userpassword == $results->fetch_all()[0][0]) {
    echo json_encode(3);
  } else {
    echo json_encode(1);
  }
} else {
  echo json_encode(2);
}

// Close connection
$conn->close();
?>
