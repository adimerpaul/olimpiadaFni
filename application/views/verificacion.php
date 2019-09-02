			<div class="main-content">
				<div class="main-content-inner">
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">Home</a>
							</li>
							<li class="active">Verificacion</li>
						</ul><!-- /.breadcrumb -->
					</div>

					<div class="page-content">
						<div class="row">
							<div class="col-xs-12">
								<!-- PAGE CONTENT BEGINS -->
										<div class="table-header btn-info">
											Porfavor busque o seleccionar su colegio e imprima  el formulario nivel 1 y nivel 2
											y sellarlo con el colegio respectivo!
										</div>

										<!-- div.table-responsive -->

										<!-- div.dataTables_borderWrap -->
										<div>
											<table id="dynamic-table" class="table table-striped table-bordered table-hover">
												<thead>
													<tr>
														<th>#</th>
														<th>Colegio</th>
														<th>Fomulario </th>
														<!--th>Fomulario nivel Avanzado</th-->
													</tr>
												</thead>

												<tbody>
													<?php 

													$query = $this->db->query("SELECT * FROM colegio");

													$c=0;
													foreach ($query->result() as $row)
													{ 
														$c=$c+1;
														echo "
														<tr>
															<td>$c</td>
															<td>".$row->nombre."</td>
															<td>
																	<button class='btn btn-success btn-sm' data-toggle='modal' data-target='#tutor'
																		data-colegio='".$row->nombre."'
																		data-nivel='Nivel Basico'>
																		<i class='ace-icon fa fa-file bigger-130'></i> Formulario
																	</button>
															</td>
															
														</tr>";
													}
													/*
<td>
																	<button class='btn btn-success btn-sm' data-toggle='modal' data-target='#tutor'
																		data-colegio='".$row->nombre."'
																		data-nivel='Nivel Avanzado'>
																		<i class='ace-icon fa fa-file bigger-130'></i> Nivel Avanzado
																	</button>
															</td>
													*/
													?>
													
													<!--tr>

														<td>
															<a href="#">app.com</a>
														</td>
														<td>$45</td>
														<td class="hidden-480">3,330</td>
														<td>Feb 12</td>

														<td class="hidden-480">
															<span class="label label-sm label-warning">Expiring</span>
														</td>

														<td>
															<div class="hidden-sm hidden-xs action-buttons">
																<a class="blue" href="#">
																	<i class="ace-icon fa fa-search-plus bigger-130"></i>
																</a>

																<a class="green" href="#">
																	<i class="ace-icon fa fa-pencil bigger-130"></i>
																</a>

																<a class="red" href="#">
																	<i class="ace-icon fa fa-trash-o bigger-130"></i>
																</a>
															</div>

															<div class="hidden-md hidden-lg">
																<div class="inline pos-rel">
																	<button class="btn btn-minier btn-yellow dropdown-toggle" data-toggle="dropdown" data-position="auto">
																		<i class="ace-icon fa fa-caret-down icon-only bigger-120"></i>
																	</button>

																	<ul class="dropdown-menu dropdown-only-icon dropdown-yellow dropdown-menu-right dropdown-caret dropdown-close">
																		<li>
																			<a href="#" class="tooltip-info" data-rel="tooltip" title="View">
																				<span class="blue">
																					<i class="ace-icon fa fa-search-plus bigger-120"></i>
																				</span>
																			</a>
																		</li>

																		<li>
																			<a href="#" class="tooltip-success" data-rel="tooltip" title="Edit">
																				<span class="green">
																					<i class="ace-icon fa fa-pencil-square-o bigger-120"></i>
																				</span>
																			</a>
																		</li>

																		<li>
																			<a href="#" class="tooltip-error" data-rel="tooltip" title="Delete">
																				<span class="red">
																					<i class="ace-icon fa fa-trash-o bigger-120"></i>
																				</span>
																			</a>
																		</li>
																	</ul>
																</div>
															</div>
														</td>
													</tr-->
												</tbody>
											</table>
										</div>
								
								<!-- PAGE CONTENT ENDS -->
							</div><!-- /.col -->
						</div><!-- /.row -->
					</div><!-- /.page-content -->
				</div>
			</div><!-- /.main-content -->

			<!-- Modal -->
<div class="modal fade" id="tutor" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Seleccionar tutor</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <form class="form-horizontal" id="formulario" method="POST" action="Verificacion/nivel">
            <div class="form-group">
              <label class="control-label col-xs-12 col-sm-3 " for="nombret">Nombre completo Tutor:</label>
              <div class="col-xs-12 col-sm-9">
              	<input type="text" name="colegio" id="colegio" hidden>
              	<input type="text" name="nivel" id="nivel" hidden>
                <select name="nombret" required id="nombret" class="col-sm-12 col-sm-12">
                      <option value="">Selecionar</option>
                      <?php 
                      $query=$this->db->query("SELECT * FROM tutor ORDER BY nombre");
                      foreach ($query->result() as $row)
                        {
                          echo "<option value='".$row->idtutor."'>".$row->nombre."</option>";
                        }
                      ?>   
                    </select>
              </div>
            </div>
          <div class="modal-footer">
	        <button type="button" class="btn btn-danger" data-dismiss="modal">Cerrar</button>
	        <button type="submit" class="btn btn-success">Formulario</button>
	      </div>
        </form>
      </div>

    </div>
  </div>
</div>
