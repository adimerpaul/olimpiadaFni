<div class="main-container ace-save-state" id="main-container">
      <script type="text/javascript">
        try{ace.settings.loadState('main-container')}catch(e){}
      </script>

      <div id="sidebar" class="sidebar                  responsive                    ace-save-state">
        <script type="text/javascript">
          try{ace.settings.loadState('sidebar')}catch(e){}
        </script>

        <div class="sidebar-shortcuts" id="sidebar-shortcuts">
          <div class="sidebar-shortcuts-large" id="sidebar-shortcuts-large">
            <button class="btn btn-success">
              <i class="ace-icon fa fa-signal"></i>
            </button>

            <button class="btn btn-info">
              <i class="ace-icon fa fa-pencil"></i>
            </button>

            <button class="btn btn-warning">
              <i class="ace-icon fa fa-users"></i>
            </button>

            <button class="btn btn-danger">
              <i class="ace-icon fa fa-cogs"></i>
            </button>
          </div>

          <div class="sidebar-shortcuts-mini" id="sidebar-shortcuts-mini">
            <span class="btn btn-success"></span>

            <span class="btn btn-info"></span>

            <span class="btn btn-warning"></span>

            <span class="btn btn-danger"></span>
          </div>
        </div><!-- /.sidebar-shortcuts -->

        <ul class="nav nav-list">
          
          <li class="active open">
            <a href="<?=base_url()?>Welcome">
              <i class="menu-icon fa fa-desktop"></i>
              <span class="menu-text">
                Presentación
              </span>
            </a>


          </li>
          <li class="">
            <a href="<?=base_url()?>Inscripcion">
              <i class="menu-icon fa fa-pencil-square-o"></i>
              <span class="menu-text"> 
                Inscripción
              </span>
            </a>

          </li>
          <li class="">
            <a href="<?=base_url()?>Verificacion">
              <i class="menu-icon fa fa-list-alt"></i>
              <span class="menu-text"> 
                Formularios
              </span>
            </a>

          </li>
        <li class="">
            <a href="<?=base_url()?>Equipos">
                <i class="menu-icon fa fa-users"></i>
                <span class="menu-text">
            Formar Equipos
          </span>
            </a>

        </li>
          <li class="">
            <a href="<?=base_url()?>Calendario">
              <i class="menu-icon fa fa-calendar"></i>

              <span class="menu-text">
                Calendario
                <span class="badge badge-transparent tooltip-error" title="Eventos importantes">
                  <i class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
                </span>
              </span>
            </a>

            <b class="arrow"></b>
          </li>

          <li class="">
            <a href="<?=base_url()?>Afiches">
              <i class="menu-icon fa fa-picture-o"></i>
              <span class="menu-text"> Afiches </span>
            </a>

            <b class="arrow"></b>
          </li>

          <li class="">
            <a href="<?=base_url()?>Contactos">
              <i class="menu-icon fa fa-tag"></i>
              <span class="menu-text"> Contactos </span>
            </a>
          </li>
        </ul><!-- /.nav-list -->

        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
          <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>
      </div>
