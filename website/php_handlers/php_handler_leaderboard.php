<?php
$servername = 'den1.mysql6.gear.host';
$username = 'paranoiasystem';
$password = 'Eb09c~g0~4vZ';
$db = 'paranoiasystem';

// Get whether looking for alive or all
$alive = $_POST['alive'];

// Create connection
$conn = new mysqli($servername, $username, $password, $db);
// Check connection
if ($conn -> connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// SQL command to get top 5 from database
$sql_names = 'SELECT codename FROM paranoia ORDER BY elims DESC LIMIT 5';
$sql_elims = 'SELECT elims FROM paranoia ORDER BY elims DESC LIMIT 5';
// SQL command to get top 5 living from database
$sql_names_living = 'SELECT codename FROM paranoia WHERE eliminated=0 ORDER BY elims DESC LIMIT 5';
$sql_elims_living = 'SELECT elims FROM paranoia WHERE eliminated=0 ORDER BY elims DESC LIMIT 5';

/* Select queries return a resultset */
if ($alive == 1) {
  $results = $conn->query($sql_names_living);
  $results_elims = $conn->query($sql_elims_living);
} else if ($alive == 0) {
  $results = $conn->query($sql_names);
  $results_elims = $conn->query($sql_elims);
}
if ($results and $results_elims) {
  $list = array();
  $index = 0;
  $index2 = 0;
  foreach($results->fetch_all() as $data){
      array_push($list, $data[0]);
      $index +=1;
  }
  if ($index != count($list)) {
    for ($i=$index-1; $i<count($list); $i++) {
      array_push($list, 'N/A');
    }
  }
  foreach($results_elims->fetch_all() as $elimdata){
      array_push($list, $elimdata[0]);
      $index2 +=1;
  }
  if ($index2 != count($list) - 5) {
    for ($i=$index2-1; $i<count($list) - 5; $i++) {
      array_push($list, 0);
    }
  }
  echo json_encode($list);
} else {
  echo "Error retrieving record: " . $conn->error ;
}

// Close connection
$conn->close();
?>
