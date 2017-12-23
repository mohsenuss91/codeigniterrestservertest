<div class="pull-right">
	<a href="<?php echo site_url('post/add'); ?>" class="btn btn-success">Add</a> 
</div>

<table class="table table-striped table-bordered">
    <tr>
		<th>ID</th>
		<th>Author Id</th>
		<th>Title</th>
		<th>Description</th>
		<th>Date</th>
		<th>Content</th>
		<th>Actions</th>
    </tr>
	<?php foreach($posts as $p){ ?>
    <tr>
		<td><?php echo $p['id']; ?></td>
		<td><?php echo $p['author_id']; ?></td>
		<td><?php echo $p['title']; ?></td>
		<td><?php echo $p['description']; ?></td>
		<td><?php echo $p['date']; ?></td>
		<td><?php echo $p['content']; ?></td>
		<td>
            <a href="<?php echo site_url('post/edit/'.$p['id']); ?>" class="btn btn-info btn-xs">Edit</a> 
            <a href="<?php echo site_url('post/remove/'.$p['id']); ?>" class="btn btn-danger btn-xs">Delete</a>
        </td>
    </tr>
	<?php } ?>
</table>
