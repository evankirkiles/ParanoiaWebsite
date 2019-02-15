<?php
$servername = 'den1.mysql6.gear.host';
$username = 'paranoiasystem';
$password = 'AAAAAAAAAAA';
$db = 'paranoiasystem';

// Create connection
$conn = new mysqli($servername, $username, $password, $db);
// Check connection
if ($conn -> connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// SQL command to get all living players
$sql_getliving = "SELECT codeindex FROM paranoia WHERE eliminated=0";
// SQL command to update targets column with randomized living players
$sql_updatetargets1 = "UPDATE paranoia SET target=";
$sql_updatetargets2 = " WHERE codeindex=";

// SELECT queries return a resultset; format that into an array
$results = $conn->query($sql_getliving);
if ($results) {
  $list = array();
  foreach($results->fetch_all() as $data) {
    array_push($list, $data[0]);
  }

  // Update living players' targets to their new targets
  // This is done by shuffling the list and then swapping self-targets
  $newtargets = $list;

  shuffle($newtargets);
  for ($i = 0; $i < count($newtargets); $i++) {

    // First value may change so check it first
    if ($newtargets[count($newtargets)-1] == $list[count($newtargets)-1]) {
      $temp = $newtargets[0];
      $newtargets[0] = $newtargets[$i];
      $newtargets[$i] = $temp;
    }

    // All values before the last value
    if ($newtargets[$i] == $list[$i]) {
      if ($i != (count($newtargets)-1)) {
        $temp = $newtargets[$i + 1];
        $newtargets[$i+1] = $newtargets[$i];
        $newtargets[$i] = $temp;
      }
    }

    // Now update the mySQL database
    $conn->query($sql_updatetargets1 . $newtargets[$i] . $sql_updatetargets2 . $list[$i]);
  }
} else {
  echo "Error retrieving record. " . $conn->error;
}

// Close connection
$conn->close();
?>
