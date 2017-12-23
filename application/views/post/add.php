<?php echo form_open('post/add',array("class"=>"form-horizontal")); ?>

	<div class="form-group">
		<label for="author_id" class="col-md-4 control-label"><span class="text-danger">*</span>Author Id</label>
		<div class="col-md-8">
			<input type="text" name="author_id" value="<?php echo $this->input->post('author_id'); ?>" class="form-control" id="author_id" />
			<span class="text-danger"><?php echo form_error('author_id');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="title" class="col-md-4 control-label"><span class="text-danger">*</span>Title</label>
		<div class="col-md-8">
			<input type="text" name="title" value="<?php echo $this->input->post('title'); ?>" class="form-control" id="title" />
			<span class="text-danger"><?php echo form_error('title');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="description" class="col-md-4 control-label"><span class="text-danger">*</span>Description</label>
		<div class="col-md-8">
			<input type="text" name="description" value="<?php echo $this->input->post('description'); ?>" class="form-control" id="description" />
			<span class="text-danger"><?php echo form_error('description');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="date" class="col-md-4 control-label"><span class="text-danger">*</span>Date</label>
		<div class="col-md-8">
			<input type="text" name="date" value="<?php echo $this->input->post('date'); ?>" class="form-control" id="date" />
			<span class="text-danger"><?php echo form_error('date');?></span>
		</div>
	</div>
	<div class="form-group">
		<label for="content" class="col-md-4 control-label"><span class="text-danger">*</span>Content</label>
		<div class="col-md-8">
			<textarea name="content" class="form-control" id="content"><?php echo $this->input->post('content'); ?></textarea>
			<span class="text-danger"><?php echo form_error('content');?></span>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-offset-4 col-sm-8">
			<button type="submit" class="btn btn-success">Save</button>
        </div>
	</div>

<?php echo form_close(); ?>