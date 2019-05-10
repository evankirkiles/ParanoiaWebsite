<?php
// Require PHP mailer
set_include_path("/Users/evankirkiles/Desktop/ParanoiaWebsite");
require_once "vendor/autoload.php";

$strJsonFileContents = file_get_contents("../config/configuration.json");
$dataArray = json_decode($strJsonFileContents, true);

$servername = $dataArray["MySQLDatabase"]["location"];
$username = $dataArray["MySQLDatabase"]["username"];
$password = $dataArray["MySQLDatabase"]["password"];
$db = $dataArray["MySQLDatabase"]["database"];

// SETTINGS FOR THE EMAIL (NEED ACTUAL PARANOIA EMAIL)
$senderemail = $dataArray["email"]["username"];
$senderpass = $dataArray["email"]["password"];

// Email customization
$senderfrom = $dataArray["customization"]["emailFrom"];

// To whom should the emails be sent
$setting = $_POST['setting'];
// If a specific player is specified, do them
$player = $_POST['codename'];
// The email text to be sent
$email = $_POST['emailtext'];
// The subject of the email
$emailsubject = $_POST['emailsubject'];

// SQL command to get all players emails from database
$sql_emails = 'SELECT email,target,codename FROM paranoia ORDER BY codeindex';
// SQL command to get all living players emails from database
$sql_emails_living = 'SELECT email,target,codename FROM paranoia WHERE eliminated=0 ORDER BY codeindex';
// SQL command to get the email of a specific codename
$sql_specific_codename = 'SELECT email,target,codename FROM paranoia WHERE codename LIKE "';
// SQL command to get the names and target numbers for filling in email
$sql_names_targets = 'SELECT codeindex,codename FROM paranoia ORDER BY codeindex';

// Success code global
$success = true;

// Create connection
$conn = new mysqli($servername, $username, $password, $db);
// Check connection
if ($conn -> connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// Build the query string depending on who we want to email
$query = '';
if ($setting == 'all') {
	$query = $sql_emails;
} elseif ($setting == 'living') {
	$query = $sql_emails_living;
} else {
	$query = $sql_specific_codename . $player . '%" LIMIT 1';
}

// Build dictionary of ids and names
$results2 = $conn->query($sql_names_targets);
$idsandcodenames = array();
if ($results2) {
  foreach($results2->fetch_all()as $data1) {
    $idsandcodenames[strval($data1[0])] = $data1[1];
  }
}

// Perform the query and retrieve list of emails
$string = "";
$results = $conn->query($query);
$list = array();
if ($results) {
  $arrayIndex = 0;
  foreach($results->fetch_all() as $data) {
    if (!($data[0] == null || $data[0] == '')) { 
    	$list[$arrayIndex] = array($data[0], $data[1], $data[2]);
      $arrayIndex++;
    }
  }
} else {
  $success = false;
}

// Close the MySQL database question
$conn->close();

$transport = new Swift_SmtpTransport('smtp.gmail.com', 465, 'ssl');

$transport->setUsername($senderemail);
$transport->setPassword($senderpass);

$mailer = (new Swift_Mailer($transport));

// Retain the count from before
$countOfEmails = $_POST['countOfEmails'];
$shouldContinue = false;
$tempCount = 0;

// $objects is an array with 3 elements: [0] the email, [1] the target id, [2] the user's id
foreach($list as $index => $objects) {
  if ($tempCount == $countOfEmails) {
    $tempCount++;
    $countOfEmails++;

    // $idsandcodenames links user id to codenames, so access it using the id of the target
    // as the index which is currently the second element of each $objects array
    $tempemail = str_replace('~(TARGET)~', $idsandcodenames[strval($objects[1])], $email);
    $tempemail = str_replace('~(SELF)~', $objects[2], $tempemail);

    $message = (new Swift_Message($emailsubject));
    $message->setFrom(array($senderemail => $senderfrom))
      ->setTo(array($objects[0]))
      ->setBody($tempemail);

    try {
      $result = $mailer->send($message);
    } catch (Exception $e) {
      $shouldContinue = true;
      break;
    }
  } else {
    $tempCount++;
  }
}

echo json_encode(["count" => $countOfEmails, "continue" => $shouldContinue]);
?>