<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Ins extends CI_Controller {

	public function index()
	{
		$this->load->view('template/header');
		$this->load->view('template/menu');
		//$this->load->view('Inscripcion');
		$this->load->view('template/footer');
	}
}