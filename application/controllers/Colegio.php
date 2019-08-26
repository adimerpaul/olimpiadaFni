<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Colegio extends CI_Controller {

	public function index()
	{
		if($this->session->userdata('nombre')==""){
			header("location: login");
		}
		$this->load->view('template/header');
		$this->load->view('template/menu2');
		//$result=$this->equipo->equipos();
		//$data['consulta']=$result;
		$this->load->view('colegio');
		$data['js']="<script src='dist/js/colegio.js'></script>";
		$this->load->view('template/footer',$data);
	}
	public function modificar($value='')
	{
		$nombre=strtoupper($this->input->post('nombre'));
		$nombre2=strtoupper($this->input->post('nombre2'));
        $this->db->query("UPDATE colegio SET
        	nombre='$nombre'
        	WHERE nombre='$nombre2'
        	");
        header("location: ../colegio");
	}

	public function eliminar($id=''){
		$this->db->query("DELETE FROM colegio WHERE nombre='$id'");
		header("location: ../../colegio");
	}
	public function insertar($value='')
	{
		$nombre=strtoupper($this->input->post('nombre'));
        $this->db->query("INSERT INTO colegio VALUES ('$nombre')");
        header("location: ../colegio");
	}
}
