<div class="main-content">
	<div class="main-content-inner">
		<div class="breadcrumbs ace-save-state" id="breadcrumbs">
			<ul class="breadcrumb">
				<li>
					<i class="ace-icon fa fa-home home-icon"></i>
					<a href="#">Home</a>
				</li>
				<li class="active">Admin</li>
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
			<div class="row">
				<div class="col-xs-12">
					<!-- PAGE CONTENT BEGINS -->
					<div class="clearfix">
							<div class="pull-right tableTools-container"></div>
						</div>
					<div class="row">
						<div class="col-xs-12">
							
						</div><div class="table-header">
											Administrar pariticpantes
										</div>

										<!-- div.table-responsive -->

										<!-- div.dataTables_borderWrap -->
										<div>
											<table id="dynamic-table" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th>Cedula</th>
														<th>
															<i class="ace-icon fa fa-flag bigger-110 hidden-480"></i>
															Nombre
														</th>
														<th >Celular</th>
														<th >Correo</th>
														<th >Curso</th>
														<th>Nivel</th>
														<th>Tutor id</th>
														<th>Tutor nombre</th>
														<th>Celular tutor</th>
														<th>Correo tutor</th>
														<th>Colegio</th>
														<th>Telefono</th>
														<th>Horario</th>
														<th></th>
													</tr>
												</thead>
												
												<tbody>
													<?php 
													$consulta=$this->db->query("SELECT * FROM registro");
													foreach ($consulta->result() as $fila) {
														echo "<tr>
																<td>".$fila->cedula."</td>
																<td>".$fila->nombre."</td>
																<td>".$fila->celular."</td>
																<td>".$fila->correo."</td>
																<td>".$fila->curso."</td>
																<td>".$fila->nivel."</td>
																<td>".$fila->nombret."</td>
																<td>".$this->Equipo->consulta('nombre','tutor','idtutor',$fila->nombret)."</td>
																<td>".$fila->celulart."</td>
																<td>".$fila->correot."</td>
																<td>".$fila->colegio."</td>
																<td>".$fila->telefono."</td>
																<td>".$fila->horario."</td>
																<td>
																 <button data-toggle='modal' data-target='#modificar' class='btn-warning btn-sm'
																 data-cedula='".$fila->cedula."' 
																 data-nombre='".$fila->nombre."' 
																 data-celular='".$fila->celular."' 
																 data-correo='".$fila->correo."'
																 data-curso='".$fila->curso."' 
																 data-nivel='".$fila->nivel."' 
																 data-nombret='".$fila->nombret."' 
																 data-correot='".$fila->correot."' 
																 data-colegio='".$fila->colegio."' 
																 data-telefono='".$fila->telefono."' 
																 data-horario='".$fila->horario."' 
																 ><i class='fa fa-pencil' aria-hidden='true'></i></button>
																 <a class='btn-danger btn-sm eli' href='admin/eliminar/".$fila->cedula."'>
																 	<i class='fa fa-trash' aria-hidden='true'></i>
																 </a>
																</td>
															</tr>";
													}
													/*
													<a class='blue' href='#'>
																	<i class='ace-icon fa fa-search-plus bigger-130'></i>
																</a>

																<a class='green' href='#'>
																	<i class='ace-icon fa fa-pencil bigger-130'></i>
																</a>
													*/
													?>
													

												</tbody>
											</table>
										</div>
					</div>
						
					
					<!-- PAGE CONTENT ENDS -->
				</div><!-- /.col -->
			</div><!-- /.row -->
		</div><!-- /.page-content -->
	</div>
</div><!-- /.main-content -->

<!-- Modal -->
<div class="modal fade" id="modificar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modificar</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form method="post" action="admin/modificar">
		  <div class="form-group row">
		    <label for="nombre" class="col-sm-2 col-form-label">nombre</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="nombre" placeholder="add nombre" name="nombre">
		    </div>
		  </div>
		  <div class="form-group row" hidden>
		    <label for="cedula" class="col-sm-2 col-form-label">cedula</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="cedula" placeholder="add cedula" name="cedula">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label for="celular" class="col-sm-2 col-form-label">celular</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="celular" placeholder="add celular" name="celular">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label for="correo" class="col-sm-2 col-form-label">correo</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="correo" placeholder="add correo" name="correo">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label for="curso" class="col-sm-2 col-form-label">curso</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="curso" placeholder="add curso" name="curso">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label for="nivel" class="col-sm-2 col-form-label">nivel</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="nivel" placeholder="add nivel" name="nivel">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label for="nombret" class="col-sm-2 col-form-label">nombret</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="nombret" placeholder="add nombret" name="nombret">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label for="correot" class="col-sm-2 col-form-label">correot</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="correot" placeholder="add correot" name="correot">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label for="colegio" class="col-sm-2 col-form-label">colegio</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="colegio" placeholder="add colegio" name="colegio">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label for="telefono" class="col-sm-2 col-form-label">telefono</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="telefono" placeholder="add telefono" name="telefono">
		    </div>
		  </div>
		  <div class="form-group row">
		    <label for="horario" class="col-sm-2 col-form-label">horario</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="horario" placeholder="add horario" name="horario">
		    </div>
		  </div>
		  <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
	        <button type="submit" class="btn btn-warning">Modificar</button>
	      </div>
		</form>
      </div>

    </div>
  </div>
</div>