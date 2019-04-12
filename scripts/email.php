<?php
set_include_path("/Users/evankirkiles/Desktop/ParanoiaWebsite");
require_once "vendor/autoload.php";

$transport = (new Swift_SmtpTransport('smtp.gmail.com', 465, 'ssl'));
$transport->setUsername('kirkilese20@kent-school.edu');
$transport->setPassword('ew359854');

$mailer = (new Swift_Mailer($transport));

$message = (new Swift_Message('Test Subject'));
$message->setFrom(array('kirkilese@gmail.com' => 'ABC'))
  ->setTo(array('kirkilese20@kent-school.edu'))
  ->setBody('This is a test mail.');

$result = $mailer->send($message);
?>