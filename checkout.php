<?php
// checkout.php

session_start();

require("functions.php");

$totalPrice = 0;

$connect = connectToDB();
$rows = array();
foreach ($_SESSION["myselectedids"] as $value) 
{
	$sql = "select * from games where id = " . $value;
	$result = $connect->query($sql);
	$rows[] = $result->fetch_all(MYSQLI_ASSOC);
}
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
	<div class="productenlijst">
		<table>
			<thead>
				<tr>
					<th>
						image
					</th>
					<th width="150px">
						Name
					</th>
					<th>
						Description
					</th>
					<th>
						Price
					</th>
				</tr>
			</thead>
			<tbody>
				<?php
				if(count($rows) < 1)
				{
					?>
					<tr>
						<td colspan="4">Your cart is empty!!</td>
					</tr>
					<?php
				}
				else
				{
					foreach($rows as $game)
					{
						?>
						<tr>
							<td><?php echo '<div class="product-container"  style="background: url(\'img/'.$game[0]["Afbeelding"].'\') no-repeat  center center ; background-size:cover">'?></td>
							<td><?php echo $game[0]["Title"]; ?></td>
							<td><?php echo $game[0]["Beschrijving"]; ?></td>
							<td>€<?php echo $game[0]["Prijs"]; ?></td>
						</tr>
						<?php
					}
				}
				?>


			</tbody>
			<tr>
				<td><form action="inc/clear.php" method="post">
					<input class="button" type="submit" name="clearSession" value="Clear cart" style="height: 50px;"/>
				</form></td>
				<td></td>
				<td class="total-price1">Total price:</td>
				<?php
				foreach($rows as $game)
				{
					$totalPrice += $game[0]['Prijs'] ;
				}
				
				?>
				<td id="Total-price">€<?php echo $totalPrice?></td>
			</tr>
		</table>
	</div>

	<?php
	include("inc/footer.php")
	?>
</body>
</html>