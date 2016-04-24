<div class="row">
	<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
		<div class="login-panel panel panel-default">
			<div class="panel-heading">Log in</div>
			<div class="panel-body">
				{{ form('admin/auth/start', 'method' : 'post', 'role' : 'form') }}
					<fieldset>
						<div class="form-group">
							{{ email_field('email', 'class' : 'form-control', 'placeholder' : 'E-mail', 'autofocus' : '') }}
						</div>
						<div class="form-group">
							{{ password_field('password', 'class' : 'form-control', 'placeholder' : 'Password', 'value' : '') }}
						</div>
						<div class="checkbox">
							<label>
								{{ check_field('remember', 'value' : 'Remember') }}Remember Me
							</label>
						</div>
						{{ submit_button('Login', 'class' : 'btn btn-primary') }}
					</fieldset>
				{{ end_form() }}
			</div>
		</div>
	</div><!-- /.col-->
</div><!-- /.row -->	
