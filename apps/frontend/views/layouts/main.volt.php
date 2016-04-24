<div class="main-wrapper">
	<div class="container-fluid">
		<div class="col-md-4">
			<span><?php echo $this->tag->image(array('images/logo-top.jpg')); ?></span>
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

	<?php echo $this->partial('partials/menu'); ?>
	
	<div class="row-fluid"><!-- main-content -->
	
		<div class="container-fluid">

			<div class="row">
				
				<?php echo $this->getContent(); ?>
				
				<?php if (!isset($page)) { ?>
				
				<?php echo $this->partial('partials/sidebar'); ?>
				
				<?php } ?>
							
			</div>
			
		</div>
	
	</div> <!-- end main-content -->
	
	<?php echo $this->partial('partials/footer'); ?>
	
</div>