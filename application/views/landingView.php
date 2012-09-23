
   	<div id="slider"></div>
   	
   	
   	<?php if(isset($cons)) : foreach($cons as $con) : ?>
		<div id='<?php echo $con->con_id; ?>'>
			<h3><?php echo $con->con_name; ?> </h3>
			<p><?php echo $con->con_date;?> </p>
			<p><?php echo $con->con_city;?>, <?php echo $con->con_state;?> </p>	
			
		</div>
	
		<?php endforeach; ?>
    </div>
	<?php else : ?>	
		<h2>No Conventions were returned.</h2>
	<?php endif; ?>
		
