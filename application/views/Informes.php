<div class="main-content">
	<div class="main-content-inner">
		<div class="breadcrumbs ace-save-state" id="breadcrumbs">
			<ul class="breadcrumb">
				<li>
					<i class="ace-icon fa fa-home home-icon"></i>
					<a href="#">Home</a>
				</li>
				<li class="active">Infomes</li>
			</ul><!-- /.breadcrumb -->

			<div class="nav-search" id="nav-search">
				<form class="form-search">
					<span class="input-icon">
						<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
						<i class="ace-icon fa fa-search nav-search-icon"></i>
					</span>
				</form>
			</div><!-- /.nav-search -->
		</div>

		<div class="page-content">

			<div class="page-header">
				<h1>
					Cantidad Total de inscritos
                    <?php 
                    $contador=0;
                    foreach ($consulta->result() as $fila) {
                        $contador++;                    }
                     ?>
					<span>
						<i class="ace-icon fa fa-angle-double-right"></i>
						<?php echo $contador ?>
					</span>
				</h1>
			</div><!-- /.page-header -->

			<div class="row">
				<div class="col-sm-6 col-xs-12">
					<!-- PAGE CONTENT BEGINS -->
					<div id="container" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
					<?php 
					$hombres=0;
					$mujeres=0;
					foreach ($consulta->result() as $fila) {
						if($fila->sexo1=="HOMBRE"){
							$hombres++;
						}
						if($fila->sexo2=="HOMBRE"){
							$hombres++;
						}
						if($fila->sexo3=="HOMBRE"){
							$hombres++;
						}
						if($fila->sexo1=="MUJER"){
							$mujeres++;
						}
						if($fila->sexo2=="MUJER"){
							$mujeres++;
						}
						if($fila->sexo3=="MUJER"){
							$mujeres++;
						}
					}
					 ?>
					<!-- PAGE CONTENT ENDS -->
				</div><!-- /.col -->
				<div class="col-sm-6 col-xs-12">
					<!-- PAGE CONTENT BEGINS -->
					<div id="container2" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
					<?php 
					
					for ($i=0; $i < 100; $i++) { 
						$edades[$i]=0;
					}

					foreach ($consulta->result() as $fila) {
						if($fila->fechanacimiento1!="0000-00-00"){
						$anio= date("Y", strtotime($fila->fechanacimiento1));
						$edad=2017-$anio;
						if($edad>0){
						$edades[$edad]= $edades[$edad]+ 1;
						}
						//echo $fila->idequipo." ".$fila->fechanacimiento1." ".$edad." ".$edades[$edad]."<BR>";
						}
						if($fila->fechanacimiento2!="0000-00-00"){
						$anio= date("Y", strtotime($fila->fechanacimiento2));
						$edad=2017-$anio;
						if($edad>0){
						$edades[$edad]= $edades[$edad]+ 1;
						}
						//echo $fila->idequipo." ".$fila->fechanacimiento2." ".$edad." ".$edades[$edad]."<BR>";
						}
						if($fila->fechanacimiento3!="0000-00-00"){
						$anio= date("Y", strtotime($fila->fechanacimiento3));
						$edad=2017-$anio;
						if($edad>0){
						$edades[$edad]= $edades[$edad]+ 1;
						}
						//echo $fila->idequipo." ".$fila->fechanacimiento3." ".$edad." ".$edades[$edad]."<BR>";
						}
					}
					
					
					 ?>
					<!-- PAGE CONTENT ENDS -->
				</div><!-- /.col -->
			</div><!-- /.row -->
			<div class="row">
				<div class="col-sm-6 col-xs-12">
					<!-- PAGE CONTENT BEGINS -->
					<div id="container3" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
					<?php 
					$nivel1=0;
					$nivel2=0;
					foreach ($consulta->result() as $fila) {
						if($fila->nivel=="NIVEL 1"){
							$nivel1++;
						}
						if($fila->nivel=="NIVEL 2"){
							$nivel2++;
						}
					}
					 ?>
					<!-- PAGE CONTENT ENDS -->
				</div><!-- /.col -->
				<div class="col-sm-6 col-xs-12">
					<!-- PAGE CONTENT BEGINS -->
					<div id="container4" style="min-width: 310px; height: 400px; max-width: 600px; margin: 0 auto"></div>
					<?php 
					$maniana=0;
					$tarde=0;
					foreach ($consulta->result() as $fila) {
						if($fila->turno=="MAÑANA"){
							$maniana++;
						}
						if($fila->turno=="TARDE"){
							$tarde++;
						}
					}
					 ?>
					<!-- PAGE CONTENT ENDS -->
				</div><!-- /.col -->
			</div><!-- /.row -->
		</div><!-- /.page-content -->
	</div>
</div><!-- /.main-content -->

    <script src="dist/js/highcharts.js"></script>
    <script src="dist/js/exporting.js"></script>
    <script type="text/javascript">

Highcharts.chart('container', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'PROMEDIO SEXO'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                }
            }
        }
    },
    series: [{
        name: 'Brands',
        colorByPoint: true,
        data: [ {
            name: 'Hombres',
            y: <?php echo $hombres; ?>,
            sliced: true,
            selected: true
        }, {
            name: 'Mujeres',
            y: <?php echo $mujeres; ?>
        }]
    }]
});
Highcharts.chart('container2', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'PROMEDIO DE EDADES'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                }
            }
        }
    },
    series: [{
        name: 'Brands',
        colorByPoint: true,
        data: [<?php 
        for ($i=1; $i < 100; $i++) { 
						if($edades[$i]!=0){
							//echo $i." ".$edades[$i]."<br>";
							echo "{
							            name: 'edad $i ',
							            y: ".$edades[$i]."
							       },";
						}
					}
         ?>]
    }]
});

Highcharts.chart('container3', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'PROMEDIO NIVEL'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                }
            }
        }
    },
    series: [{
        name: 'Brands',
        colorByPoint: true,
        data: [ {
            name: 'Nivel 1',
            y: <?php echo $nivel1; ?>,
            sliced: true,
            selected: true
        }, {
            name: 'Nivel 2',
            y: <?php echo $nivel2; ?>
        }]
    }]
});

Highcharts.chart('container4', {
    chart: {
        plotBackgroundColor: null,
        plotBorderWidth: null,
        plotShadow: false,
        type: 'pie'
    },
    title: {
        text: 'PROMEDIO TURNO'
    },
    tooltip: {
        pointFormat: '{series.name}: <b>{point.percentage:.1f}%</b>'
    },
    plotOptions: {
        pie: {
            allowPointSelect: true,
            cursor: 'pointer',
            dataLabels: {
                enabled: true,
                format: '<b>{point.name}</b>: {point.percentage:.1f} %',
                style: {
                    color: (Highcharts.theme && Highcharts.theme.contrastTextColor) || 'black'
                }
            }
        }
    },
    series: [{
        name: 'Brands',
        colorByPoint: true,
        data: [ {
            name: 'Mañana ',
            y: <?php echo $maniana; ?>,
            sliced: true,
            selected: true
        }, {
            name: 'Tarde',
            y: <?php echo $tarde; ?>
        }]
    }]
});
		</script>