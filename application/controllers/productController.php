<?php
class productController extends CI_Controller{

	function index(){
	
		$data = array();

		if($query = $this->convention_model->get_cons())
		{
			$data['cons'] = $query;
		}
		
		
		$data['content'] = 'landingView';
		$this->load->view('templates/template', $data);
	
	
	}

	function products(){
	
		$data = array();

		if($query = $this->product_model->get_records())
		{
			$data['records'] = $query;
		}
		$data['content'] = 'productView';
		$this->load->view('templates/template', $data);
		

	}
	
	function checkout(){
	
		$data = array();

		$data['list'] = $_REQUEST['cArray'];
		
		$blaharray = json_encode($data);
		
		echo $blaharray;
		
		$data['content'] = 'testView';
		$this->load->view('templates/template', $data);
		
		

	}
}
?>