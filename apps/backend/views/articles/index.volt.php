<?php echo $this->getContent(); ?>

<div class="row">
	<div class="col-lg-8">
		<div class="panel panel-default">
			<div class="panel-heading">Articles</div>
			<div class="panel-body">
				<a href="<?php echo $this->url->get('admin/articles/add'); ?>" class="btn btn-primary" style="margin-bottom: 10px; float: right">Add</a>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th width="30px">No.</th>
							<th>Title</th>
							<th>Description</th>
							<th width="150px"></th>
						</tr>
					</thead>
					<tbody>
					<?php if (empty($articles)) { ?>
						<tr>
							<td colspan="4" align="center">Data is Empty!</td>
						</tr>
					<?php } else { ?>
					<?php $num = 1; ?>
					<?php foreach ($articles as $datas) { ?>
						<tr>
							<td><?php echo $num; ?></td>
							<td><?php echo $datas->title; ?></td>
							<td><?php echo $datas->description; ?></td>
							<td>
								<?php echo $this->tag->linkTo(array('admin/articles/edit/' . $datas->id, 'edit', 'class' => 'btn btn-primary')); ?> |
								<?php echo $this->tag->linkTo(array('admin/articles/delete/' . $datas->id, 'delete', 'class' => 'btn btn-primary', 'onclick' => 'return confirm("anda yakin ?")')); ?>
							</td>
						</tr>
					<?php $num = $num + 1; ?>
					<?php } ?>
					<?php } ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="col-lg-4">
		<div class="panel panel-default">
			<div class="panel-heading">Category Article</div>
			<div class="panel-body">
				<a href="<?php echo $this->url->get('admin/categoryarticle/add'); ?>" class="btn btn-primary" style="margin-bottom: 10px; float: right">Add</a>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th width="30px">No.</th>
							<th>Title</th>
							<th width="150px"></th>
						</tr>
					</thead>
					<tbody>
					<?php if (empty($category)) { ?>
						<tr>
							<td colspan="4" align="center">Data is Empty!</td>
						</tr>
					<?php } else { ?>
					<?php $num = 1; ?>
					<?php foreach ($category as $datas) { ?>
						<tr>
							<td><?php echo $num; ?></td>
							<td><?php echo $datas->name; ?></td>
							<td>
								<?php echo $this->tag->linkTo(array('admin/categoryarticle/edit/' . $datas->id, 'edit', 'class' => 'btn btn-primary')); ?> |
								<?php echo $this->tag->linkTo(array('admin/categoryarticle/delete/' . $datas->id, 'delete', 'class' => 'btn btn-primary', 'onclick' => 'return confirm("anda yakin ?")')); ?>
							</td>
						</tr>
					<?php $num = $num + 1; ?>
					<?php } ?>
					<?php } ?>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div><!--/.row-->
