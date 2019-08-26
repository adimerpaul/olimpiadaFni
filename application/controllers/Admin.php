<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Admin extends CI_Controller {

	public function index()
	{
		if($this->session->userdata('nombre')==""){
			header("location: login");
		}
		$this->load->view('template/header');
		$this->load->view('template/menu2');
		//$result=$this->equipo->equipos();
		//$data['consulta']=$result;
		$this->load->view('Admin');
		$data['js']="<script src='dist/js/admin.js'></script>";
		$this->load->view('template/footer',$data);
	}
	public function modificar($value='')
	{
		$nombre=strtoupper($this->input->post('nombre'));
        $cedula=($this->input->post('cedula'));
        $celular=($this->input->post('celular'));
        $correo=($this->input->post('correo'));
        $curso=($this->input->post('curso'));
        $categoria="";
        $nivel=($this->input->post('nivel'));
        $nombret=strtoupper($this->input->post('nombret'));
        $correot=($this->input->post('correot'));
        $colegio=strtoupper($this->input->post('colegio'));
        $telefono=($this->input->post('telefono'));
        $horario=($this->input->post('horario'));
        $this->db->query("UPDATE registro SET
        	nombre='$nombre',
        	celular='$celular',
        	correo='$correo',
        	curso='$curso',
        	nivel='$nivel',
        	nombret='$nombret',
        	correot='$correot',
        	colegio='$colegio',
        	telefono='$telefono',
        	horario='$horario'
        	WHERE cedula='$cedula'
        	");
        header("location: ../admin");
	}

	public function eliminar($id=''){
		$this->db->query("DELETE FROM registro WHERE cedula='$id'");
		header("location: ../../admin");
	}
	public function reporte($id=''){
		//echo $id;
		//$nombreequipo=$this->equipo->consulta('nombreequipo','equipo','idequipo',$id);
				$colegio=$this->equipo->consulta('colegio','equipo','idequipo',$id);
                $celular=$this->equipo->consulta('nombreequipo','equipo','idequipo',$id);
                $nombreequipo=$this->equipo->consulta('nombreequipo','equipo','idequipo',$id);
                $apaterno1=$this->equipo->consulta('apaterno1','equipo','idequipo',$id);
                $amaterno1=$this->equipo->consulta('amaterno1','equipo','idequipo',$id);
                $nombres1=$this->equipo->consulta('nombreequipo','equipo','idequipo',$id);
                $ci1=$this->equipo->consulta('nombres1','equipo','idequipo',$id);
                $celular1=$this->equipo->consulta('celular1','equipo','idequipo',$id);
                $correo1=$this->equipo->consulta('correo1','equipo','idequipo',$id);
                $sexo1=$this->equipo->consulta('sexo1','equipo','idequipo',$id);
                $fechanacimiento1=$this->equipo->consulta('fechanacimiento1','equipo','idequipo',$id);

                $apaterno2=$this->equipo->consulta('apaterno2','equipo','idequipo',$id);
                $amaterno2=$this->equipo->consulta('amaterno2','equipo','idequipo',$id);
                $nombres2=$this->equipo->consulta('nombres2','equipo','idequipo',$id);
                $ci2=$this->equipo->consulta('ci2','equipo','idequipo',$id);
                $celular2=$this->equipo->consulta('celular2','equipo','idequipo',$id);
                $correo2=$this->equipo->consulta('correo2','equipo','idequipo',$id);
                $sexo2=$this->equipo->consulta('sexo2','equipo','idequipo',$id);
                $fechanacimiento2=$this->equipo->consulta('fechanacimiento2','equipo','idequipo',$id);

                $apaterno3=$this->equipo->consulta('apaterno3','equipo','idequipo',$id);
                $amaterno3=$this->equipo->consulta('amaterno3','equipo','idequipo',$id);
                $nombres3=$this->equipo->consulta('nombres3','equipo','idequipo',$id);
                $ci3=$this->equipo->consulta('ci3','equipo','idequipo',$id);
                $celular3=$this->equipo->consulta('celular3','equipo','idequipo',$id);
                $correo3=$this->equipo->consulta('correo3','equipo','idequipo',$id);
                $sexo3=$this->equipo->consulta('sexo3','equipo','idequipo',$id);
                $fechanacimiento3=$this->equipo->consulta('fechanacimiento3','equipo','idequipo',$id);

                $apaternores=$this->equipo->consulta('apaternores','equipo','idequipo',$id);
                $amaternores=$this->equipo->consulta('amaternores','equipo','idequipo',$id);
                $nombresres=$this->equipo->consulta('nombresres','equipo','idequipo',$id);
                $celularres=$this->equipo->consulta('celularres','equipo','idequipo',$id);
                $correores=$this->equipo->consulta('correores','equipo','idequipo',$id);


                $nivel=$this->equipo->consulta('nivel','equipo','idequipo',$id);
                $turno=$this->equipo->consulta('turno','equipo','idequipo',$id);
   

		//$this->equipo->insertar();
		

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
	}
}
