<?php
function connectToDB()
{
	$host	= "localhost";
	$user	= "root"; 
	$pass	= "Gijs"; 
	$dB		= "gameworld"; 
	

	$conn = new mysqli($host, $user, $pass, $dB);
	// Check connection
	if ($conn->connect_error) {
	    die("Connection failed: " . $conn->connect_error);
	}else{
		return $conn;
	}
}
?>