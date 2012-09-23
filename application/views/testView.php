<?php if(isset($list)) : foreach($list as $item) : ?>
		<div id="invoice">
			<p>NAME:<?php echo $item['item_name'] ?></p>
			<p>PRICE:<?php echo $item['item_price'] ?></p>	
			<p>ID:<?php echo $item['item_id'] ?></p>	
		</div>	
		<?php endforeach; ?>

	<?php else : ?>	
		<h2>No records were returned.</h2>
	<?php endif; ?>

