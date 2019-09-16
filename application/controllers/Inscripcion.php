<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Inscripcion extends CI_Controller {
public function index()
	{
		$this->load->view('template/header');
		$this->load->view('template/menu');
		$this->load->view('inscripcion');
		$data['js']="<script src='dist/js/inscripcion.js'></script>";
		$this->load->view('template/footer',$data);
	}
	public function dattutor($id='')
	{
		$query=$this->db->query("SELECT * FROM registro2 WHERE nombret='$id'");
		if ($query->num_rows()>0) {
			echo json_encode($query->result_array()[0]);
		}else{
		$query=$this->db->query("SELECT * FROM registro WHERE nombret='$id'");
		if ($query->num_rows()>0) {
			echo json_encode($query->result_array()[0]);
		}else{
			echo "0";
		}
		}
		
	}
	public function datestudiante($id='')
	{
		$query=$this->db->query("SELECT * FROM registro2 WHERE cedula='$id'");
		if ($query->num_rows()>0) {
			echo json_encode($query->result_array()[0]);
		}else{
			echo "0";
		}
		
	}
	public function datcolegio($id='')
	{
		$colegio=$_POST['colegio'];
		$query=$this->db->query("SELECT * FROM registro2 WHERE colegio='$colegio'");
		if ($query->num_rows()>0) {
			echo json_encode($query->result_array()[0]);
		}else{
			echo "0";
		}
		
	}
	public function registro()
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
        $celulart=($this->input->post('celulart'));
        //$this->Equipo->insertar();
       $this->db->query("INSERT INTO registro
                VALUES ('$cedula', '$nombre', '$celular', 
                '$correo','$curso','$categoria','$nivel','$nombret','$correot','$colegio','$telefono',
                '$horario','$celulart');");
		/*require('fpdf.php');
		
		
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
		$title='FORMULARIO DE INSCRIPCIÓN VII OLIMPIADA DE PROGRAMACIÓN 2018';
		$w = $pdf->GetStringWidth($title)+6;
		$pdf->SetX((210-$w)/2);
		$pdf->Cell($w,9,utf8_decode($title),1,1,'C');

		$pdf->Ln(10);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('COLEGIO: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(98,1,utf8_decode($colegio));

		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('TELEFONO: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(50,1,utf8_decode($celular));
		
		$pdf->Ln(10);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(55,1,utf8_decode('CEDULA DE IDENTIDAD: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(70,1,utf8_decode($cedula));

		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(25,1,utf8_decode('CORREO: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(50,1,utf8_decode($correo));

		$pdf->Ln(10);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('NOMBRE: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(98,1,utf8_decode($nombre));

		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('CELULAR: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(50,1,utf8_decode($celular));


		$pdf->Ln(10);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('CURSO: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(110,1,utf8_decode($curso));

		$pdf->Ln(10);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('CATEGORIA: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(98,1,utf8_decode($categoria));

		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(18,1,utf8_decode('NIVEL: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(50,1,utf8_decode($nivel));

		$pdf->Ln(10);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('TUTOR: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(98,1,utf8_decode($nombret));

		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('CORREO: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(50,1,utf8_decode($correot));

		$pdf->Ln(10);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('COLEGIO: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(98,1,utf8_decode($colegio));

		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('TELEFONO: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(50,1,utf8_decode($telefono));

		$pdf->Ln(10);
		$pdf->SetFont('Arial','B',12);
		$pdf->Cell(28,1,utf8_decode('HORAIO: '));
		$pdf->SetFont('Arial','',11);
		$pdf->Cell(98,1,utf8_decode($horario));

		/*
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
*/
		/*
		$pdf->Ln(50);
		$pdf->Cell($w,9,utf8_decode("SELLO Y FIRMA DEL DIRECTOR(A) DEL COLEGIO"),0,0,'C');
		
		$pdf->Output();
		*/
		
		//header("location: ../Inscripcion/formulario");
		echo "registrado correctamente!!";
		
	}
	public function cuposbasico($value='')
	{
		//$horario=($this->input->post('horario'));
		//$horario="Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)";
		//$query=$this->db->query("SELECT * FROM registro WHERE horario='Lunes 8:30-10:00 - Viernes 10:30-12:00(Ing. Huanca LLIKA)'");
		//$huanca=40-$query->num_rows();
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Jueves 16:30-18:00 - Viernes 14:30-16:00(Ing. Menacho LSIB-1)'");
		$menacho=19-$query->num_rows();
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Lunes 16:30-18:00 - Miercoles 16:30-18:00(Ing. Ureña LSIB-2)'");
		$urena=40-$query->num_rows();
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Martes 08:30-10:00 - Jueves 08:30-10:00(Ing. Villanueva SI-LSIA4)'");
		$villanueva=40-$query->num_rows();
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Martes 14:30-16:00 - Viernes 16:30-18:00(Ing. Salgado LLIKA)'");
		$salgado=40-$query->num_rows();
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Martes 14:30-16:00 - Martes 16:30-18:00(Ing. Miranda SI-MECA)'");
		$miranda=24-$query->num_rows();
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Miercoles 16:30-18:00 - Viernes 14:30-16:00(Ing. Escalante SI-LSIA1)'");
		$escalante=42-$query->num_rows();
        $query=$this->db->query("SELECT * FROM registro WHERE horario='Viernes 14:30-16:00 - Viernes 16:30-18:00(Ing. Chinche LSIB-2)'");
        $chiche=41-$query->num_rows();
        $query=$this->db->query("SELECT * FROM registro WHERE horario='Jueves 16:30-18:00 - Viernes 16:30-18:00(Ing. Guzman LLIKA)'");
        $roly=0-$query->num_rows();
		echo "<tr>".
                "<td rowspan='2'>08:30 - 10:00</td>".
                "<td></td>".
                "<td style='background: #da9694; color: white'>Ing. Villanueva SI-LSIA4<br> 
                    <span class='badge badge-danger'> Cupos=".$villanueva."</span></td>".
                "<td></td>".
                "<td style='background: #da9694; color: white'>Ing. Villanueva SI-LSIA4<br> 
                        <span class='badge badge-danger'> Cupos=".$villanueva."</span></td>".
                "<td></td>".
              "</tr>".
            "<tr>".
            "<td></td>".
            "<td></td>".
            "<td></td>".
            "<td></td>".
            "<td></td>".
            "</tr>".
            "<tr>".
                "<td>10:30 - 12:00</td>".
            "<td></td>".
                "<td></td>".
            "<td></td>".
                "<td></td>".
            "<td></td>".
            "</tr>".
              "<tr>".
                "<td rowspan='3'>14:30 - 16:00</td>".
                "<td></td>".
                "<td style='background: #e26b0a; color: white' >Ing. Salgado LLIKA<br> 
                <span class='badge badge-danger'> Cupos=".$salgado."</span></td>".
                "<td></td>".
                "<td></td>".
            "<td style='background: #808080; color: white' >Ing. Chiche LSIB-2<br> 
                <span class='badge badge-danger'> Cupos=".$chiche."</span></td>".
              "</tr>".
              "<tr>".
                "<td></td>".
                "<td style='background: #ffff00; color: black' >Ing. Miranda LAB-REDES<br> 
                <span class='badge badge-danger'> Cupos=".$miranda."</span></td>".
                "<td></td>".
                "<td></td>".
                "<td style='background: #c0504d; color: white'>Ing. Menacho LSIB-1<br> 
                <span class='badge badge-danger'> Cupos=".$menacho."</span></td>".
              "</tr>".
              "<tr>".
                "<td></td>".
                "<td></td>".
                "<td></td>".
                "<td></td>".
                "<td style='background: #76933c; color: white'>Ing. Escalante SI-LSIA1<br> 
                <span class='badge badge-danger'> Cupos=".$escalante."</span></td>".
              "</tr>".

              "<tr>".
                "<td rowspan='3'>16:30 - 18:00</td>".
                "<td style='background: #538dd5; color: white'>Ing. Ureña LSIB-2<br> 
                <span class='badge badge-danger'> Cupos=".$urena."</span></td>".
                "<td></td>".
            "<td style='background: #538dd5; color: white'>Ing. Ureña LSIB-2<br> 
                <span class='badge badge-danger'> Cupos=".$urena."</span></td>".
                "<td style='background: #c0504d; color: white'>Ing. Menacho LSIB-1<br> 
                <span class='badge badge-danger'> Cupos=".$menacho."</span></td>".
            "<td style='background: #e26b0a; color: white' >Ing. Salgado LLIKA<br> 
                <span class='badge badge-danger'> Cupos=".$salgado."</span></td>".
              "</tr>".
            "<tr>".
            "<td></td>".
            "<td style='background: #ffff00; color: black' >Ing. Miranda LAB-REDES<br> 
                <span class='badge badge-danger'> Cupos=".$miranda."</span></td>".
                "<td style='background: #76933c; color: white'>Ing. Escalante SI-LSIA1<br> 
                <span class='badge badge-danger'> Cupos=".$escalante."</span></td>".
                "<td style='background: #da9694; color: white'>Ing. Guzman LLIKA<br> 
                        <span class='badge badge-danger'> Cupos=".$roly."</span></td>".
            "<td style='background: #808080; color: white' >Ing. Chiche LSIB-2<br> 
                <span class='badge badge-danger'> Cupos=".$chiche."</span></td>".
              "</tr>".
              "<tr>".
              	"<td></td>".
              	"<td></td>".
              	"<td></td>".
              	"<td></td>".
              	"<td style='background: #da9694; color: white'>Ing. Guzman LLIKA<br> 
                        <span class='badge badge-danger'> Cupos=".$roly."</span></td>".
              "</tr>";
	}
	public function cupos($value='')
	{
		//$horario=($this->input->post('horario'));
		//$horario="Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)";
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)'");
		$villanueva=40-$query->num_rows();
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Lunes 14:30-16:00 - Martes 16:30-18:00(Ing. Menacho LSIB-1)'");
		$menacho=50-$query->num_rows();
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Viernes 8:30-10:00 - Viernes 10:30-12:00(Ing. Helguero SI-LMECA)'");
		$helgero=24-$query->num_rows();
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Salgado LLIKA)'");
		$salgado=40-$query->num_rows();
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Jueves 14:30-16:00 - Viernes 14:30-16:00(Ing. Huanca LLIKA)'");
		$huanca=40-$query->num_rows();
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Martes 14:30-16:00 - Miercoles 14:30-16:00(Ing. Miranda LSIS-1)'");
		$miranda=40-$query->num_rows();
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Martes 14:30-16:00 - Jueves 16:30-18:00(Ing. Guzman LSIB-1)'");
		$roly=50-$query->num_rows();
		echo "<tr>".
                "<td >08:30 - 10:00</td>".
                "<td></td>".
                "<td style='background: #6b5b95; color: white'>Ing. Villanueva LSIA-1 <br> 
                <span class='badge badge-danger'> Cupos=".$villanueva."</span></td>".
                "<td></td>".
                "<td style='background: #6b5b95; color: white'>Ing. Villanueva LSIA-1<br> 
                <span class='badge badge-danger'> Cupos=".$villanueva."</span></td>".
                "<td style='background: #ff7b25; color: white'>Ing. Helguero SI-LMECA<br> 
                <span class='badge badge-danger'> Cupos=".$helgero."</span></td>".
              "</tr>".
              "<tr>".
                "<td>10:30 - 12:00</td>".
                "<td></td>".
                "<td></td>".
                "<td></td>".
                "<td></td>".
                "<td style='background: #ff7b25; color: white'>Ing. Helguero SI-LMECA<br> 
                <span class='badge badge-danger'> Cupos=".$helgero."</span></td>".
              "</tr>".
              "<tr>".
                "<td rowspan='3'>14:30 - 16:00</td>".
                "<td style='background: #feb236; color: white'>Ing. Menacho LSIB-1<br> 
                <span class='badge badge-danger'> Cupos=".$menacho."</span></td>".
                "<td style='background: #d64161; color: white' >Ing. Salgado LLIKA<br> 
                <span class='badge badge-danger'> Cupos=".$salgado."</span></td>".
                "<td style='background: #d64161; color: white' >Ing. Salgado LLIKA<br> 
                <span class='badge badge-danger'> Cupos=".$salgado."</span></td>".
                "<td style='background: #6b1b80; color: white'>Ing. Huanca LLIKA<br> 
                <span class='badge badge-danger'> Cupos=".$huanca."</span></td>".
                "<td style='background: #6b1b80; color: white'>Ing. Huanca LLIKA<br> 
                <span class='badge badge-danger'> Cupos=".$huanca."</span></td>".
              "</tr>".
              "<tr>".
                "<td></td>".
                "<td style='background: #82b74b; color: white' >Ing. Miranda LAB-REDES<br> 
                <span class='badge badge-danger'> Cupos=".$miranda."</span></td>".
                "<td style='background: #82b74b; color: white' >Ing. Miranda LAB-REDES<br> 
                <span class='badge badge-danger'> Cupos=".$miranda."</span></td>".
                "<td></td>".
                "<td></td>".
              "</tr>".
              "<tr>".
                "<td></td>".
                "<td style='background: #405d27; color: white' >Ing. Guzman LSIB-1<br> 
                <span class='badge badge-danger'> Cupos=".$roly."</span></td>".
                "<td></td>".
                "<td></td>".
                "<td></td>".
              "</tr>".
              "<tr>".
                "<td rowspan='3'>16:30 - 18:00</td>".
                "<td></td>".
                 "<td style='background: #feb236; color: white'>Ing. Menacho LSIB-1<br> 
                <span class='badge badge-danger'> Cupos=".$menacho."</span></td>".
                "<td></td>".
                "<td style='background: #405d27; color: white' >Ing. Guzman LSIB-1<br> 
                <span class='badge badge-danger'> Cupos=".$roly."</span></td>".
                "<td></td>".
              "</tr>";
	}
	public function horariobasico($value='')
	{
        $query=$this->db->query("SELECT * FROM registro WHERE horario='Lunes 10:30-12:00 - Miercoles 10:30-12:00(Ing. Menacho LSIB-1)'");
        $menacho=19-$query->num_rows();
        $query=$this->db->query("SELECT * FROM registro WHERE horario='Lunes 16:30-18:00 - Miercoles 16:30-18:00(Ing. Ureña LSIB-2)'");
        $urena=40-$query->num_rows();
        $query=$this->db->query("SELECT * FROM registro WHERE horario='Martes 08:30-10:00 - Jueves 08:30-10:00(Ing. Villanueva SI-LSIA4)'");
        $villanueva=40-$query->num_rows();
        $query=$this->db->query("SELECT * FROM registro WHERE horario='Martes 14:30-16:00 - Viernes 16:30-18:00(Ing. Salgado LLIKA)'");
        $salgado=40-$query->num_rows();
        $query=$this->db->query("SELECT * FROM registro WHERE horario='Martes 14:30-16:00 - Martes 16:30-18:00(Ing. Miranda SI-MECA)'");
        $miranda=24-$query->num_rows();
        $query=$this->db->query("SELECT * FROM registro WHERE horario='Miercoles 16:30-18:00 - Viernes 14:30-16:00(Ing. Escalante SI-LSIA1)'");
        $escalante=42-$query->num_rows();
        $query=$this->db->query("SELECT * FROM registro WHERE horario='Viernes 14:30-16:00 - Viernes 16:30-18:00(Ing. Chinche LSIB-2)'");
        $chiche=40-$query->num_rows();
        $query=$this->db->query("SELECT * FROM registro WHERE horario='Jueves 16:30-18:00 - Viernes 16:30-18:00(Ing. Guzman LLIKA)'");
        $roly=0-$query->num_rows();
	
		if ($menacho>0) {
			$menacho="<option value='Jueves 16:30-18:00 - Viernes 14:30-16:00(Ing. Menacho LSIB-1)'>".
                        "Jueves 16:30-18:00 - Viernes 14:30-16:00(Ing. Menacho LSIB-1)".
                        "</option>";
		}
		if ($villanueva>0) {
            $villanueva="<option value='Martes 08:30-10:00 - Jueves 08:30-10:00(Ing. Villanueva SI-LSIA4)'>".
                        "Martes 08:30-10:00 - Jueves 08:30-10:00(Ing. Villanueva SI-LSIA4)".
                        "</option>";
		}
		if ($salgado>0) {
			$salgado="<option value='Martes 14:30-16:00 - Viernes 16:30-18:00(Ing. Salgado LLIKA)'>".
                        "Martes 14:30-16:00 - Viernes 16:30-18:00(Ing. Salgado LLIKA)".
                        "</option>";
		}
		if ($miranda>0) {
			$miranda="<option value='Martes 14:30-16:00 - Martes 16:30-18:00(Ing. Miranda SI-MECA)'>".
                        "Martes 14:30-16:00 - Martes 16:30-18:00(Ing. Miranda SI-MECA)".
                        "</option>";
		}
		if ($escalante>0) {
			$escalante="<option value='Miercoles 16:30-18:00 - Viernes 14:30-16:00(Ing. Escalante SI-LSIA1)'>".
                        "Miercoles 16:30-18:00 - Viernes 14:30-16:00(Ing. Escalante SI-LSIA1)".
                        "</option>";
		}
		if ($chiche>0) {
			$chiche="<option value='Viernes 14:30-16:00 - Viernes 16:30-18:00(Ing. Chinche LSIB-2)'>".
                        "Viernes 14:30-16:00 - Viernes 16:30-18:00(Ing. Chinche LSIB-2)".
                        "</option>";
		}
		if ($roly>0) {
			$roly="<option value='Jueves 16:30-18:00 - Viernes 16:30-18:00(Ing. Guzman LLIKA)'>".
                        "Jueves 16:30-18:00 - Viernes 16:30-18:00(Ing. Guzman LLIKA)".
                        "</option>";
		}
		echo "<option value=''>Seleccionar</option>".
                        $menacho.
                        $villanueva.
                        $salgado.
                        $miranda.
                        $escalante.
                        $chiche.
                        $roly.
                        $urena;
                        
	}
	public function cuposavanzado($value='')
	{
		//$horario=($this->input->post('horario'));
		//$horario="Martes 8:30-10:00 - Jueves 8:30-10:00(Ing. Villanueva LSIA-1)";
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Viernes 8:30-10:00 - Martes 10:30-12:00(Ing. Chinche LSIB-2)'");
		$chinche=40-$query->num_rows();
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)'");
		$escalante=42-$query->num_rows();
		echo "<tr>".
                "<td >08:30 - 10:00</td>".
                "<td></td>".
                "<td ></td>".
                "<td ></td>".
                "<td ></td>".
                "<td style='background: #ff7b25; color: white'>Ing. Chinche LSIB-2<br> 
                <span class='badge badge-danger'> Cupos=".$chinche."</span></td>".
              "</tr>".
              "<tr>".
                "<td>10:30 - 12:00</td>".
                "<td></td>".
                "<td style='background: #ff7b25; color: white'>Ing. Chinche LSIB-2<br> 
                <span class='badge badge-danger'> Cupos=".$chinche."</span></td>".
                "<td></td>".
                "<td></td>".
              "</tr>".
              "<tr>".
                "<td rowspan='2'>14:30 - 16:00</td>".
                "<td></td>".
                "<td></td>".
                "<td></td>".
                "<td></td>".
                "<td></td>".
              "</tr>".
              "<tr>".
                "<td></td>".
                "<td></td>".
                "<td></td>".
                "<td></td>".
                "<td></td>".
              "</tr>".
              "<tr>".
                "<td rowspan='2'>16:30 - 18:00</td>".
                "<td></td>".
                "<td></td>".
                "<td></td>".
                "<td></td>".
                "<td></td>".
              "</tr>".
              "<tr>".
                "<td></td>".
                "<td></td>".
                "<td></td>".
                "<td style='background: #405d27; color: white' >Ing. Escalante LSIA-1<br> 
                <span class='badge badge-danger'> Cupos=".$escalante."</span></td>".
                "<td style='background: #405d27; color: white' >Ing. Escalante LSIA-1<br> 
                <span class='badge badge-danger'> Cupos=".$escalante."</span></td>".
              "</tr>";
	}
		public function horarioavanzado($value='')
	{
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Viernes 8:30-10:00 - Martes 10:30-12:00(Ing. Chinche LSIB-2)'");
		$chinche=40-$query->num_rows();
		$query=$this->db->query("SELECT * FROM registro WHERE horario='Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)'");
		$escalante=42-$query->num_rows();
		if ($chinche>0) {
			$chinche="<option value='Viernes 8:30-10:00 - Martes 10:30-12:00(Ing. Chinche LSIB-2)'>".
			            "  Viernes 8:30-10:00 - Martes 10:30-12:00(Ing. Chinche LSIB-2)".
			            "</option>";
		}
		if ($escalante>0) {
			$escalante="<option value='Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)'>".
			            "  Jueves 16:30-:1800 - Viernes 16:30-18:00(Ing. Escalante LSIA-1)".
			            "</option>";
		}
		echo "<option value=''>Seleccionar</option>".
            	$chinche.$escalante;            
            
	}
		public function Tutor($value='')
	{
		$nombre= strtoupper($this->input->post('nombre')) ;
		$query=$this->db->query("INSERT INTO tutor VALUES (null,'$nombre')");
		header("Location: ../inscripcion");
		
	}

}
