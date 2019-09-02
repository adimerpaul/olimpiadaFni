<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Verificacion extends CI_Controller {

	public function index()
	{
		$this->load->view('template/header');
		$this->load->view('template/menu');
		$this->load->view('verificacion');
		$data['js']="<script src='dist/js/verificacion.js'></script>";
		$this->load->view('template/footer',$data);
	}
	public function nivel($colegio='',$nivel='')
	{
		$colegio=$this->input->post('colegio');
		$nivel=$this->input->post('nivel');
		$nombret=$this->input->post('nombret');
		$this->load->model('Equipo');
		$tutor=$this->Equipo->consulta("nombre","tutor","idtutor",$nombret);
		$query=$this->db->query("SELECT * FROM registro WHERE nombret='$nombret'");
		$cantidad=$query->num_rows();
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
		$title='FORMULARIO DE INSCRIPCIÓN VIII OLIMPIADA DE PROGRAMACIÓN 2019';
		$w = $pdf->GetStringWidth($title)+6;
		$pdf->SetX((210-$w)/2);
		$pdf->Cell($w,9,utf8_decode($title),1,1,'C');

		$pdf->Ln(10);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('TUTOR: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(98,1,utf8_decode($tutor));
/*
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('NIVEL: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(50,1,utf8_decode($nivel));
*/
		$pdf->Ln(10);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(88,1,utf8_decode('Nombres estudiantes '));
		$pdf->Cell(55,1,utf8_decode("Colegio"));
		$pdf->Cell(20,1,utf8_decode("Celular"));
		$pdf->Cell(10,1,utf8_decode("Curso"));
		$pdf->SetFont('Arial','',11);
		$pdf->Ln(5);
		foreach ($query->result() as $row)
		{
				$pdf->Cell(88,1,utf8_decode($row->nombre));
				$pdf->Cell(55,1,utf8_decode($row->colegio));
				$pdf->Cell(20,1,utf8_decode($row->celular));
				$pdf->Cell(10,1,utf8_decode( substr($row->curso,0,3 )));
		        $pdf->Ln(5);
		}
		


		$pdf->Ln(50);
		$pdf->Cell($w,9,utf8_decode("SELLO Y FIRMA DEL DIRECTOR(A) DEL COLEGIO"),0,0,'C');
		
		$pdf->Output();
	}

}
