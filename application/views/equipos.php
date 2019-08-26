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
                    <div class="panel panel-info">
                        <div class="panel-heading">El password es el Preguntar al !!
                            <h3><a href="https://wa.me/59167226648?text=No%20Tengo %20password">Aqui</a> </h3>
                        </div>
                    </div>
                    <form class="form-horizontal" role="form" method="post" action="<?=base_url()?>equipos/armar">
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="tutor"> Seleccionar colegio </label>
                            <div class="col-sm-9">
                                <select name="colegio" id="tutor" class="col-xs-10 col-sm-5" required>
                                    <option value="">Seleccionar...</option>
                                    <?php
                                    $query=$this->db->query("SELECT * FROM colegio");
                                    foreach ($query->result() as $row)
                                    {
                                        echo "<option value='".$row->nombre."'>".$row->nombre."</option>";
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="tutor"> Seleccionar nivel </label>
                            <div class="col-sm-9">
                                <select name="nivel" id="tutor" class="col-xs-10 col-sm-5" required>
                                    <option value="">Seleccionar...</option>
                                    <option value="Nivel Basico">Nivel Basico</option>
                                    <option value="Nivel Avanzado">Nivel Avanzado</option>
                                </select>
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="tutor"> Seleccionar tutor </label>
                            <div class="col-sm-9">
                                <select name="idtutor" id="tutor" class="col-xs-10 col-sm-5" required>
                                    <option value="">Seleccionar...</option>
                                    <?php
                                    $query=$this->db->query("SELECT * FROM tutor");
                                    foreach ($query->result() as $row)
                                    {
                                        echo "<option value='".$row->idtutor."'>".$row->nombre."</option>";
                                    }
                                    ?>
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-sm-3 control-label no-padding-right" for="password">Password </label>
                            <div class="col-sm-9">
                                <input type="password" id="password" placeholder="Password" class="col-xs-10 col-sm-5" name="celulart"/>
                                <hr>
                                <small id="emailHelp" class="form-text text-muted">Si no tienes password contactanos <a
                                        href="https://wa.me/59167226648?text=Me%20gustaría%20saber%20el%20codigo%20de%20inicio">Aqui</a>.</small>
                            </div>

                        </div>
                        <div class="clearfix form-actions">
                            <div class="col-md-offset-3 col-md-9">
                                <button class="btn btn-info" type="submit">
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




