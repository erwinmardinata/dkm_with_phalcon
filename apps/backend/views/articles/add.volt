{{ stylesheet_link('ckeditor/contents.css') }}
{{ javascript_include('ckeditor/ckeditor.js') }}
<div class="row">
	<div class="col-lg-8">
		<div class="panel panel-default">
			<div class="panel-heading">Add Article</div>
			<div class="panel-body">
				<div class="col-md-12">
				{{ form('admin/articles/insert', 'class' : 'form-horizontal', 'role' : 'form') }}
				
					<div class="form-group">
						<label for="title">Title</label>
						{{ text_field('title', 'class' : 'form-control', 'autofocus' : '') }}
					</div>
					
					<div class="form-group">
						<label for="title">Category</label>
						{{ select('cat_id', category, 'using' : ['id', 'name'], 'class' : 'form-control') }}
					</div>

					<div class="form-group">
						<label for="title">Desctiption</label>
						{{ text_area('description', 'class' : 'form-control') }}
					</div>

					<div class="form-group">
						<label for="title">Content</label>
						{{ text_area('content', 'class' : 'form-control', 'id' : 'content') }}
					</div>
					
					<div class="form-group">
						{{ submit_button('Save', 'class' : 'btn btn-primary') }}
					</div>
				
				{{ end_form() }}
				</div>
			</div>
		</div>
	</div>
</div><!--/.row-->
<script type='text/javascript'>
	var editor = CKEDITOR.replace('content');
</script>