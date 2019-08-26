<?php 
class Equipo extends CI_Model {


        public function insertar()
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
                
                $this->db->query("INSERT INTO 
                equipo (colegio, celular, nombreequipo, 
                apaterno1, amaterno1, nombres1, ci1, celular1, correo1,sexo1,fechanacimiento1, 
                apaterno2, amaterno2, nombres2, ci2, celular2, correo2,sexo2,fechanacimiento2,
                apaterno3, amaterno3, nombres3, ci3, celular3, correo3,sexo3,fechanacimiento3,
                nivel, turno, 
                apaternores, amaternores, nombresres, celularres, correores) 
                VALUES ('$colegio', '$celular', '$nombreequipo', 
                '$apaterno1','$amaterno1','$nombres1','$ci1','$celular1','$correo1','$sexo1','$fechanacimiento1',
                '$apaterno2','$amaterno2','$nombres2','$ci2','$celular2','$correo2','$sexo2','$fechanacimiento2',
                '$apaterno3','$amaterno3','$nombres3','$ci3','$celular3','$correo3','$sexo3','$fechanacimiento3',
                '$nivel', '$turno',
                '$apaternores', '$amaternores', '$nombresres', '$celularres', '$correores');");
        }

}
 ?>