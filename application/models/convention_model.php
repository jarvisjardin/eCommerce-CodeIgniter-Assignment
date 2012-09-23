<?php

class convention_model extends CI_Model {
	
	function get_cons()
	{
		$query = $this->db->get('conventions');
		return $query->result();
		
	}
	
	function add_record($data) 
	{	
		
		$this->db->insert('conventions', $data);
		return;
	}
	
	function update_record($data) 
	{
		$this->db->where('product_id', 12);
		$this->db->update('products', $data);
	}
	
	function delete_row()
	{
		$this->db->where('con_id', $this->uri->segment(3));
		$this->db->delete('conventions');
	}
	
}