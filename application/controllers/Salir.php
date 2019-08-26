<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Salir extends CI_Controller {

  public function index()
  {
    $this->session->sess_destroy();
    header("location: login"); 
  }
}
