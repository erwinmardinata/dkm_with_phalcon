<div class="row">
	<div class="col-lg-8">
		<div class="panel panel-default">
			<div class="panel-heading">Add Article</div>
			<div class="panel-body">
				<div class="col-md-12">
				<?php echo $this->tag->form(array('admin/categoryarticle/update', 'class' => 'form-horizontal', 'role' => 'form')); ?>
				
					<div class="form-group">
						<label for="title">Name</label>
						<?php echo $this->tag->hiddenField(array('id', 'value' => $category->id, 'class' => 'form-control')); ?>
						<?php echo $this->tag->textField(array('name', 'value' => $category->name, 'class' => 'form-control', 'autofocus' => '')); ?>
					</div>
					
					<div class="form-group">
						<?php echo $this->tag->submitButton(array('Save', 'class' => 'btn btn-primary')); ?>
					</div>
				
				<?php echo $this->tag->endForm(); ?>
				</div>
			</div>
		</div>
	</div>
</div>