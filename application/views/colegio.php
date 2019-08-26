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
					<!-- Button trigger modal -->
		<button type="button" class="btn btn-success btn-sm" data-toggle="modal" data-target="#registro">
		  Nuevo colegio
		</button>

		<!-- Modal -->
		<div class="modal fade" id="registro" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <h5 class="modal-title" id="exampleModalLabel">Nuevo colegio</h5>
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
		          <span aria-hidden="true">&times;</span>
		        </button>
		      </div>
		      <div class="modal-body">
		        <form method="post" action="colegio/insertar">
				  <div class="form-group row">
				    <label for="nu" class="col-sm-2 col-form-label">nombre</label>
				    <div class="col-sm-10">
				      <input type="text" class="form-control" id="nu" placeholder="add nombre" name="nombre">				      
				    </div>
				  </div>
				  <div class="modal-footer">
			        <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
			        <button type="submit" class="btn btn-success">Insertar</button>
			      </div>
				</form>
		      </div>
		    </div>
		  </div>
		</div>
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
														<th>#</th>
														<th>Colegio</th>
														<th>Opcion</th>
													</tr>
												</thead>
												
												<tbody>
													<?php 
													$consulta=$this->db->query("SELECT * FROM colegio");
													$c=0;
													foreach ($consulta->result() as $fila) {
														$c=$c+1;
														echo "<tr>
																<td>$c</td>
																<td>".$fila->nombre."</td>
																<td>
																 <button data-toggle='modal' data-target='#modificar' class='btn-warning btn-sm'
																 data-nombre='".$fila->nombre."' 
																 ><i class='fa fa-pencil' aria-hidden='true'></i></button>
																 <a class='btn-danger btn-sm eli' href='colegio/eliminar/".$fila->nombre."'>
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
        <form method="post" action="colegio/modificar">
		  <div class="form-group row">
		    <label for="nombre" class="col-sm-2 col-form-label">nombre</label>
		    <div class="col-sm-10">
		      <input type="text" class="form-control" id="nombre" placeholder="add nombre" name="nombre">
		      <input  id="nombre2" name="nombre2" hidden>
		      
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