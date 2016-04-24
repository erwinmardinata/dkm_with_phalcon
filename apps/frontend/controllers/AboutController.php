<?php

namespace Multiple\Frontend\Controllers;

use Multiple\Frontend\Models\About;

class AboutController extends BaseController {
	
	public function initialize() {
		
		$this->tag->setTitle('Tentang');
		parent::initialize();
		
	}
	
	public function indexAction() {
		echo 'index';
		$this->view->disable();
	}
	
	public function detailAction($id) {
		
		$about = About::findFirstById($id);
		
		$this->view->tentang = $about;
		
	}
}