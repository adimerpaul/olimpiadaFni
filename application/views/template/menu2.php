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
          <li class="">
            <a href="<?=base_url()?>admin">
              <i class="menu-icon fa fa-pencil-square-o"></i>
              <span class="menu-text"> 
                Inscritos
              </span>
            </a>

          </li>
          <li class="">
            <a href="<?=base_url()?>colegio">
              <i class="menu-icon fa fa-university" aria-hidden="true"></i>
              <span class="menu-text"> 
                Colegios
              </span>
            </a>

          </li>
            <li class="">
                <a href="<?=base_url()?>adminequipos">
                    <i class="menu-icon fa fa-users" aria-hidden="true"></i>
                    <span class="menu-text">
                    Equipos
              </span>
                </a>

            </li>
          <li class="">
            <a href="<?=base_url()?>Informes">
              <i class="menu-icon fa fa-calendar"></i>

              <span class="menu-text">
                Informes
                <span class="badge badge-transparent tooltip-error" title="Eventos importantes">
                  <i class="ace-icon fa fa-exclamation-triangle red bigger-130"></i>
                </span>
              </span>
            </a>

            <b class="arrow"></b>
          </li>
          <li class="">
            <a href="<?=base_url()?>salir">
              <i class="menu-icon fa fa-close"></i>

              <span class="menu-text">
                Salir
                <span class="badge badge-transparent tooltip-error" title="Eventos importantes">
                </span>
              </span>
            </a>

            <b class="arrow"></b>
          </li>

        </ul><!-- /.nav-list -->

        <div class="sidebar-toggle sidebar-collapse" id="sidebar-collapse">
          <i id="sidebar-toggle-icon" class="ace-icon fa fa-angle-double-left ace-save-state" data-icon1="ace-icon fa fa-angle-double-left" data-icon2="ace-icon fa fa-angle-double-right"></i>
        </div>
      </div>
