<div class="col-md-12 col-sm-12">
    <div class="box">
        <header class="bg-alizarin text-white">
            <h4>Manage Course</h4>
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
        <table id="grid-course" class="table table-condensed table-hover table-striped">
            <thead>
            <tr>
                <th data-column-id="no" data-type="numeric" data-width="5%" data-sortable="false">no</th>
                <th data-column-id="teacher_name" data-sortable="false">Teacher</th>
            	<th data-column-id="name" data-sortable="false">Name</th>
            	<th data-column-id="description" data-sortable="false">Description</th>
            	<th data-column-id="picture" data-formatter="picture" data-sortable="false">Picture</th>
            	<th data-column-id="level" data-formatter="level" data-sortable="false">Level</th>
	
                <th data-column-id="commands" data-formatter="commands" data-sortable="false">Action</th>
            </tr>
            </thead>
        </table>
        </div>
    </div>
</div>

<div id="mycourse" class="modal fade modal-wide" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Course</h4>
            </div>
            <div class="modal-body">
                <form id="myForm" method="post" enctype="multipart/form-data">
                    <div class="form-group" >
                        <input type="hidden" class="form-control" name="hidden_id" id="hidden_id" >
                    </div>
                    <div class="form-group" >
                	<label>Teacher</label>
                	   <select class="form-control" name="teacher_id" id="teacher_id" ></select>
                	</div>
                	<div class="form-group" >
                	<label>Name</label>
                	   <input type="text" class="form-control" name="name" id="name" >
                	</div>
                	<div class="form-group" >
                	<label>Description</label>
                	   <textarea class="form-control" name="description" id="description" ></textarea>
                	</div>
                	<div class="form-group" >
                    	<label>Picture</label>
                    	<input type="text" class="form-control" name="picture" id="picture" >
                	</div>
                	<div class="form-group" >
                	<label>Level</label>
                	<select class="form-control" name="level" id="level">
                        <option value="1">Easy</option>
                        <option value="2">Medium</option>
                        <option value="3">Hard</option>
                    </select>
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

<div id="myModules" class="modal fade modal-wide" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Modules</h4>
            </div>
            <div class="modal-body">
                <table id="grid-modules" class="table table-condensed table-hover table-striped">
                    <thead>
                    <tr>
                        <th data-column-id="no" data-type="numeric" data-width="5%" data-sortable="false">no</th>
                        <th data-column-id="course_id" data-sortable="false">Course</th>
                        <th data-column-id="name" data-sortable="false">Name</th>
                        <th data-column-id="description" data-sortable="false">Description</th>
                        <th data-column-id="file" data-formatter="picture" data-sortable="false">file</th>
                        <th data-column-id="commands" data-formatter="commands" data-sortable="false">Action</th>
                    </tr>
                    </thead>
                </table>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>

<div id="myFormModules" class="modal fade modal-wide" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Modules</h4>
            </div>
            <div class="modal-body">
                <form id="addModules" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label>Name</label>
                        <input type="hidden" name="course_id">
                        <input type="text" class="form-control" name="name">
                    </div>
                    <div class="form-group">
                        <label>Description</label>
                        <textarea name="description" class="form-control"></textarea>
                    </div>
                    <div class="form-group">
                        <label>Media</label>
                        <input type="text" class="form-control" name="media">
                    </div>
                    <div class="form-group">
                        <input type="file" name="file">
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

<div id="mySend" class="modal fade modal-wide" tabindex="-1" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                <h4 class="modal-title">Send Module</h4>
            </div>
            <div class="modal-body">
                <table id="grid-classroom" class="table table-condensed table-hover table-striped">
                    <thead>
                    <tr>
                        <th data-column-id="no" data-type="numeric" data-width="5%" data-sortable="false">no</th>
                        <th data-column-id="course_id" data-sortable="false">Course</th>
                        <th data-column-id="classroom_id" data-sortable="false">Classroom</th>
                        <th data-column-id="commands" data-formatter="commands" data-sortable="false">Action</th>
                    </tr>
                    </thead>
                </table>
            </div>
            <div class="modal-footer">
            </div>
        </div>
    </div>
</div>