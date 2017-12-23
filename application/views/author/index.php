<div class="pull-right">
	<a href="<?php echo site_url('author/add'); ?>" class="btn btn-success">Add</a> 
</div>

<table class="table table-striped table-bordered">
    <tr>
		<th>ID</th>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Email</th>
		<th>Birthdate</th>
		<th>Added</th>
		<th>Actions</th>
    </tr>
	<?php foreach($authors as $a){ ?>
    <tr>
		<td><?php echo $a['id']; ?></td>
		<td><?php echo $a['first_name']; ?></td>
		<td><?php echo $a['last_name']; ?></td>
		<td><?php echo $a['email']; ?></td>
		<td><?php echo $a['birthdate']; ?></td>
		<td><?php echo $a['added']; ?></td>
		<td>
            <a href="<?php echo site_url('author/edit/'.$a['id']); ?>" class="btn btn-info btn-xs">Edit</a> 
            <a href="<?php echo site_url('author/remove/'.$a['id']); ?>" class="btn btn-danger btn-xs">Delete</a>
        </td>
    </tr>
	<?php } ?>
</table>
