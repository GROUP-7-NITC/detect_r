<?php
error_reporting(E_ALL);
include_once("config.php");
include_once("includes/functions.php");

if(isset($_REQUEST['code'])){
	$gClient->authenticate();
	$_SESSION['token'] = $gClient->getAccessToken();
	header('Location: ' . filter_var($redirectUrl, FILTER_SANITIZE_URL));
}

if (isset($_SESSION['token'])) {
	$gClient->setAccessToken($_SESSION['token']);
}

if ($gClient->getAccessToken()) {
	echo "<script>alert('i got access token ');</script>";
	$userProfile = $google_oauthV2->userinfo->get();
	//DB Insert
	$gUser = new Users();
	$gUser->checkUser('google',$userProfile['id'],$userProfile['given_name'],$userProfile['family_name'],$userProfile['email'],$userProfile['gender'],$userProfile['locale'],$userProfile['link'],$userProfile['picture']);
	$_SESSION['google_data'] = $userProfile; // Storing Google User Data in Session
		header("location: account.php");
	$_SESSION['token'] = $gClient->getAccessToken();
} else {
	$authUrl = $gClient->createAuthUrl();
}

if(isset($authUrl)) {
	echo '<a href="'.$authUrl.'"><img src="images/glogin.png" alt=""/></a>';
} else {
	echo '<a href="logout.php?logout">Logout</a>';
}

?>