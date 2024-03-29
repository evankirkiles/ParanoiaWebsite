<?php
$strJsonFileContents = file_get_contents("./website/config/configuration.json");
$dataArray = json_decode($strJsonFileContents, true);

$servername = $dataArray["MySQLDatabase"]["location"];
$username = $dataArray["MySQLDatabase"]["username"];
$password = $dataArray["MySQLDatabase"]["password"];
$db = $dataArray["MySQLDatabase"]["database"];

// ENTER ELIMINATOR CODENAME HERE
$eliminatorname = '0$';

// Create connection
$conn = new mysqli($servername, $username, $password, $db);
// Check connection
if ($conn -> connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// SQL command to get target id of eliminator's codename
$sql_gettarget = "SELECT target FROM paranoia WHERE codename LIKE '" . $eliminatorname . "%'";
// SQL command to get codename of given id
$sql_getname = "SELECT codename FROM paranoia WHERE codeindex=";

// SELECT queries return a resultset, format that into an array
$targetindex=$conn->query($sql_gettarget);
if ($targetindex) {
  $targetid=$targetindex->fetch_all()[0][0];
  $targetcodenameindex=$conn->query($sql_getname . $targetid);
  $targetcodename=$targetcodenameindex->fetch_all()[0][0];

  // Return target's codename
  echo "\n" . $targetcodename . "\n \n";
} else {
  echo "Error retrieving record: " . $conn->error;
}

// Close connection
$conn->close();
?>
