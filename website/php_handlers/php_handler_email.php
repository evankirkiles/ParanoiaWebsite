<?php
// Require PHP mailer
set_include_path("/Users/evankirkiles/Desktop/ParanoiaWebsite");
require_once "vendor/autoload.php";

$servername = 'den1.mysql6.gear.host';
$username = 'paranoiasystem';
$password = 'Eb09c~g0~4vZ';
$db = 'paranoiasystem';

// To whom should the emails be sent
$setting = $_POST['setting'];
// If a specific player is specified, do them
$player = $_POST['specificplayer'];
// The email text to be sent
$email = $_POST['emailtext'];

// SQL command to get all players emails from database
$sql_emails = 'SELECT email,target FROM paranoia';
// SQL command to get all living players emails from database
$sql_emails_living = 'SELECT email,target FROM paranoia WHERE eliminated=0';
// SQL command to get the email of a specific codename
$sql_specific_codename = 'SELECT email,target FROM paranoia WHERE codename="';
// SQL command to get the names and target numbers for filling in email
$sql_names_targets = 'SELECT codeindex,codename FROM paranoia';

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
	$query = $sql_specific_codename . $player . '"';
}

// Build dictionary of ids and names
$results2 = $conn->query($sql_names_targets);
$idsandtargets = array();
if ($results2) {
  foreach($results2->fetch_all()as $data1) {
    $idsandtargets[strval($data1[0])] = $data1[1];
  }
}

// Perform the query and retrieve list of emails
$results = $conn->query($query);
$list = array();
if ($results) {
  foreach($results->fetch_all() as $data) {
    if (!($data[0] == null || $data[0] == '')) { 
    	$list[$data[0]] = $data[1];
    }
  }
} else {
  $success = false;
}

// Close the MySQL database question
$conn->close();

$transport = new Swift_SmtpTransport('smtp.gmail.com', 465, 'ssl');
$transport->setUsername('kirkilese20@kent-school.edu');
$transport->setPassword('ew359854');

$mailer = (new Swift_Mailer($transport));

foreach($list as $emailName => $target) {
  $message = (new Swift_Message('Test Subject'));
  $message->setFrom(array('kirkilese20@kent-school.edu' => 'The Paranoia Staff'))
    ->setTo(array($emailName))
    ->setBody(str_replace('~(TARGET)~', $idsandtargets[strval($target)], $email));

  $result = $mailer->send($message);
}

echo $success;
?>