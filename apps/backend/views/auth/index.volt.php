<div class="row">
	<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
		<div class="login-panel panel panel-default">
			<div class="panel-heading">Log in</div>
			<div class="panel-body">
				<?php echo $this->tag->form(array('admin/auth/start', 'method' => 'post', 'role' => 'form')); ?>
					<fieldset>
						<div class="form-group">
							<?php echo $this->tag->emailField(array('email', 'class' => 'form-control', 'placeholder' => 'E-mail', 'autofocus' => '')); ?>
						</div>
						<div class="form-group">
							<?php echo $this->tag->passwordField(array('password', 'class' => 'form-control', 'placeholder' => 'Password', 'value' => '')); ?>
						</div>
						<div class="checkbox">
							<label>
								<?php echo $this->tag->checkField(array('remember', 'value' => 'Remember')); ?>Remember Me
							</label>
						</div>
						<?php echo $this->tag->submitButton(array('Login', 'class' => 'btn btn-primary')); ?>
					</fieldset>
				<?php echo $this->tag->endForm(); ?>
			</div>
		</div>
	</div><!-- /.col-->
</div><!-- /.row -->	
