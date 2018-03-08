<div class="col-md-12 col-sm-12">
    <div class="box">
        <header class="bg-alizarin text-white">
            <h4>Manage Submissions</h4>
            <!-- begin box-tools -->
            <div class="box-tools">
                <a class="fa fa-fw fa-minus" href="#" data-box="collapse"></a>
                <a class="fa fa-fw fa-square-o" href="#" data-fullscreen="box"></a>
                <a class="fa fa-fw fa-refresh" href="#" data-box="refresh"></a>
                <a class="fa fa-fw fa-times" href="#" data-box="close"></a>
            </div>
            <!-- END: box-tools -->
        </header>
        <div class="box-body collapse in">
            {{ content() }}
        <table id="grid-submissions" class="table table-condensed table-hover table-striped">
            <thead>
            <tr>
                <th data-column-id="no" data-type="numeric" data-width="5%" data-sortable="false">no</th>
                <th data-column-id="assignment_id" data-sortable="false">Assignment_id</th>
	<th data-column-id="user_id" data-sortable="false">User_id</th>
	<th data-column-id="tittle" data-sortable="false">Tittle</th>
	<th data-column-id="file" data-sortable="false">File</th>
	<th data-column-id="content" data-sortable="false">Content</th>
	<th data-column-id="chance" data-sortable="false">Chance</th>
	
                <th data-column-id="commands" data-formatter="commands" data-sortable="false">Action</th>
            </tr>
            </thead>
        </table>
        </div>
    </div>
</div>

<div id="mysubmissions" class="modal fade modal-wide" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Submissions</h4>
            </div>
            <div class="modal-body">
                <form id="myForm" method="post" enctype="multipart/form-data">
                    <div class="form-group" >
                    <input type="hidden" class="form-control" name="hidden_id" id="hidden_id" >
                    </div>
                    <div class="form-group" >
	<label>Assignment_id</label>
	<input type="text" class="form-control" name="assignment_id" id="assignment_id" >
	</div>
	<div class="form-group" >
	<label>User_id</label>
	<input type="text" class="form-control" name="user_id" id="user_id" >
	</div>
	<div class="form-group" >
	<label>Tittle</label>
	<input type="text" class="form-control" name="tittle" id="tittle" >
	</div>
	<div class="form-group" >
	<label>File</label>
	<input type="text" class="form-control" name="file" id="file" >
	</div>
	<div class="form-group" >
	<label>Content</label>
	<textarea class="form-control" name="content" id="content" >
	</textarea>
	</div>
	<div class="form-group" >
	<label>Chance</label>
	<textarea class="form-control" name="chance" id="chance" >
	</textarea>
	</div>
	
                    <div class="form-group" >
                        <div class="row">
                            <div class="col-xs-4 col-xs-offset-8">
                                <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-close"></i>  close</button>
                                <button type="submit" name="save" class="btn btn-primary" id="save"><i class="fa fa-save"></i>  Save </button>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>