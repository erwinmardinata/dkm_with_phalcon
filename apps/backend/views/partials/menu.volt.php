<div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">
	<form role="search">
		<div class="form-group">
			<input type="text" class="form-control" placeholder="Search">
		</div>
	</form>
	<ul class="nav menu">
		<li class="active"><a href="<?php echo $this->url->get('admin/index/index'); ?>"><svg class="glyph stroked dashboard-dial"><use xlink:href="#stroked-dashboard-dial"></use></svg> Dashboard</a></li>
		<li><a href="<?php echo $this->url->get('admin/tentang/index'); ?>"><svg class="glyph stroked clipboard with paper"><use xlink:href="#stroked-clipboard-with-paper"/></svg> Tentang</a></li>
		<li><a href="<?php echo $this->url->get('admin/articles/index'); ?>"><svg class="glyph stroked notepad "><use xlink:href="#stroked-notepad"/></svg> Article</a></li>
		<li><a href="<?php echo $this->url->get('admin/konsultasi/index'); ?>"><svg class="glyph stroked email"><use xlink:href="#stroked-email"/></svg> Konsultasi</a></li>
		<li class="parent">
			<a href="#">
				<span data-toggle="collapse" href="#sub-item-1"><svg class="glyph stroked chevron-down"><use xlink:href="#stroked-chevron-down"></use></svg></span> Dropdown 
			</a>
			<ul class="children collapse" id="sub-item-1">
				<li>
					<a class="" href="#">
						<svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Sub Item 1
					</a>
				</li>
				<li>
					<a class="" href="#">
						<svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Sub Item 2
					</a>
				</li>
				<li>
					<a class="" href="#">
						<svg class="glyph stroked chevron-right"><use xlink:href="#stroked-chevron-right"></use></svg> Sub Item 3
					</a>
				</li>
			</ul>
		</li>
		<li role="presentation" class="divider"></li>
		<li><a href="<?php echo $this->url->get(); ?>" target="_blank"><svg class="glyph stroked app window with content"><use xlink:href="#stroked-app-window-with-content"/></svg> View Website</a></li>
	</ul>

</div><!--/.sidebar-->
