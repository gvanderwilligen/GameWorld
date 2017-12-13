<?php 

$pages = array(
	array("home", "index.php"),
	array("games", "games.php"),
	array("About", "about.php"),
	array("contact", "contact.php"),
	array("Cart", "cart.php"),

);

 ?>
<div class="header">
	<ul id="logo">
		<li><a href="index.php">GameWorld</a></li>
	</ul>
	<nav id=main-nav>
		<ul>
		<?php
		foreach ($pages as $page) 
		{
			?>
				<li><a href="<?php echo $page[1]; ?>"><?php echo $page [0];?></a></li>
			
			<?php
		}
		?>
		</ul>
	</nav>
</div>