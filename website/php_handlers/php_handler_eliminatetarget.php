<?php
$strJsonFileContents = file_get_contents("../config/configuration.json");
$dataArray = json_decode($strJsonFileContents, true);

$servername = $dataArray["MySQLDatabase"]["location"];
$username = $dataArray["MySQLDatabase"]["username"];
$password = $dataArray["MySQLDatabase"]["password"];
$db = $dataArray["MySQLDatabase"]["database"];

// Eliminator codename
$eliminatorname = $_POST['eliminatorname'];
// Target codename
$targetname = $_POST['targetname'];

// Create connection
$conn = new mysqli($servername, $username, $password, $db);
// Check connection
if ($conn -> connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// SQL command to get codeindex of eliminator's codename
$sql_geteliminator = "SELECT codeindex FROM paranoia WHERE codename LIKE '" . $eliminatorname . "%'";
// SQL command to get codeindex of target's codename
$sql_gettarget = "SELECT codeindex FROM paranoia WHERE codename LIKE '" . $targetname . "%'";
// SQL command to get codeindex of target's target
$sql_getnewtarget = "SELECT target FROM paranoia WHERE codeindex=";
// SQL command to increase the eliminator's elims by 1
$sql_increaseelims = "UPDATE paranoia SET elims=elims+1 WHERE codeindex=";
// SQL command to make eliminator's target the target's target
$sql_setnewtarget1 = "UPDATE paranoia SET target=";
$sql_setnewtarget2 = " WHERE codeindex=";
// SQL command to eliminate the target
$sql_seteliminated = "UPDATE paranoia SET eliminated=1 WHERE codeindex=";
// SQL command to find name of a player
$sql_getname = "SELECT codename FROM paranoia WHERE codeindex=";
// SQL command to get the eliminations of the eliminator
$sql_getelims = "SELECT elims FROM paranoia WHERE codeindex=";

// SELECT queries return a resultset; format that into an array
$eliminatorindex =  $conn->query($sql_geteliminator);
$targetindex = $conn->query($sql_gettarget);
do {
if($eliminatorindex and $targetindex) {
  $eliminator = $eliminatorindex->fetch_all()[0][0];
  $target = $targetindex->fetch_all()[0][0];

  // Get eliminator's target to make sure the elimination is legit
  $elimtargetindex = $conn->query($sql_getnewtarget . $eliminator);
  if (!$elimtargetindex) {echo json_encode(2); break;}
  $elimtarget = $elimtargetindex->fetch_all()[0][0];

  // Do not perform elimination if the correct target is not passed in
  if ($elimtarget != $target) {
    echo json_encode(1);
  } else {
    // Get new target
    $newtargetindex = $conn->query($sql_getnewtarget . $target);
    $newtarget = $newtargetindex->fetch_all()[0][0];
    $newtargetnameindex = $conn->query($sql_getname . $newtarget);
    $newtargetname = $newtargetnameindex->fetch_all()[0][0];

    // Set eliminator's new target to be the target's target
    $conn->query($sql_setnewtarget1 . $newtarget . $sql_setnewtarget2 . $eliminator);

    // Increase eliminator's eliminations by 1
    $conn->query($sql_increaseelims . $eliminator);

    // Set target as eliminated
    $conn->query($sql_seteliminated . $target);

    // Get eliminator's new eliminations
    $eliminatoreliminations = $conn->query($sql_getelims . $eliminator)->fetch_all()[0][0];
    $info = array();

    array_push($info, $eliminatorname);
    array_push($info, $eliminatoreliminations);
    array_push($info, $newtargetname);

    echo json_encode($info);
  }
} else {
  echo json_encode(0);
}
} while (false);

// Close connection
$conn->close();
?>
