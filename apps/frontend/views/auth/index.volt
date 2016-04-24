<div class="col-md-6 col-md-offset-3">
	<div class="panel panel-default" style="padding: 20px; border-radius: 0">
	<h3 class="page-header">Login Admin</h3>
	  <div class="panel-body">
		{{ form('auth/start', 'role' : 'form', 'class' : 'form-horizontal') }}
			<div class="form-group">
				<label for="email">Email/Username</label>
				<div>
					{{ text_field('email', 'class' : 'form-control input-search') }}
				</div>
			</div>
			<div class="form-group">
				<label for="password">Password</label>
				<div>
					{{ password_field('password', 'class' : 'form-control input-search') }}
				</div>
			</div>
			<div class="form-group">
				{{ submit_button('Login', 'class' : 'btn btn-default btn-search') }}
			</div>
		{{ end_form() }}
	  </div>
	</div>
</div>
