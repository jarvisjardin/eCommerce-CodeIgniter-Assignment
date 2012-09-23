
    <h3>Want to edit the Products?</h3> 
    <?php 
    	echo anchor("loginController", 'LOGIN');
	    		
    ?>	
     	
    <hr />
    <div id='products'>
	<?php if(isset($records)) : foreach($records as $row) : ?>
		<div class="product" id='<?php echo $row->product_id; ?>'>
			<h3><?php echo $row->product_name; ?></h3>
			<p id='pPrice'>$<?php echo $row->product_price;?></p>
			<p id='pCat'><?php echo $row->product_category;?></p>	
			<p class='productID'><?php echo $row->product_id; ?></p>
		</div>
	
		<?php endforeach; ?>
    </div>
	<?php else : ?>	
		<h2>No records were returned.</h2>
	<?php endif; ?>
	



		
	
		<div id="cart-wrap">
			<div id="cartfollow" style="height:0px; width:260px; float:right;"></div>
			
			<div class="sidepanel lshadow" id="scart">
				<h3 class="sidehead">Your Shopping Cart</h3>
				<div class="cartdropbox">Drop Items Here</div>
				<div class="cartitems cf">
				
				
					<div id='empty' class="cartitem cf emptycart" rel="empty">
						<span class="title">Your cart is currently empty.</span>
					</div>
				
				</div>
				<p id='emptyCart'><a href="#">Empty</a></p>
				<p id='checkOut'><a href="#">Checkout</a></p>
			</div>
	
		</div>		

		<a href="#" id="scrollToTop">Top</a>

