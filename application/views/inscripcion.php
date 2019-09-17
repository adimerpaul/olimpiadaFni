<div class="main-content">
        <div class="main-content-inner">
          <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
              <li>
                <i class="ace-icon fa fa-home home-icon"></i>
                <a href="#">Home</a>
              </li>
              <li class="active">Inscripcion</li>
            </ul><!-- /.breadcrumb -->

            <div class="nav-search" id="nav-search">
              <form class="form-search">
                <span class="input-icon">
                  <input type="text" placeholder="Buscar ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
                  <i class="ace-icon fa fa-search nav-search-icon"></i>
                </span>
              </form>
            </div><!-- /.nav-search -->
          </div>

          <div class="page-content">
            <div class="row">
              <div class="col-xs-12">
                <!-- PAGE CONTENT BEGINS -->
                <h2>FORMULARIO DE INSCRIPCIÓN </h2>
                <p class="lead">
                  VIII CURSOS DE CAPACITACION 2019
                </p>
                <p class="lead">
                      <h1>"Ya estan disponibles nuevos horarios por la tarde. Favor registrarse a la brevedad posible."
                      </h1>
                    </p>
                <form class="form-horizontal" id="formulario" method="POST">
                            <div class="form-group">
                              <label class="control-label col-xs-12 col-sm-2 " for="nombret">Nombre completo Tutor:</label>
                              <div class="col-xs-12 col-sm-4">
                                <select style="width: 80%"  name="nombret" required id="nombret" class="col-sm-12 col-sm-12">
                                      <option value="">Selecionar</option>
                                      <?php 
                                      $query=$this->db->query("SELECT * FROM tutor ORDER BY nombre");
                                      foreach ($query->result() as $row)
                                        {
                                          echo "<option value='".$row->idtutor."'>".$row->nombre."</option>";
                                        }
                                      ?>   
                                    </select>
                                    <button type="button" style="width: 20%" class="btn btn-success btn-sm" data-toggle="modal" data-target="#exampleModal"><i class="fa fa-plus-square" aria-hidden="true"></i> Nuevo</button>
                              </div>
                              <label class="control-label col-xs-12 col-sm-2 " for="correot">Correo electronico tutor:</label>
                              <div class="col-xs-12 col-sm-4">
                                <input type="text" name="correot" id="correot" placeholder="Correo electronico" class="col-xm-12 col-sm-12">
                              </div>
                              <label class="control-label col-xs-12 col-sm-2 " for="celulart">Celular tutor:</label>
                              <div class="col-xs-12 col-sm-4">
                                <input type="text" name="celulart" id="celulart" placeholder="Celular tutor" class="col-xm-12 col-sm-12">
                              </div>
                            </div>
                            <hr>
                             <div class="form-group">
                                <label class="control-label col-xs-12 col-sm-2 " for="email">Colegio:</label>
                                <div class="col-xs-12 col-sm-4">
                                    <select name="colegio" required id="colegio" class="col-sm-12 col-sm-12">
                                      <option value="">Selecionar</option>
                                      <?php 
                                      $query=$this->db->query("SELECT * FROM colegio");
                                      foreach ($query->result() as $row)
                                        {
                                          echo "<option value='".$row->nombre."'>".$row->nombre."</option>";
                                        }
                                      ?>   
                                    </select>
                                </div>
                                <label class="control-label col-xs-12 col-sm-2 " for="telefono">Telefono:</label>
                                <div class="col-xs-12 col-sm-4">
                                  <input type="text" name="telefono" id="telefono" placeholder="telefono" class="col-xm-12 col-sm-12">
                                </div>
                              </div>
                              <hr>
                              <div class="form-group">
                                <label class="control-label col-xs-12 col-sm-2 " for="cedula">Cedula de identidad del estudiante:</label>
                                <div class="col-xs-12 col-sm-4">
                                  <input type="text" name="cedula" id="cedula" required placeholder="Cedula de identidad" class="col-xm-12 col-sm-12">
                                </div>
                                <label class="control-label col-xs-12 col-sm-2 " for="nombre">Nombre completo estudiante:</label>
                                <div class="col-xs-12 col-sm-4">
                                  <input type="text" name="nombre" id="nombre" required placeholder="Apellidos nombre(s)" class="col-xm-12 col-sm-12">
                                </div>
                                
                              </div>
                              <div class="form-group">
                                <label class="control-label col-xs-12 col-sm-2 " for="celular">Numero de celular estudiante:</label>
                                <div class="col-xs-12 col-sm-4">
                                  <input type="text" name="celular" id="celular" placeholder="Numero de celular" class="col-xm-12 col-sm-12">
                                </div>
                                <label class="control-label col-xs-12 col-sm-2 " for="correo">Correo electronico:</label>
                                <div class="col-xs-12 col-sm-4">
                                  <input type="text" name="correo" id="correo" placeholder="Correo electronico" class="col-xm-12 col-sm-12">
                                </div>
                              </div>
                              <hr>
                              <div class="form-group">
                                <label class="control-label col-xs-12 col-sm-2 " for="curso">Curso:</label>
                                <div class="col-xs-12 col-sm-4">
                                  <select name="curso" id="curso" required class="col-xm-12 col-sm-12" required="">
                                    <option value="">Seleccionar</option>
                                    <option value="1ro de Secundaria">1ro de Secundaria</option>
                                    <option value="2do de Secundaria">2do de Secundaria</option>
                                    <option value="3ro de Secundaria">3ro de Secundaria</option>
                                    <option value="4to de Secundaria">4to de Secundaria</option>
                                    <option value="5to de Secundaria">5to de Secundaria</option>
                                    <option value="6to de Secundaria">6to de Secundaria</option>
                                  </select>
                                </div>
                                <div class="col-xs-12 col-sm-4">
                                  <div class="alert alert-info">Seleccionar un curso para ver horarios</div>
                                </div>
                              </div>
                              <!-- div class="form-group">
                                <label class="control-label col-xs-12 col-sm-2 " for="nivel">Nivel:</label>
                                <div class="col-xs-12 col-sm-4">
                                  <select name="nivel" id="nivel" class="col-xm-12 col-sm-12">
                                    
                                  </select>
                                  <div class="alert alert-info" id="mensaje1" style="display: none"> Las clases del nivel basico comienzan el 1 de octubre hasta el 19 de octubre</div>
                                  <div class="alert alert-warning" id="mensaje2" style="display: none"> Las clases del nivel avanzado comienzan el 12 de octubre hasta el 24 de octubre </div>
                                </div>
                              </div-->
                              
                              <hr>
                              <div class="form-group">
                                <label class="control-label col-xs-12 col-sm-2">Horarios disponibles:</label>
                                <div class="col-xs-12 col-sm-10">
                                <table class="table table-bordered" id="tablanivel1" >
                                <thead>
                                  <tr>
                                    <th>Hora</th>
                                    <th>Lunes</th>
                                    <th>Martes</th>
                                    <th>Miercoles</th>
                                    <th>Jueves</th>
                                    <th>Viernes</th>                              
                                  </tr>
                                </thead>
                                <tbody id="tabla">
                                  
                                </tbody>
                              </table>
                              <table class="table table-bordered" id="tablanivel2" style="display: none;">
                                <thead>
                                  <tr>
                                    <th>Hora</th>
                                    <th>Lunes</th>
                                    <th>Martes</th>
                                    <th>Miercoles</th>
                                    <th>Jueves</th>
                                    <th>Viernes</th>                              
                                  </tr>
                                </thead>
                                <tbody>
                                  <tr>
                                    <td >08:30 - 10:00</td>
                                    <td></td>
                                    <td ></td>
                                    <td ></td>
                                    <td ></td>
                                    <td style="background: #ff7b25; color: white">Ing. Chinche LSIB-2</td>
                                  </tr>
                                  <tr>
                                    <td>10:30 - 12:00</td>
                                    <td></td>
                                    <td style="background: #ff7b25; color: white">Ing. Chinche LSIB-2</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                  </tr>
                                  <tr>
                                    <td rowspan="2">14:30 - 16:00</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                  </tr>
                                  <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                  </tr>
                                  <tr>
                                    <td rowspan="2">16:30 - 18:00</td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                  </tr>
                                  <tr>
                                    <td></td>
                                    <td></td>
                                    <td></td>
                                    <td style="background: #405d27; color: white" >Ing. Escalante LSIA-1</td>
                                    <td style="background: #405d27; color: white" >Ing. Escalante LSIA-1</td>
                                  </tr>
                                </tbody>
                              </table>
                                </div>
                              <div class="form-group">
                                <label class="control-label col-xs-12 col-sm-2 " for="horario">Selecionar horario:</label>
                                <div class="col-xs-12 col-sm-4">
                                <select name="horario" id="horario" required class="col-xm-12 col-sm-12">
                                  </select>
                                </div>
                              </div>
                              <div class="clearfix form-actions">
                                <div class="col-md-offset-3 col-md-9">
                                  <a href="#my-modal" data-toggle="modal" class="btn btn-info">
                                    <i class="ace-icon fa fa-check bigger-110"></i>
                                    Inscribirse
                                  </a>

                                  &nbsp; &nbsp; &nbsp;
                                  <a href="Inscripcion">
                                  <button class="btn" type="reset">
                                    <i class="ace-icon fa fa-undo bigger-110"></i>
                                    Limpiar
                                  </button>
                                  </a>


                <div id="my-modal" class="modal fade" tabindex="-1">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h3 class="smaller lighter blue no-margin">AVISO</h3>
                      </div>

                      <div class="modal-body">
                      ¿Esta seguro(a) de que todos los datos ingresados son correctos?
                      </div>

                      <div class="modal-footer">
                        <button class="btn btn-sm btn-success pull-right" type="submit">
                          <i class="ace-icon fa fa-upload"></i>
                          Continuar
                        </button>
                        <button class="btn btn-sm btn-danger pull-right" data-dismiss="modal">
                          <i class="ace-icon fa fa-times"></i>
                          Cerrar
                        </button>
                      </div>
                    </div><!-- /.modal-content -->
                  </div><!-- /.modal-dialog -->
                </div>
              

                                </div>
                              </div>
                            </form>

              </div><!-- /.col -->
            </div><!-- /.row -->
          </div><!-- /.page-content -->
        </div>
      </div><!-- /.main-content -->



<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Registrar nuevo tutor</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
      <form method="POST" action="Inscripcion/tutor">
        <div class="form-group row">
          <label for="nombretu" class="col-sm-2 col-form-label">Nombre Completo</label>
          <div class="col-sm-10">
            <input type="text" name="nombre" style="text-transform: uppercase;" class="form-control" id="nombretu" placeholder="Apellidos Nombre(s)" required>
          </div>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
          <button type="submit" class="btn btn-success">Registrar</button>
        </div>
      </form>
      </div>

    </div>
  </div>
</div>

<script type="text/javascript">
  window.onload=function (e) {
    $('#nombret').change(function (e) {
      $.ajax({
        url:'Inscripcion/dattutor/'+$(this).val(),
        success:function (e) {
          if (e!=0) {
          var dato=JSON.parse(e);
          console.log(dato);
          $('#correot').val(dato.correot);
          $('#celulart').val(dato.celulart);
          }else{
          $('#correot').val('');
          $('#celulart').val('');  
          }
        }
      });
    });
    $('#colegio').change(function (e) {
      $.ajax({
        data:'colegio='+$(this).val(),
        type:'POST',
        url:'Inscripcion/datcolegio',
        success:function (e) {
          //console.log(e);
          if (e!=0) {
          var dato=JSON.parse(e);
          //console.log(dato);
          $('#telefono').val(dato.telefono);
          }else{
          $('#telefono').val('');
          }
        }
      });
    });
    $('#cedula').keyup(function (e) {
      $.ajax({
        url:'Inscripcion/datestudiante/'+$(this).val(),
        success:function (e) {
          //console.log(e);
          if (e!=0) {
          var dato=JSON.parse(e);
          //console.log(dato);
          $('#nombre').val(dato.nombre);
          $('#celular').val(dato.celular);
          $('#correo').val(dato.correo);
          }else{
          $('#nombre').val('');
          $('#celular').val('');
          $('#correo').val('');
          }
        }
      });
    });


    $('#formulario').submit(function (e) {
      
  var parametros={
    'nombre':$('#nombre').val(),
        'cedula':$('#cedula').val(),
        'celular':$('#celular').val(),
        'correo':$('#correo').val(),
        'curso':$('#curso').val(),
        'nivel':$('#nivel').val(),
        'nombret':$('#nombret').val(),
        'correot':$('#correot').val(),
        'colegio':$('#colegio').val(),
        'telefono':$('#telefono').val(),
        'horario':$('#horario').val(),
        'celulart':$('#celulart').val(),
  }
  $.ajax({
    data:parametros,
    url:'inscripcion/registro',
    type:'post',
    success: function(e){
      console.log(e);
      toastr["success"]("Registrado corretamente!!!");
      $('#nombre').prop('value','');
      $('#cedula').prop('value','');
      $('#celular').prop('value','');
      $('#correo').prop('value','');
    }
  }).fail(function () {
    toastr["warning"]("Ya se registro al estudiante, o algo salio mal!!!");
  });
  $('#my-modal').modal('hide');
  $.ajax({
      url:'inscripcion/cuposbasico',
      type:'post',
      beforeSend:function (argument) {
        toastr["info"]("cargando");
      },
      success: function(e){
        document.getElementById('tabla').innerHTML=e;
      }
    });
      $.ajax({
      url:'inscripcion/horariobasico',
      type:'post',
      success: function(e){
        horario.innerHTML=e;
      }
    }); 
  return false;

  //if ($('#nivel').val()=="Nivel Basico") {
    $.ajax({
      url:'inscripcion/cuposbasico',
      type:'post',
      beforeSend:function (argument) {
        toastr["info"]("cargando");
      },
      success: function(e){
        document.getElementById('tabla').innerHTML=e;
      }
    });
      document.getElementById('mensaje1').style.display = 'block';
      document.getElementById('mensaje2').style.display = 'none';
      $.ajax({
      url:'inscripcion/horariobasico',
      type:'post',
      success: function(e){
        horario.innerHTML=e;
      }
    }); 
  //}else{
    $.ajax({
      url:'inscripcion/cuposavanzado',
      type:'post',
      beforeSend:function (argument) {
        toastr["info"]("cargando");
      },
      success: function(e){
        document.getElementById('tabla').innerHTML=e;
      }
    });
      document.getElementById('mensaje1').style.display = 'none';
      document.getElementById('mensaje2').style.display = 'block';
      $.ajax({
      url:'inscripcion/horarioavanzado',
      type:'post',
      success: function(e){
        horario.innerHTML=e;
      }
    }); 
//
  //}
  /*$.ajax({
      url:'inscripcion/cuposbasico',
      type:'post',
      beforeSend:function (argument) {
        toastr["info"]("cargando");
      },
      success: function(e){
        document.getElementById('tabla').innerHTML=e;
      }
    });
      $.ajax({
      url:'inscripcion/horariobasico',
      type:'post',
      success: function(e){
        horario.innerHTML=e;
      }
    }); */
})

  }
</script>
