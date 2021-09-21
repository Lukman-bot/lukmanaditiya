<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('postingan_model', 'postingan');
	}

	public function index($page=null)
	{
		$data['title']			= 'postingan';
		$data['posts']			= $this->postingan->getAllPosts($page);
		$data['total_rows']  = $this->postingan->countPostingan();
    //   $data['pagination']  = $this->postingan->makePagination(
    //      base_url('index.php/blog'), 2, $data['total_rows']
    //   );

      $data['page'] = 'postingan/blog';
      $this->load->view('front/layouts/main', $data);
	}

	public function baca($seo_title)
	{
		$postingan = $this->postingan->getDataBySeo($seo_title);

		if($postingan){
			$data['title']		= 'postingan';
			$data['page']		= 'postingan/blog-detail';
			$data['postingan']	= $postingan;

			$this->load->view('front/layouts/main', $data);
		}else{
			redirect(base_url('home/index'));
		}
	}

}

/* End of file Controllername.php */
