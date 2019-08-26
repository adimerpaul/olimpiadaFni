<!DOCTYPE html>
<html lang="en">
  <head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
    <meta charset="utf-8" />
    <title>VI OLIMPIADA DE PROGRAMACIÓN</title>
    <link rel="shortcut icon" type="image/x-icon" href="dist/fni.ico" />

    <meta name="description" content="This is page-header (.page-header &gt; h1)" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>dist/css/bootstrap.min.css" />
    <link rel="stylesheet" href="dist/css/font-awesome.min.css" />

    <link rel="stylesheet" href="dist/css/colorbox.min.css" />

    <link rel="stylesheet" href="dist/css/fullcalendar.min.css" />

    <!-- page specific plugin styles -->
    <link rel="stylesheet" href="dist/css/prettify.min.css" />

    <!-- text fonts -->
    <link rel="stylesheet" href="dist/css/fonts.googleapis.com.css" />

    <!-- ace styles -->
    <link rel="stylesheet" href="dist/css/ace.min.css" class="ace-main-stylesheet" id="main-ace-style" />

    <!--[if lte IE 9]>
      <link rel="stylesheet" href="assets/css/ace-part2.min.css" class="ace-main-stylesheet" />
    <![endif]-->
    <link rel="stylesheet" href="dist/css/ace-skins.min.css" />
    <link rel="stylesheet" href="dist/css/ace-rtl.min.css" />

    <!--[if lte IE 9]>
      <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
    <![endif]-->

    <!-- inline styles related to this page -->

    <!-- ace settings handler -->
    <script src="dist/js/ace-extra.min.js"></script>

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
              <img src="dist/logo_small_2017_3.png" width="130">
            </small>
          </a>
        </div>


        <div class="navbar-buttons navbar-header pull-right" role="navigation">
          <ul class="nav ace-nav">
            <li class="green dropdown-modal">
              <a data-toggle="dropdown" class="dropdown-toggle" href="#">
                <i class="ace-icon fa fa-bell icon-animated-bell"></i>
                INSCRIPCIÓN
                <span class="badge badge-success">
                <?php
                  $datetime1 = date_create(date("Y-m-d"));
                  $datetime2 = date_create('2017-08-25');
                  $interval = date_diff($datetime1, $datetime2);
                  echo $interval->format('%R%a días');
                ?>
                </span>
              </a>
            </li>
          </ul>
        </div>

      </div><!-- /.navbar-container -->
    </div>