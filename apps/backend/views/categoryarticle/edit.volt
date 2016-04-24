<div class="row">
	<div class="col-lg-8">
		<div class="panel panel-default">
			<div class="panel-heading">Add Article</div>
			<div class="panel-body">
				<div class="col-md-12">
				{{ form('admin/categoryarticle/update', 'class' : 'form-horizontal', 'role' : 'form') }}
				
					<div class="form-group">
						<label for="title">Name</label>
						{{ hidden_field('id', 'value' : category.id, 'class' : 'form-control') }}
						{{ text_field('name', 'value' : category.name, 'class' : 'form-control', 'autofocus' : '') }}
					</div>
					
					<div class="form-group">
						{{ submit_button('Save', 'class' : 'btn btn-primary') }}
					</div>
				
				{{ end_form() }}
				</div>
			</div>
		</div>
	</div>
</div>