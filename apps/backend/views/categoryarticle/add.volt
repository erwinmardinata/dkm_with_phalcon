<div class="row">
	<div class="col-lg-8">
		<div class="panel panel-default">
			<div class="panel-heading">Add Article</div>
			<div class="panel-body">
				<div class="col-md-12">
				{{ form('admin/categoryarticle/insert', 'class' : 'form-horizontal', 'role' : 'form') }}
				
					<div class="form-group">
						<label for="title">Name</label>
						{{ text_field('name', 'class' : 'form-control', 'autofocus' : '') }}
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