<!DOCTYPE html>

<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"> 
	<title>KpoppinUSA</title>
	<link rel="stylesheet" href="<?php echo base_url();?>css/style.css" type="text/css" media="screen" />
	
</head>
<body>
	<?php echo anchor("loginController/logout", "LOGOUT"); ?>


	<h2>ADD PRODUCT</h2>
     
	<?php echo form_open('secretController/create');?>
	
	<p>
		<label for="title">Title:</label>
		<input type="text" name="title" id="title" />
	</p>
	
	<p>
		<label for="content">Price:</label>
		<input type="number" name="price" id="price" />
	</p>
	
	<p>
		<label for="content">Category:</label>
		<select name="category">
			<option value="poster">Poster</option>
			<option value="wristband">Wristband</option>
			<option value="wallscroll">Wallscroll</option>
			<option value="button">Button</option>

		</select>
	</p>	
	
	<p>
		<input type="submit" value="Add Product" />
	</p>
	<?php echo form_close(); ?>
	
	<hr />


	<?php if(isset($records)) : foreach($records as $row) : ?>
		<div class="product">
			<h3><?php echo $row->product_name; ?> </h3>
			<?php 
			echo anchor("secretController/delete/$row->product_id", "Delete");
			echo '</br>';
			echo '$'; 
			echo $row->product_price;
			echo '  ';
			echo $row->product_category;	
			?>
		</div>
	
		<?php endforeach; ?>
	
	<?php else : ?>	
		<h2>No records were returned.</h2>
	<?php endif; ?>
	
	<hr />
	
		
</body>
</html>	