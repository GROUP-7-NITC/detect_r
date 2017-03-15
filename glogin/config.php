<?php
session_start();
include_once("src/Google_Client.php");
include_once("src/contrib/Google_Oauth2Service.php");
######### edit details ##########
$clientId = '682894970228-1ora1nh4fkhh3rat7qoesk919ju14i30.apps.googleusercontent.com'; //Google CLIENT ID
$clientSecret = '80Bb_22PBMFYJ0x68inZ-PxQ'; //Google CLIENT SECRET
$redirectUrl = 'http://localhost/detect-r/glogin';  //return url (url to script)
$homeUrl = 'https://localhost/detect-r/index.php';  //return to home



##################################

$gClient = new Google_Client();
$gClient->setApplicationName('API key 1 for login test');
$gClient->setClientId($clientId);
$gClient->setClientSecret($clientSecret);
$gClient->setRedirectUri($redirectUrl);

$google_oauthV2 = new Google_Oauth2Service($gClient);
?>