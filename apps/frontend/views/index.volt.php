<html>
	<head>
        <meta charset="utf-8">
		<?php echo $this->tag->getTitle(); ?>
		
		<!-- stylesheet -->
		<?php echo $this->tag->stylesheetLink('css/bootstrap.min.css'); ?>
		<?php echo $this->tag->stylesheetLink('font-awesome/css/font-awesome.min.css'); ?>
		<?php echo $this->tag->stylesheetLink('css/pgwslider.min.css'); ?>
		<?php echo $this->tag->stylesheetLink('css/costum.css'); ?>

		<!-- javascript -->
		<?php echo $this->tag->javascriptInclude('js/jquery-1.12.1.min.js'); ?>
		<?php echo $this->tag->javascriptInclude('js/bootstrap.min.js'); ?>
		<?php echo $this->tag->javascriptInclude('js/utils.js'); ?>
		<?php echo $this->tag->javascriptInclude('js/pgwslider.min.js'); ?>

		<script type='text/javascript'>
		$(document).ready(function() {
			// Menentukan elemen yang dijadikan sticky yaitu .nav
			var stickyNavTop = $('.main-menu').offset().top; 
			var stickyNav = function(){
				var scrollTop = $(window).scrollTop();  
				// Kondisi jika discroll maka menu akan selalu diatas, dan sebaliknya        
				if (scrollTop > stickyNavTop) { 
					$('.main-menu').css({ 'position': 'fixed', 'top':0, 'z-index':9999 });
				} else {
					$('.main-menu').css({ 'position': 'relative' });
				}
			};
			// Jalankan fungsi
			stickyNav();
			$(window).scroll(function() {
				stickyNav();
			});
		});
		//]]>
		</script>
		
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="Your invoices">
        <meta name="author" content="Phalcon Team">
	</head>
	<body>
	
	<?php echo $this->getContent(); ?>
	
	</body>
</html>