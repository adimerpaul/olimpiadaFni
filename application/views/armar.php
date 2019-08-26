<div class="main-content">
    <div class="main-content-inner">
        <div class="breadcrumbs ace-save-state" id="breadcrumbs">
            <ul class="breadcrumb">
                <li>
                    <i class="ace-icon fa fa-home home-icon"></i>
                    <a href="#">Home</a>
                </li>
                <li class="active">Formar equipos</li>
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
                    <h3>Creación de equipos</h3>
                    <h4> TUTOR : <?=$this->Equipo->consulta('nombre','tutor','idtutor',$idtutor)?></h4>

                    <form class="form-horizontal" id="myFormulario" role="form" method="post" action="<?=base_url()?>equipos/crear" >
                        <input type="text" value="<?=$idtutor?>" hidden name="idtutor">
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="tutor"> Estudiante 1 </label>
                            <div class="col-sm-9">
                                <select name="ci1" id="tutor" class="col-xs-10 col-sm-5" required>
                                    <option value="">Seleccionar...</option>
                                    <?php
                                    $query=$this->db->query("SELECT * FROM registro WHERE nombret='$idtutor' AND colegio='$colegio' AND nivel='$nivel' AND cedula not in (SELECT cedula FROM equipos ) ORDER BY nombre  ");
                                    foreach ($query->result() as $row)
                                    {
                                        echo "<option value='".$row->cedula."'>".$row->nombre."</option>";
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="tutor"> Estudiante 2 </label>
                            <div class="col-sm-9">
                                <select name="ci2" id="tutor" class="col-xs-10 col-sm-5">
                                    <option value="">Seleccionar...</option>
                                    <?php
                                    $query=$this->db->query("SELECT * FROM registro WHERE nombret='$idtutor' AND colegio='$colegio' AND nivel='$nivel' AND cedula not in (SELECT cedula FROM equipos ) ORDER BY nombre  ");
                                    foreach ($query->result() as $row)
                                    {
                                        echo "<option value='".$row->cedula."'>".$row->nombre."</option>";
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="tutor"> Estudiante 3 </label>
                            <div class="col-sm-9">
                                <select name="ci3" id="tutor" class="col-xs-10 col-sm-5">
                                    <option value="">Seleccionar...</option>
                                    <?php
                                    $query=$this->db->query("SELECT * FROM registro WHERE nombret='$idtutor' AND colegio='$colegio' AND nivel='$nivel' AND cedula not in (SELECT cedula FROM equipos ) ORDER BY nombre  ");
                                    foreach ($query->result() as $row)
                                    {
                                        echo "<option value='".$row->cedula."'>".$row->nombre."</option>";
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="tutor"> Nombre Equipo </label>
                            <div class="col-sm-9">
                                <input name="equipo" id="tutor" class="col-xs-10 col-sm-5 " required >

                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="tutor"> </label>
                            <div class="col-sm-9">
                                <!--select name="nivel" id="tutor" class="col-xs-10 col-sm-5 " required >
                                    <option value="">Seleccionar...</option>
                                    <option value="Nivel Basico">Nivel Basico</option>
                                    <option value="Nivel Avanzado">Nivel Avanzado</option>
                                </select-->
                                <input type="text" name="nivel" value="<?=$nivel?>" hidden>
                                <h3><b><?=$nivel?></b></h3>
                            </div>
                        </div>

                        <div class="clearfix form-actions">
                            <div class="col-md-offset-3 col-md-9">
                                <button class="btn btn-info" type="submit"  >
                                    <i class="ace-icon fa fa-check bigger-110"></i>
                                    Ingresar
                                </button>
                                &nbsp; &nbsp; &nbsp;
                                <button class="btn" type="reset">
                                    <i class="ace-icon fa fa-undo bigger-110"></i>
                                    Reset
                                </button>
                            </div>
                        </div>

                    </form>

                </div>
            </div><!-- /.row -->
        </div><!-- /.page-content -->
    </div>
</div><!-- /.main-content -->





