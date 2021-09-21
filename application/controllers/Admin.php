<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function __construct()
	{
		parent::__construct();
		// is_login();
		$this->load->model('admin_model', 'admin');
		$this->load->model('menu_model', 'menu');
		$this->load->model('banner_model', 'banner');
		// $this->load->model('fasilitas_model', 'fasilitas');
		$this->load->model('postingan_model', 'postingan');
		$this->load->model('lagu_model', 'lagu');

	}

	public function index()
	{
		$data['title'] 			 = 'Admin';
		$data['page']				 = 'dashboard/index';
		$data['total_banner'] 	 = $this->banner->totalBanner();
		// $data['total_fasilitas'] = $this->fasilitas->totalFasilitas();
		$data['total_postingan'] 	 = $this->postingan->countPostingan();
		$data['chart'] 			 = $this->admin->areaChart();
      $data['pageChart'] 		 = '_chart';

		$this->load->view('admin/layouts/main', $data);
	}


}

/* End of file Controllername.php */
