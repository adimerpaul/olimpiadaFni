<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>VII OLIMPIADA DE PROGRAMACIÓN</title>
    <link rel="shortcut icon" type="image/x-icon" href="<?=base_url()?>dist/fni.ico" />

    <meta name="description" content="This is page-header (.page-header &gt; h1)" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />
    <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/css/toastr.css">
    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="<?=base_url()?>dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="<?=base_url()?>dist/css/font-awesome.min.css" />

    <link rel="stylesheet" href="<?=base_url()?>dist/css/colorbox.min.css" />

    <link rel="stylesheet" href="<?=base_url()?>dist/css/fullcalendar.min.css" />

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="<?=base_url()?>dist/css/prettify.min.css" />

    <!-- text fonts -->
    <link rel="stylesheet" href="<?=base_url()?>dist/css/fonts.googleapis.com.css" />


    <link rel="stylesheet" href="<?=base_url()?>dist/css/jquery.dataTables.min.css" />
    <link rel="stylesheet" href="<?=base_url()?>dist/css/buttons.dataTables.min.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="<?=base_url()?>dist/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

    <!--[if lte IE 9]>
      <link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
    <![endif]-->
    <link rel="stylesheet" href="<?=base_url()?>dist/css/ace-skins.min.css" />
    <link rel="stylesheet" href="<?=base_url()?>dist/css/ace-rtl.min.css" />

    <!--[if lte IE 9]>
      <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="<?=base_url()?>dist/js/ace-extra.min.js"></script>

    <!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

    <!--[if lte IE 8]>
    <script src="assets/js/html5shiv.min.js"></script>
    <script src="assets/js/respond.min.js"></script>
    <![endif]-->
  </head>

  <body class="no-skin">
    <div id="navbar" class="navbar navbar-default          ace-save-state">
      <div class="navbar-container ace-save-state" id="navbar-container">
        <button type="button" class="navbar-toggle menu-toggler pull-left" id="menu-toggler" data-target="#sidebar">
          <span class="sr-only">Toggle sidebar</span>

          <span class="icon-bar"></span>

          <span class="icon-bar"></span>

          <span class="icon-bar"></span>
        </button>

        <div class="navbar-header pull-left">
          <a href="index.html" class="navbar-brand">
            <small>
              <img src="<?=base_url()?>dist/logo_small_2017_3.png" width="130">
            </small>
          </a>
        </div>


        <div class="navbar-buttons navbar-header pull-right" role="navigation">
          <ul class="nav ace-nav">
              <li class="purple dropdown-modal">
                  <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                      <i class="ace-icon fa fa-bell icon-animated-bell"></i>
                      <span class="badge badge-important">8</span>
                  </a>

                  <ul class="dropdown-menu-right dropdown-navbar navbar-pink dropdown-menu dropdown-caret dropdown-close">
                      <li class="dropdown-header">
                          <i class="ace-icon fa fa-exclamation-triangle"></i>
                          Clase estra de programacion
                      </li>

                      <li class="dropdown-content">
                          <ul class="dropdown-menu dropdown-navbar navbar-pink">
                              <li>
                                  <a href="<?=base_url()?>dist/extra.pdf">
                                      <div class="clearfix">
													<span class="pull-left">
														<i class="btn btn-xs no-hover btn-pink fa fa-file-pdf-o"></i>
														Descargar horario extra!
													</span>
                                      </div>
                                  </a>
                              </li>
                          </ul>
                      </li>

                  </ul>
              </li>

          </ul>
        </div>

      </div><!-- /.navbar-container -->
    </div>