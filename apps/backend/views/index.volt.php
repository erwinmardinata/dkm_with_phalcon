<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<?php echo $this->tag->getTitle(); ?>	
		
		<!-- stylesheet -->
		<?php echo $this->tag->stylesheetLink('css/bootstrap.min.css'); ?>
		<?php echo $this->tag->stylesheetLink('css/datepicker3.css'); ?>
		<?php echo $this->tag->stylesheetLink('css/styles.css'); ?>
		
		<!-- javascript -->
		<?php echo $this->tag->javascriptInclude('js/jquery-1.12.1.min.js'); ?>
		<?php echo $this->tag->javascriptInclude('js/bootstrap.min.js'); ?>
		<?php echo $this->tag->javascriptInclude('js/lumino.glyphs.js'); ?>
	</head>

	<body>
	
		<?php echo $this->getContent(); ?>

	</body>
</html>
