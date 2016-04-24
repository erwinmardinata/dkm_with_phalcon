<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		{{ get_title() }}	
		
		<!-- stylesheet -->
		{{ stylesheet_link('css/bootstrap.min.css') }}
		{{ stylesheet_link('css/datepicker3.css') }}
		{{ stylesheet_link('css/styles.css') }}
		
		<!-- javascript -->
		{{ javascript_include('js/jquery-1.12.1.min.js') }}
		{{ javascript_include('js/bootstrap.min.js') }}
		{{ javascript_include('js/lumino.glyphs.js') }}
	</head>

	<body>
	
		{{ content() }}

	</body>
</html>
