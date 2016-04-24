<?php echo $this->tag->stylesheetLink('ckeditor/contents.css'); ?>
<?php echo $this->tag->javascriptInclude('ckeditor/ckeditor.js'); ?>
<div class="row">
	<div class="col-lg-8">
		<div class="panel panel-default">
			<div class="panel-heading">Add Article</div>
			<div class="panel-body">
				<div class="col-md-12">
				<?php echo $this->tag->form(array('admin/articles/insert', 'class' => 'form-horizontal', 'role' => 'form')); ?>
				
					<div class="form-group">
						<label for="title">Title</label>
						<?php echo $this->tag->textField(array('title', 'class' => 'form-control')); ?>
					</div>
					
					<div class="form-group">
						<label for="title">Category</label>
						<?php echo $this->tag->select(array('cat_id', $category, 'using' => array('id', 'name'), 'class' => 'form-control')); ?>
					</div>

					<div class="form-group">
						<label for="title">Desctiption</label>
						<?php echo $this->tag->textArea(array('description', 'class' => 'form-control')); ?>
					</div>

					<div class="form-group">
						<label for="title">Content</label>
						<?php echo $this->tag->textArea(array('content', 'class' => 'form-control', 'id' => 'content')); ?>
					</div>
					
					<div class="form-group">
						<?php echo $this->tag->submitButton(array('Save', 'class' => 'btn btn-primary')); ?>
					</div>
				
				<?php echo $this->tag->endForm(); ?>
				</div>
			</div>
		</div>
	</div>
</div><!--/.row-->
<script type='text/javascript'>
	var editor = CKEDITOR.replace('content');
</script>