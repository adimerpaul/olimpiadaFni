<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inscripcion extends CI_Controller {
public function index()
	{
		$this->load->view('template/header');
		$this->load->view('template/menu');
		$this->load->view('Inscripcion');
		$this->load->view('template/footer');
	}
	public function registro()
	{
				$colegio=$this->input->post('colegio');
                $celular=$this->input->post('celular');
                $nombreequipo=$this->input->post('nombreequipo');
                $apaterno1=$this->input->post('apaterno1');
                $amaterno1=$this->input->post('amaterno1');
                $nombres1=$this->input->post('nombres1');
                $ci1=$this->input->post('ci1');
                $celular1=$this->input->post('celular1');
                $correo1=$this->input->post('correo1');
                $sexo1=$this->input->post('sexo1');
                $fechanacimiento1=$this->input->post('fechanacimiento1');

                $apaterno2=$this->input->post('apaterno2');
                $amaterno2=$this->input->post('amaterno2');
                $nombres2=$this->input->post('nombres2');
                $ci2=$this->input->post('ci2');
                $celular2=$this->input->post('celular2');
                $correo2=$this->input->post('correo2');
                $sexo2=$this->input->post('sexo2');
                $fechanacimiento2=$this->input->post('fechanacimiento2');

                $apaterno3=$this->input->post('apaterno3');
                $amaterno3=$this->input->post('amaterno3');
                $nombres3=$this->input->post('nombres3');
                $ci3=$this->input->post('ci3');
                $celular3=$this->input->post('celular3');
                $correo3=$this->input->post('correo3');
                $sexo3=$this->input->post('sexo3');
                $fechanacimiento3=$this->input->post('fechanacimiento3');

                $apaternores=$this->input->post('apaternores');
                $amaternores=$this->input->post('amaternores');
                $nombresres=$this->input->post('nombresres');
                $celularres=$this->input->post('celularres');
                $correores=$this->input->post('correores');


                $nivel=$this->input->post('nivel');
                $turno=$this->input->post('turno');
   

		$this->equipo->insertar();
		

		require('fpdf.php');
		
		
		$pdf = new FPDF('P','mm','Letter');
		$pdf->AddPage();
		$pdf->SetFont('Arial','B',14);
		$title='FORMULARIO DE INSCRIPCIÓN VI OLIMPIADA DE PROGRAMACIÓN 2017';
		$w = $pdf->GetStringWidth($title)+6;
		$pdf->SetX((210-$w)/2);
		//$pdf->Cell(40,10,);
		$pdf->Cell($w,9,utf8_decode($title),1,1,'C');
		$pdf->Ln(10);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('COLEGIO: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(110,1,utf8_decode($colegio));

		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('CELULAR: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(50,1,utf8_decode($celular));
		
		$pdf->Ln(10);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(60,1,utf8_decode('NOMBRE DEL EQUIPO: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(110,1,utf8_decode($nombreequipo));
		
		$pdf->Ln(10);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(10,1,utf8_decode('INTEGRANTES	: '));
		$pdf->SetFont('Arial','B',11);
		
		$pdf->Ln(10);
		$pdf->Cell(10,1,utf8_decode('Nº '));
		$pdf->Cell(90,1,utf8_decode('APELLIDOS Y APELLIDOS'));
		$pdf->Cell(25,1,utf8_decode('C.I.'));
		$pdf->Cell(25,1,utf8_decode('CELULAR'));
		$pdf->Cell(60,1,utf8_decode('CORREO ELECTRÓNICO'));
		$pdf->Ln(7);
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(10,1,utf8_decode('1 '));
		$pdf->Cell(90,1,utf8_decode($apaterno1." ".$amaterno1." ".$nombres1));
		$pdf->Cell(25,1,utf8_decode($ci1));
		$pdf->Cell(25,1,utf8_decode($celular1));
		$pdf->Cell(60,1,utf8_decode($correo1));
		$pdf->Ln(7);
		$pdf->Cell(10,1,utf8_decode('2 '));
		$pdf->Cell(90,1,utf8_decode($apaterno2." ".$amaterno2." ".$nombres2));
		$pdf->Cell(25,1,utf8_decode($ci2));
		$pdf->Cell(25,1,utf8_decode($celular2));
		$pdf->Cell(60,1,utf8_decode($correo2));
		$pdf->Ln(7);
		$pdf->Cell(10,1,utf8_decode('3 '));
		$pdf->Cell(90,1,utf8_decode($apaterno3." ".$amaterno3." ".$nombres3));
		$pdf->Cell(25,1,utf8_decode($ci3));
		$pdf->Cell(25,1,utf8_decode($celular3));
		$pdf->Cell(60,1,utf8_decode($correo3));
		
		$pdf->Ln(10);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(10,1,utf8_decode('PROFESOR(A)  RESPONSABLE	: '));
		
		$pdf->Ln(10);
		$pdf->SetFont('Arial','B',11);
		$pdf->Cell(90,1,utf8_decode('APELLIDOS Y APELLIDOS'));
		$pdf->Cell(25,1,utf8_decode('CELULAR'));
		$pdf->Cell(60,1,utf8_decode('CORREO ELECTRÓNICO'));
		$pdf->Ln(7);
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(90,1,utf8_decode($apaternores." ".$amaternores." ".$nombresres));
		$pdf->Cell(25,1,utf8_decode($celularres));
		$pdf->Cell(60,1,utf8_decode($correores));
		$pdf->Ln(12);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('NIVEL: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(110,1,utf8_decode($nivel));

		$pdf->Ln(10);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('TURNO: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(110,1,utf8_decode($turno));

		$pdf->Ln(50);
		$pdf->Cell($w,9,utf8_decode("SELLO Y FIRMA DEL DIRECTOR(A) DEL COLEGIO"),0,0,'C');
		$pdf->Output();
		
		//header("location: ../Inscripcion/formulario");
	}

}