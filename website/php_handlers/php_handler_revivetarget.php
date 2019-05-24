<?php
$strJsonFileContents = file_get_contents("../config/configuration.json");
$dataArray = json_decode($strJsonFileContents, true);

$servername = $dataArray["MySQLDatabase"]["location"];
$username = $dataArray["MySQLDatabase"]["username"];
$password = $dataArray["MySQLDatabase"]["password"];
$db = $dataArray["MySQLDatabase"]["database"];

// Player codename to revive
$codename = $_POST['codename'];

// Create connection
$conn = new mysqli($servername, $username, $password, $db);
// Check connection
if ($conn -> connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// SQL command to get codeindex and target of dead person's codename
$sql_getdead = "SELECT codeindex, target FROM paranoia WHERE codename LIKE '" . $codename . "%'";
// SQL command to get the codeindex of the dead person's target's hunter
$sql_gethunter = "SELECT codeindex, codename FROM paranoia WHERE target=";
// SQL command to update the target of the hunter to the dead person
$sql_settarget_1 = "UPDATE paranoia SET target=";
$sql_settarget_2 = " WHERE codeindex=";
// SQL command to set the eliminated status of the dead person to 0
$sql_revive = "UPDATE paranoia SET eliminated=0 WHERE codeindex=";

// SELECT queries return a resultset; format that into an array
$getdead =  $conn->query($sql_getdead);
if($getdead) {
  // Save the index and the dead person's target
  $stats = $getdead->fetch_all()[0];
  // Dead ind is 0, dead target is 1

  // Now get the index of the current hunter of the dead person's target
  $gethunter = $conn->query($sql_gethunter . $stats[1]);
  if ($gethunter) {
    // Save the index of the hunter
    $hunterstats = $gethunter->fetch_all()[0];
    // Hunter ind is 0, hunter name is 1

    // Revive the dead person
    $conn->query($sql_revive . $stats[0]);
    // Set the target of the hunter to the revived person.
    $conn->query($sql_settarget_1 . $stats[0] . $sql_settarget_2 . $hunterstats[0]);

    // Finally, echo a JSON object containing all the information
    echo json_encode(array('revived_index' => $stats[0], 'revived_codename' => $codename, 'hunter_name' => $hunterstats[1], 'hunter_ind' => $hunterstats[0]));
  } else {
    echo json_encode($stats);
  }
} else {
  echo json_encode(0);
}

// Close connection
$conn->close();
?>
