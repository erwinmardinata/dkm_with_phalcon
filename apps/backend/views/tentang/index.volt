{{ content() }}

<div class="row">
	<div class="col-lg-8">
		<div class="panel panel-default">
			<div class="panel-heading">Tentang DKM Khoirul Insan</div>
			<div class="panel-body">
				<a href="{{ url('admin/tentang/add') }}" class="btn btn-primary" style="margin-bottom: 10px; float: right">Add</a>
				<table class="table table-bordered">
					<thead>
						<tr>
							<th width="30px">No.</th>
							<th>Title</th>
							<th width="150px"></th>
						</tr>
					</thead>
					<tbody>
					{% if data is empty %}
						<tr>
							<td colspan="4" align="center">Data is Empty!</td>
						</tr>
					{% else %}
					{% set num = 1 %}
					{% for datas in data %}
						<tr>
							<td>{{ num }}</td>
							<td>{{ datas.title }}</td>
							<td>
								{{ link_to('admin/tentang/edit/' ~ datas.id, 'edit', 'class' : 'btn btn-primary') }} |
								{{ link_to('admin/tentang/delete/' ~ datas.id, 'delete', 'class' : 'btn btn-primary', 'onclick' : 'return confirm("anda yakin ?")') }}
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
