<?php echo form_open('author/add',array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="first_name" class="col-md-4 control-label">First Name</label>
		<div class="col-md-8">
			<input type="text" name="first_name" value="<?php echo $this->input->post('first_name'); ?>" class="form-control" id="first_name" />
		</div>
	</div>
	<div class="form-group">
		<label for="last_name" class="col-md-4 control-label">Last Name</label>
		<div class="col-md-8">
			<input type="text" name="last_name" value="<?php echo $this->input->post('last_name'); ?>" class="form-control" id="last_name" />
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-md-4 control-label">Email</label>
		<div class="col-md-8">
			<input type="text" name="email" value="<?php echo $this->input->post('email'); ?>" class="form-control" id="email" />
		</div>
	</div>
	<div class="form-group">
		<label for="birthdate" class="col-md-4 control-label">Birthdate</label>
		<div class="col-md-8">
			<input type="text" name="birthdate" value="<?php echo $this->input->post('birthdate'); ?>" class="form-control" id="birthdate" />
		</div>
	</div>
	<div class="form-group">
		<label for="added" class="col-md-4 control-label">Added</label>
		<div class="col-md-8">
			<input type="text" name="added" value="<?php echo $this->input->post('added'); ?>" class="form-control" id="added" />
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Save</button>
        </div>
	</div>

<?php echo form_close(); ?>