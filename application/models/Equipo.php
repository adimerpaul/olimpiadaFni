<?php 
class Equipo extends CI_Model {

        public function insertar()
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
        
                echo ("INSERT INTO registro
                VALUES ('$cedula', '$nombre', '$celular', 
                '$correo','$curso','$categoria','$nivel','$nombret','$correot','$colegio','$telefono',
                '$horario');");
        }
        public function equipos(){
                return $this->db->get('equipo');
        }
        public function consulta($mostrar,$tabla,$where,$dato)
        {
                $res=$this->db->query("SELECT $mostrar FROM $tabla WHERE $where='$dato'");
                $datos=$res->row();
                return $datos->$mostrar;
        }
        public function eliminar($id){
                $this->db->query("DELETE FROM equipo WHERE idequipo = $id");
        }

}
 ?>