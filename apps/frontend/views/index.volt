<html>
	<head>
        <meta charset="utf-8">
		{{ get_title() }}
		
		<!-- stylesheet -->
		{{ stylesheet_link('css/bootstrap.min.css') }}
		{{ stylesheet_link('font-awesome/css/font-awesome.min.css') }}
		{{ stylesheet_link('css/pgwslider.min.css') }}
		{{ stylesheet_link('css/costum.css') }}

		<!-- javascript -->
		{{ javascript_include('js/jquery-1.12.1.min.js') }}
		{{ javascript_include('js/bootstrap.min.js') }}
		{{ javascript_include('js/utils.js') }}
		{{ javascript_include('js/pgwslider.min.js') }}

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
	
	{{ content() }}
	
	</body>
</html>