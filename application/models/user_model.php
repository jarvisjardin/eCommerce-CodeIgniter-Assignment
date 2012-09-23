<?php

class User_model extends CI_Model{
		
	function validate(){
		
		 $this->db->where('u_name',$this->input->post('uname')); 
		 $this->db->where('u_pass',md5($this->input->post('upass'))); 
		 $query = $this->db->get('users');
		 
		 if($query->num_rows == 1){
			 
			 return true; 
			  
		 }
		 
		 
		 
	}		
		
		
		
} 