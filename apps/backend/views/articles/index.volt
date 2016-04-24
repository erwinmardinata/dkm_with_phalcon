{{ content() }}

<div class="row">
	<div class="col-lg-8">
		<div class="panel panel-default">
			<div class="panel-heading">Articles</div>
			<div class="panel-body">
				<a href="{{ url('admin/articles/add') }}" class="btn btn-primary" style="margin-bottom: 10px; float: right">Add</a>
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
					{% if articles is empty %}
						<tr>
							<td colspan="4" align="center">Data is Empty!</td>
						</tr>
					{% else %}
					{% set num = 1 %}
					{% for datas in articles %}
						<tr>
							<td>{{ num }}</td>
							<td>{{ datas.title }}</td>
							<td>{{ datas.description }}</td>
							<td>
								{{ link_to('admin/articles/edit/' ~ datas.id, 'edit', 'class' : 'btn btn-primary') }} |
								{{ link_to('admin/articles/delete/' ~ datas.id, 'delete', 'class' : 'btn btn-primary', 'onclick' : 'return confirm("anda yakin ?")') }}
							</td>
						</tr>
					{% set num = num + 1 %}
					{% endfor %}
					{% endif %}
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<div class="col-lg-4">
		<div class="panel panel-default">
			<div class="panel-heading">Category Article</div>
			<div class="panel-body">
				<a href="{{ url('admin/categoryarticle/add') }}" class="btn btn-primary" style="margin-bottom: 10px; float: right">Add</a>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th width="30px">No.</th>
							<th>Title</th>
							<th width="150px"></th>
						</tr>
					</thead>
					<tbody>
					{% if category is empty %}
						<tr>
							<td colspan="4" align="center">Data is Empty!</td>
						</tr>
					{% else %}
					{% set num = 1 %}
					{% for datas in category %}
						<tr>
							<td>{{ num }}</td>
							<td>{{ datas.name }}</td>
							<td>
								{{ link_to('admin/categoryarticle/edit/' ~ datas.id, 'edit', 'class' : 'btn btn-primary') }} |
								{{ link_to('admin/categoryarticle/delete/' ~ datas.id, 'delete', 'class' : 'btn btn-primary', 'onclick' : 'return confirm("anda yakin ?")') }}
							</td>
						</tr>
					{% set num = num + 1 %}
					{% endfor %}
					{% endif %}
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div><!--/.row-->
