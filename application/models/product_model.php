<?php

class product_model extends CI_Model {
	
	function get_records()
	{
		$query = $this->db->get('products');
		return $query->result();
		
	}
	
	function add_record($data) 
	{	
		
		$this->db->insert('products', $data);
		return;
	}
	
	function update_record($data) 
	{
		$this->db->where('product_id', 12);
		$this->db->update('products', $data);
	}
	
	function delete_row()
	{
		$this->db->where('product_id', $this->uri->segment(3));
		$this->db->delete('products');
	}
	
	
}