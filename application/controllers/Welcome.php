<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {
	public function __construct()
	{
		parent::__construct();
		$this->load->model('banner_model', 'banner');
		// $this->load->model('identitas_model', 'identitas');
		// $this->load->model('sambutan_model', 'sambutan');
		$this->load->model('postingan_model', 'postingan');
		$this->load->model('lagu_model', 'lagu');
		// $this->load->model('background_model', 'background');
	}
	
	public function index()
	{
		$data['title']		= 'Beranda';
		// $data['brand']		= $this->identitas->getData();
		$data['banners'] 	= $this->banner->getBanner();
		// $data['sambutan'] = $this->sambutan->getData();
		$data['postingan']	= $this->postingan->getLastPosts();
		$data['lagu']		= $this->lagu->getLastSongs();
		// $data['jurusan']	= $this->background->getData();
		$data['page']		= 'home/index';

		$this->load->view('front/layouts/main', $data);
	}

	public function admin()
	{
		$this->load->view('auth/login');
	}
} 
