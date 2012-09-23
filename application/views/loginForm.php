
<div id="loginForm">

	<h1>Login!</h1>
    <?php 
    
	echo form_open('loginController/signIn');
	echo form_input('uname', 'Username');
	echo form_password('upass', 'Password');
	echo form_submit('submit', 'Login');
	echo '</br>';
	echo anchor('loginController/signUp', 'Create Account');
	echo form_close();
	?>
	

</div>
	
