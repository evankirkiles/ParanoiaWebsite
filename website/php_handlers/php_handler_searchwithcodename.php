<?php
$servername = 'den1.mysql6.gear.host';
$username = 'paranoiasystem';
$password = 'Eb09c~g0~4vZ';
$db = 'paranoiasystem';

// Get search codename
$codename = $_POST['user_codename'];

// SQL command to get info from that codename
$sql = 'SELECT firstname, lastname, elims, eliminated, target, codeindex, codename FROM paranoia WHERE codename LIKE "' . $codename . '%" LIMIT 1';
// SQL command to get codename from given id
$sql_getname = "SELECT codename FROM paranoia WHERE codeindex=";
// SQL command to get the eliminator from given id
$sql_geteliminator = "SELECT codename FROM paranoia WHERE target=";

// Create connection
$conn = new mysqli($servername, $username, $password, $db);
// Check connection
if ($conn -> connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

/* Select queries return a resultset */
$results = $conn->query($sql);
if ($results) {
  $list = array();
  foreach($results->fetch_all() as $data){
    if ($data[0] == null) { $data[0] = 'Not given.'; }
    if ($data[1] == null) { $data[1] = 'Not given.'; }
      array_push($list, $data[0]);
      array_push($list, $data[1]);
      array_push($list, $data[2]);
    if ($data[3] === 1) { $data[3] = 'Inactive'; }
    elseif ($data[3] === 0) { $data[3] = 'Active'; }
      array_push($list, $data[3]);
      $newresults = $conn->query($sql_getname . $data[4])->fetch_all()[0][0];
      array_push($list, $newresults);
      $eliminatorname = $conn->query($sql_geteliminator . $data[5])->fetch_all()[0][0];
      array_push($list, $eliminatorname);
      array_push($list, $data[6]);
  }
  echo json_encode($list);
} else {
  echo "Error retrieving record: " . $conn->error ;
}

// Close connection
$conn->close();
?>
