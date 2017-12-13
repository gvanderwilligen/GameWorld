<?php
require("functions.php");
//VARIABLES//
$conn = connectToDB();
$menu = "inc/menu.php";
$footer ="inc/footer.php";
$idcat = 0;

if (isset($_GET["category_id"])) {
	$idcat = $_GET["category_id"];
	$sql = "SELECT * FROM games WHERE category_id = ".$idcat;
}else{
	$sql = "SELECT * FROM games";
}

$result = $conn->query($sql);

$rows = $result->fetch_all(MYSQLI_ASSOC);

?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<meta name="description" content="GameWorld">
	<link rel="shortcut icon" type="image/x-icon" href="img/icon.ico">
	<title>GameWorld</title>
</head>
<body>
	<?php
	if(file_exists($menu))
	{
		include("$menu");
	}
	?>	
	<div class="productenlijst">
		<div id="idcat_name">
		<?php 
		if ($idcat == 1) {
		 	echo "<h2>Playstation</h2>";
		}
		else if ($idcat == 2) {
			echo "<h2>Xbox</h2>";
		}
		else if ($idcat == 3) {
			echo "<h2>PC</h2>";
		}
		else if ("") {
		}
		 ?>
		</div>
		<form action="cart.php" method="post">
			<?php
			foreach ($rows as $key => $value)
			{
				echo '
				<div class="product-container"  style="background: url(\'img/'.$value["Afbeelding"].'\') no-repeat  center center ; background-size:cover">
				<div class="product-naam">'.$value["Title"].'</div>
				<div class="product-price">'.$value["Prijs"].'</div>
				<div class="product-beschrijving"><input type="checkbox" id="order-button" name="selectedgameid[]" value="'.$value["id"].'" /></div>

			</div>';
			}
			?>
			<br>
			<input class="button" id="button-addToCart" type="submit" name="" value="Put in basket..." />
		</form>
		<div class="addToCart"></div>
	</div>

	<?php
	if(file_exists($footer))
	{
		include($footer);
	}

	?>
</div>
</body>
</html>