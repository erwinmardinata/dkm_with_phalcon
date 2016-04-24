<div class="main-wrapper">
	<div class="container-fluid">
		<div class="col-md-4">
			<span>{{ image('images/logo-top.jpg') }}</span>
		</div>
		<div class="col-md-4">
			<span></span>
		</div>
		<div class="col-md-4">
			<span>
				<!-- form search -->
				<div class="input-group" style="margin-top: 12px">
				  <input type="text" class="form-control input-search" placeholder="SEARCH">
				  <span class="input-group-btn">
					<button class="btn btn-default btn-search" type="button"><i class="fa fa-search"></i></button>
				  </span>
				</div>			
			</span>
		</div>
	</div>

	<br>

	{{ partial('partials/menu') }}
	
	<div class="row-fluid"><!-- main-content -->
	
		<div class="container-fluid">

			<div class="row">
				
				{{ content() }}
				
				{% if page is not defined %}
				
				{{ partial('partials/sidebar') }}
				
				{% endif %}
							
			</div>
			
		</div>
	
	</div> <!-- end main-content -->
	
	{{ partial('partials/footer') }}
	
</div>