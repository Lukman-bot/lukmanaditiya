<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

class Blog extends CI_Controller {
	
	public function __construct()
	{
		parent::__construct();
		$this->load->model('lagu_model', ';agu');
	}

	public function index($page=null)
	{
		$data['title']			= 'Lirik Lagu';
		$data['songs']			= $this->lagu->getAllSongs($page);
		$data['total_rows']     = $this->lagu->countLagu();
      $data['pagination']  = $this->lagu->makePagination(
         base_url('index.php/lirik'), 2, $data['total_rows']
      );

      $data['page'] = 'lirik/blog';
      $this->load->view('front/layouts/main', $data);
	}

	public function baca($seo_title)
	{
		$lagu = $this->lagu->getDataBySeo($seo_title);

		if($lagu){
			$data['title']		= 'Lirik Lagu';
			$data['page']		= 'lirik/lirik-lagu';
			$data['lagu']	    = $lagu;

			$this->load->view('front/layouts/main', $data);
		}else{
			redirect(base_url('home/index'));
		}
	}

}

/* End of file Controllername.php */
