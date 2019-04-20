<?php
set_include_path("/Users/evankirkiles/Desktop/ParanoiaWebsite");
require_once "vendor/autoload.php";

$transport = (new Swift_SmtpTransport('smtp.gmail.com', 465, 'ssl'));
$senderemail = 'kirkilese20@kent-school.edu';
$senderpass = 'ew359854';

$transport->setUsername($senderemail);
$transport->setPassword($senderpass);

$subject = 'asdsadsd';

$mailer = (new Swift_Mailer($transport));

$message = (new Swift_Message($subject));
$message->setFrom(array($senderemail => 'ABC'))
  ->setTo(array('kirkilese20@kent-school.edu'))
  ->setBody('This is a test mail.');

$result = $mailer->send($message);
?>