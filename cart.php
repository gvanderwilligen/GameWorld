<?php 
session_start();


if (!isset($_SESSION["myselectedids"])) {
	$_SESSION["myselectedids"] = array();
}

foreach ($_POST["selectedgameid"] as $gameid)
	{
		$_SESSION["myselectedids"][]= $gameid;
	}

	header("location:checkout.php");
	//print_r($_SESSION);


 ?>