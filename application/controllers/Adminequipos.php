<?php

defined('BASEPATH') OR exit('No direct script access allowed');



class Adminequipos extends CI_Controller

{



    public function index()

    {

        if ($this->session->userdata('nombre') == "") {

            header("location: login");

        }

        $this->load->view('template/header');

        $this->load->view('template/menu2');

        //$result=$this->equipo->equipos();

        //$data['consulta']=$result;

        $this->load->view('adminequipos');

        $data['js'] = "<script src='dist/js/admin.js'></script>";

        $this->load->view('template/footer', $data);

    }

    public  function eliminar($idtutor,$cedula){

        $this->db->query("DELETE FROM equipos WHERE idtutor='$idtutor' AND cedula='$cedula'");

        header("Location: ".base_url()."adminequipos");

    }

}