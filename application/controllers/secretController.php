<?php
	
class secretController extends CI_Controller{

	function __construct(){
		
		parent::__construct();
		$this->is_logged_in();
		 
	}
	
	function index()
	{
		$data = array();

		if($query = $this->product_model->get_records())
		{
			$data['records'] = $query;
		}

		$data['content'] = 'adminView';
		$this->load->view('templates/template', $data);
	}

	function create()
	{
		$data = array(
			'product_name' => $this->input->post('title'),
			'product_price' => $this->input->post('price'),
			'product_category' => $this->input->post('category')
		);
		
		
		$this->product_model->add_record($data);
		$this->index();
	}
	
	function update()
	{
		$data = array(
			'title' => 'My Freshly UPDATED Title',
			'content' => 'Content should go here; it is updated.'	
		);
		
		$this->product_model->update_record($data);
	}
	
	
	function delete()
	{
		$this->product_model->delete_row();
		$this->index();
	} 
	

	function is_logged_in(){
		
		$is_logged_in = $this->session->userdata('is_logged_in');
		
		if(!isset($is_logged_in) || $is_logged_in != true){
			
			echo 'YOU CAN\'T BE HERE! ITS A SECRET!';
			echo '</br>';
			echo '<a href="loginController">LOGIN</a> | <a href="productController">PRODUCTS</a> ';
			
			die(); 
			
		}
		
	}
	
}
	
?>