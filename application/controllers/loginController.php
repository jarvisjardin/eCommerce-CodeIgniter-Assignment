<?php

	class loginController extends CI_Controller{
	
		public function index(){
			$data['content'] = 'loginForm';
			$this->load->view('templates/template', $data);
		}
		
		public function signIn(){
			$this->load->model('user_model');
			$query = $this->user_model->validate(); 
			
			if($query){
				
				$data = array(
					'username' => $this->input->post('uname'),
					'is_logged_in' => true	
				);
				
				$this->session->set_userdata($data);
				redirect('secretController');
				
			}else{
				
				$this->index(); 
				
			}	
			
		}
		
		function logout(){
			$this->session->sess_destroy();
			redirect('productController/index');
;
		}

	
	}
?>