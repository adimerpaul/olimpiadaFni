<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Informes extends CI_Controller {

	public function index()
	{
		if($this->session->userdata('nombre')==""){
			header("location: login");
		}
		$this->load->view('template/header');
		$this->load->view('template/menu2');
		$result=$this->equipo->equipo();
		$data['consulta']=$result;
		$this->load->view('Informes',$data);
		$this->load->view('template/footer');
	}
}
