<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Postingan extends CI_Controller {

	var $table = 'posts';
	var $id = 'id';
	var $select = ['*'];
	var $column_order = ['', 'title', '', 'is_active', 'date'];
	var $column_search = ['title', 'seo_title', 'content', 'photo', 'is_active', 'date'];

	public function __construct()
	{
		parent::__construct();
		// is_login();
		$this->load->model('menu_model', 'menu');
		$this->load->model('my_model', 'my');
		$this->load->model('postingan_model', 'postingan');
		$this->load->helper('ci_helper');
	}
	
	public function index()
	{
		$data['title'] 	 = 'Data Postingan';
      $data['page'] 		 = 'postingan/index';
		$data['datatable'] = 'postingan/index-datatable';
		
      $this->load->view('admin/layouts/main', $data);
	}

	public function ajax_list()
   {
      $list = $this->my->get_datatables();
		$data = [];
		$no = 1;
      foreach($list as $li){
			$row = [];
			$row[] = $no++;
			$row[] = $li->title;
            $row[] = $li->content;
			
			if($li->photo){
            $row[] = '<a href="' . base_url('img/postingan/' . $li->photo).'" target="_blank"><img src="'.base_url('img/postingan/' . $li->photo) . '" class="img-responsive" style="max-height:150px; max-width:250px;"/></a>';
         }else{
            $row[] = '(No photo)';
			}

			$row[] = $li->is_active;
			$row[] = $li->date;

         $row[] = 
         '<a class="btn btn-sm btn-warning text-white" href="'.base_url("index.php/postingan/edit/$li->id").'" 
         title="Edit">
				<i class="fa fa-pencil-alt"></i>
			</a>

			<a class="btn btn-sm btn-danger" href="#" 
			title="Delete" onclick="delete_postingan('."'".$li->id."'".')">
				<i class="fa fa-trash"></i>
			</a>';
         $data[] = $row;
      }

      $output = [
         'draw'            => $_POST['draw'],
         'recordsTotal'    => $this->my->count_all(),
         'recordsFiltered' => $this->my->count_filtered(),
         'data'            => $data
      ];

      echo json_encode($output);
	}

	public function add()
	{
		if(!$_POST){
			$input = (object) $this->postingan->getDefaultValues();
		}else{
			$input = (object) $this->input->post(null, true);
		}

		$this->form_validation->set_rules('title', 'Judul','required',[
			'required' => 'Judul postingan tidak boleh kosong!'
			]
		);
		$this->form_validation->set_rules('content', 'Konten','required',[
			'required' => 'Konten postingan tidak boleh kosong!'
			]
		);

		if($this->form_validation->run() == false){
			$data['title'] 		= 'Tambah Postingan';
			$data['page']			= 'postingan/form';
			$data['form_action'] = base_url("index.php/postingan/add");
			$data['input'] 		= $input;
			$this->load->view('admin/layouts/main', $data);
		}else{
			
			$data = [
				'title' 		=> $this->input->post('title', true),
				'seo_title' => slugify($this->input->post('title', true)),
				'content' 	=> $this->input->post('content', true),
				'is_active' => $this->input->post('is_active', true),
				'date' 		=> date('Y-m-d'),
			];

			if(!empty($_FILES['photo']['name'])){
				$imageName = url_title($data['title'], '-', true) . '-' . date('YmdHis');
				$upload = $this->postingan->uploadImage($imageName);
				$this->_create_thumbs($upload);
				$data['photo'] = $upload;
			}
			
			$this->postingan->insert($data);
			$this->session->set_flashdata('success', 'Postingan Berhasil Ditambahkan.');

			redirect(base_url('index.php/postingan'));
		}
	}

	public function edit($id)
	{
		if(!$_POST){
			$input = (object) $this->postingan->getDataById($id);
		}else{
			$input = (object) $this->input->post(null, true);
		}

		$this->form_validation->set_rules('title', 'Judul','required',[
			'required' => 'Judul postingan tidak boleh kosong!'
			]
		);
		$this->form_validation->set_rules('content', 'Konten','required',[
			'required' => 'Konten postingan tidak boleh kosong!'
			]
		);

		if($this->form_validation->run() == false){
			$data['title']			= 'Ubah Postingan';
			$data['page']			= 'postingan/form';
			$data['input']			= $input;
			$data['form_action']	= base_url('index.php/postingan/edit/' . $id);
			
			$this->load->view('admin/layouts/main', $data);
		}else{
			$data = [
				'title' 		=> $this->input->post('title', true),
				'seo_title' => slugify($this->input->post('title', true)),
				'content' 	=> $this->input->post('content'),
				'is_active' => $this->input->post('is_active', true),
				'date' 		=> date('Y-m-d'),
			];

			if(!empty($_FILES['photo']['name'])){
				$imageName = url_title($data['name'], '-', true) . '-' . date('YmdHis');
				$upload = $this->postingan->uploadImage($imageName);
				$this->_create_thumbs($upload);

				if($upload){
					$postingan = $this->postingan->getDataById($id);

					if(file_exists('img/postingan/' . $postingan->photo) && $postingan->photo){
						unlink('img/postingan/' . $postingan->photo);
						unlink('img/postingan/thumbs/' . $postingan->photo);
					}
					
					$data['photo'] = $upload;
				}else{
					redirect(base_url("index.php/postingan/edit/$id"));
				}
			}

			$this->postingan->update($id, $data);
			$this->session->set_flashdata('success', 'postingan Berhasil Diupdate.');

			redirect(base_url('index.php/postingan'));
		}
	}

	public function delete()
	{
		$id = $this->input->post('id', true);
		$postingan = $this->postingan->getDataById($id);

		if(file_exists('img/postingan/' . $postingan->photo) && $postingan->photo){
			unlink('img/postingan/' . $postingan->photo);
			// unlink('img/postingan/thumbs/' . $postingan->photo);
		}

		$this->postingan->delete($id);
		echo json_encode(["status" => TRUE]);
	}

	public function _create_thumbs($file_name)
	{
		$config = [
			// Thumbnail Image
			[
				'image_library'	=> 'GD2',
				'source_image'		=> './img/postingan/' . $file_name,
				'maintain_ratio'	=> TRUE,
				'width'				=> 350,
				'height'				=> 200,
				'new_image'			=> './img/postingan/thumbs/' . $file_name
			]
		];

		$this->load->library('image_lib', $config[0]);

		foreach ($config as $item){
			$this->image_lib->initialize($item);

			if(!$this->image_lib->resize()){
				return false;
			}

			$this->image_lib->clear();
		}
	}

}

/* End of file Controllername.php */
