<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Lagu_model extends CI_Model {

	protected $perPage = 8;

	public function getLastSongs()
	{
		$this->db->from('lagu');
		$this->db->where('is_active', 'Y');
		$this->db->order_by('id', 'desc');
		$this->db->limit(4);
		return $this->db->get()->result();
	}

	public function getAllSongs($page)
	{
		$this->db->from('lagu');
		$this->db->where('is_active', 'Y');
		$this->paginate($page);
		$this->db->order_by('id', 'desc');
		return $this->db->get()->result();
	}

	public function getDataById($id)
	{
		return $this->db->get_where('lagu', ['id' => $id])->row();
	}

	public function getDataBySeo($seo_title)
	{
		return $this->db->get_where('lagu', ['seo_title' => $seo_title])->row();
	}

	public function insert($data)
	{
		$this->db->insert('lagu', $data);
	}

	public function update($id, $data)
	{
		$this->db->update('lagu', $data, ['id' => $id]);
		return $this->db->affected_rows();
	}

	public function delete($id)
	{
		$this->db->where('id', $id);
      $this->db->delete('lagu');
	}

	public function getDefaultValues()
   {
      return [
         'title'     => '',
			'seo_title' => '',
			'content'	=> '',
            'harga'	=> '',
			'photo'		=> '',
			'is_active'	=> '',
			'date'		=> '',
			'hubungi_penjual'		=> '',
      ];
	}

	public function countLagu() 
   {
      $this->db->where('lagu.is_active', 'Y');  
      return $this->db->count_all_results('lagu');
   }
	
	public function uploadImage($imageName){
      $config = [
        'upload_path'     => './img/lagu',
		  'file_name'       => $imageName,
        'allowed_types'   => 'jpg|jpeg|png|JPG|PNG',
        'max_size'        => 3000,
        'max_width'       => 0,
        'max_height'      => 0,
        'overwrite'       => TRUE,
        'file_ext_tolower'=> TRUE
      ];
  
      $this->load->library('upload', $config);
		
		if($this->upload->do_upload('photo')){
			return $this->upload->data('file_name');
		}else{
			$this->session->set_flashdata('image_error', 'Jenis file yang diupload tidak diizinkan atau file terlalu besar.');
     		return false;
		}
	}
	
	public function paginate($page){
      return  $this->db->limit($this->perPage, $this->calculateRealOffset($page));
   }
  
   public function calculateRealOffset($page){
      if(is_null($page) || empty($page)){
         $offset = 0;
      }else{
         $offset = ($page * $this->perPage) - $this->perPage;
      }
      
      return $offset;
   }
  
   public function makePagination($baseUrl, $uriSegment, $totalRows = null){
      $this->load->library('pagination');

      $config = [
         'base_url'            => $baseUrl,
         'uri_segment'         => $uriSegment,
         'per_page'            => $this->perPage,
         'total_rows'          => $totalRows,
         'use_page_numbers'    => true,
			
			'full_tag_open'       => '<ul class="pagination justify-content-center">',
			'full_tag_close'      => '</ul>',
			
			'attributes'          => ['class' => 'page-link'],
			'first_link'          => false,
			'last_link'           => false,
			'first_tag_open'      => '<li class="page-item">',
			'first_tag_close'     => '</li>',
			'prev_link'           => '&lt',
			'prev_tag_open'       => '<li class="page-item">',
			'prev_tag_close'      => '</li>',
			'next-link'           => '&gt',
			'next_tag_open'       => '<li class="page-item">',
			'next_tag_close'      => '</li>',
			'last_tag_open'       => '<li class="page-item">',
			'last_tag_close'      => '</li>', 
			'cur_tag_open'        => '<li class="page-item active"><a href="#" class="page-link">',
			'cur_tag_close'       => '<span class="sr-only">(current)</span></a></li>',
			'num_tag_open'        => '<li class="page-item">',
			'num_tag_close'       => '</li>'
      ];

      $this->pagination->initialize($config);
      return $this->pagination->create_links();
   }

}

/* End of file ModelName.php */
