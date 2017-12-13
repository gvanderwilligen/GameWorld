<?php

session_start();

//session_destroy();

	$menu = "inc/menu.php";
	$footer = "inc/footer.php";



?>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="description" content="Positionering">
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<link rel="shortcut icon" type="image/x-icon" href="img/icon.ico">
	<title>GameWorld</title>
</head>
<body>
<?php
include("inc/menu.php");
?>
	<div id="main-container">
		
		<div class="discription">
			<h1>Welcome at GameWorld</h1>
			<h2>For al the best games in one Store</h2>
		</div>
	
		<div id="maincat">
		<div id="categories">
			<div id="PS4">
				<div class="fadein"><a href="games.php?category_id=1"><img src="img/ps4.jpg" class="big-button"></a></div>
			</div>
			<div id="Xbox">
				<div class="fadein"><a href="games.php?category_id=2"><img src="img/xbox.png" class="big-button"></a></div>
			</div>
			<div id="PC">
				<div class="fadein"><a href="games.php?category_id=3"><img src="img/steam.png" class="big-button"></a></div>
			</div>
		</div>
		</div>
	</div>
<?php
	if (file_exists($footer)) 
	{
		include($footer);
	}
?>
</body>

</html>