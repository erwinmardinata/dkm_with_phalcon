<nav class="navbar navbar-default main-menu" role="navigation">
  <div class="container-fluid">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
	  <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
		<span class="sr-only">Toggle navigation</span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
		<span class="icon-bar"></span>
	  </button>
	</div>
	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
	  <ul class="nav navbar-nav menu">
		<li class="active"><?php echo $this->tag->linkTo(array('index', 'HOME')); ?></li>
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">TENTANG <b class="caret"></b></a>
			<ul class="dropdown-menu">
			<?php foreach ($menu['about'] as $abouts) { ?>
				<li><?php echo $this->tag->linkTo(array('about/detail/' . $abouts->id, $abouts->title)); ?></li>
			<?php } ?>
			</ul>
		</li>
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">ARTICLE <b class="caret"></b></a>
			<ul class="dropdown-menu">
			<?php foreach ($menu['category'] as $cat) { ?>
				<li><?php echo $this->tag->linkTo(array('articles/cat/' . $cat->id, $cat->name)); ?></li>
			<?php } ?>
			</ul>
		</li>
		<li class="dropdown">
			<a href="#" class="dropdown-toggle" data-toggle="dropdown">GALERY <b class="caret"></b></a>
			<ul class="dropdown-menu">
				<li><a href="#">FOTO</a></li>
				<li><a href="#">AUDIO</a></li>
				<li><a href="#">VIDEO</a></li>
			</ul>
		</li>
		<li><a href="#">KONSULTASI</a></li>
		<li><a href="#">EVENT</a></li>
		<li><a href="#">KAJIAN</a></li>
	  </ul>
	</div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
