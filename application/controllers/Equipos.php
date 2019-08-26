<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Equipos extends CI_Controller {

    /**
     * Index Page for this controller.
     *
     * Maps to the following URL
     * 		http://example.com/index.php/welcome
     *	- or -
     * 		http://example.com/index.php/welcome/index
     *	- or -
     * Since this controller is set as the default controller in
     * config/routes.php, it's displayed at http://example.com/
     *
     * So any other public methods not prefixed with an underscore will
     * map to /index.php/welcome/<method_name>
     * @see https://codeigniter.com/user_guide/general/urls.html
     */
    public function index()
    {
        $this->load->view('template/header');
        $this->load->view('template/menu');
        $this->load->view('equipos');
        $data['js']="";
        $this->load->view('template/footer',$data);
    }
    public function armar()
    {

        $idtutor=$_POST['idtutor'];
        $celulart=$_POST['celulart'];
        $colegio=$_POST['colegio'];
        $nivel=$_POST['nivel'];
        $query=$this->db->query("SELECT * FROM registro WHERE nombret='$celulart' AND colegio='$colegio' AND NIVEL ='$nivel'");
        $cantidad= $query->num_rows();
        if($cantidad==0){
            echo "Revise los datos ingresados!!";
        }else{
            $data['idtutor']=$_POST['celulart'];
            $data['colegio']=$_POST['colegio'];
            $data['celulart']=$_POST['celulart'];
            $data['nivel']=$_POST['nivel'];
            $this->load->view('template/header');
            $this->load->view('template/menu');
            $this->load->view('armar',$data);
            $data['js']="<script src='".base_url()."dist/armar.js'></script>";
            $this->load->view('template/footer',$data);
        }


    }

    public function crear(){
        $idtutor=$_POST['idtutor'];
        $ci1=$_POST['ci1'];
        $ci2=$_POST['ci2'];
        $ci3=$_POST['ci3'];
        $equipo=$_POST['equipo'];
        $nivel=$_POST['nivel'];

        if($ci1!="") {
            $this->db->query("INSERT INTO equipos VALUES('$idtutor','$ci1','$equipo','$nivel')");
        }
        if($ci2!="") {
            $this->db->query("INSERT INTO equipos VALUES('$idtutor','$ci2','$equipo','$nivel')");
        }
        if($ci3!="") {
            $this->db->query("INSERT INTO equipos VALUES('$idtutor','$ci3','$equipo','$nivel')");
        }
            require('fpdf.php');

        $pdf = new FPDF('P','mm','Letter');
        $pdf->AddPage();
        $pdf->Image('dist/sistemas.png',15,5,30);

        $pdf->SetFont('Arial','B',12);
        $title='UNIVERSIDAD TÉCNICA DE ORURO';
        $w = $pdf->GetStringWidth($title);
        $pdf->SetX((210-$w)/2);
        $pdf->Cell($w,9,utf8_decode($title));
        $pdf->Ln(5);
        $title='FACULTAD NACIONAL DE INGENIERIA';
        $w = $pdf->GetStringWidth($title);
        $pdf->SetX((210-$w)/2);
        $pdf->Cell($w,9,utf8_decode($title));
        $pdf->Ln(5);
        $title='INGENIERIA DE SISTEMAS E INFORMATICA';
        $w = $pdf->GetStringWidth($title);
        $pdf->SetX((210-$w)/2);
        $pdf->Cell($w,9,utf8_decode($title));

        $pdf->Image('dist/informatica.png',180,5,20);
        $pdf->Ln(15);
        $pdf->SetFont('Arial','B',14);
        $title='FORMULARIO DE EQUIPOS VII OLIMPIADA DE PROGRAMACIÓN 2018';
        $w = $pdf->GetStringWidth($title)+6;
        $pdf->SetX((210-$w)/2);
        $pdf->Cell($w,9,utf8_decode($title),1,1,'C');

        $pdf->Ln(10);
        $pdf->SetFont('Arial','B',12);
        $pdf->Cell(28,1,utf8_decode('TUTOR: '));
        $pdf->SetFont('Arial','',11);
        $pdf->Cell(98,1,utf8_decode( $this->Equipo->consulta('nombre','tutor','idtutor',$idtutor)));

        $pdf->SetFont('Arial','B',12);
        $pdf->Cell(28,1,utf8_decode('NIVEL: '));
        $pdf->SetFont('Arial','',11);
        $pdf->Cell(50,1,utf8_decode($nivel));

        $pdf->Ln(10);
        $pdf->SetFont('Arial','B',12);
        $pdf->Cell(55,1,utf8_decode('NOMBRE DEL EQUIPO: '));
        $pdf->SetFont('Arial','',11);
        $pdf->Cell(50,1,utf8_decode( $equipo));
        
        $pdf->SetFont('Arial','B',12);
        $pdf->Cell(28,1,utf8_decode('COLEGIO: '));
        $pdf->SetFont('Arial','',11);
        $pdf->Cell(50,1,utf8_decode($this->Equipo->consulta('colegio','registro','cedula',$ci1)));
        
        $pdf->Ln(10);
        $pdf->SetFont('Arial','B',12);
        $pdf->Cell(88,1,utf8_decode('Nombres estudiantes '));
        $pdf->Cell(20,1,utf8_decode("Celular"));
        $pdf->Cell(35,1,utf8_decode("Curso"));

        $pdf->SetFont('Arial','',11);

        if($ci1!=""){
        $pdf->Ln(10);
        $pdf->Cell(88,1,utf8_decode($this->Equipo->consulta('nombre','registro','cedula',$ci1)));
        $pdf->Cell(20,1,utf8_decode($this->Equipo->consulta('celular','registro','cedula',$ci1)));
        $pdf->Cell(35,1,utf8_decode($this->Equipo->consulta('curso','registro','cedula',$ci1)));
        }
        if($ci2!=""){
        $pdf->Ln(10);
        $pdf->Cell(88,1,utf8_decode($this->Equipo->consulta('nombre','registro','cedula',$ci2)));
        $pdf->Cell(20,1,utf8_decode($this->Equipo->consulta('celular','registro','cedula',$ci2)));
        $pdf->Cell(35,1,utf8_decode($this->Equipo->consulta('curso','registro','cedula',$ci2)));
        }
        if($ci3!=""){
        $pdf->Ln(10);
        $pdf->Cell(88,1,utf8_decode($this->Equipo->consulta('nombre','registro','cedula',$ci3)));
        $pdf->Cell(20,1,utf8_decode($this->Equipo->consulta('celular','registro','cedula',$ci3)));
        $pdf->Cell(35,1,utf8_decode($this->Equipo->consulta('curso','registro','cedula',$ci3)));
        }
        

        $pdf->Ln(50);
        //$pdf->Cell($w,9,utf8_decode("SELLO Y FIRMA DEL DIRECTOR(A) DEL COLEGIO"),0,0,'C');

        $pdf->Output();
    }
}