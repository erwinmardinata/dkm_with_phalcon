<?php
namespace Multiple\Frontend\Controllers;

class IndexController extends BaseController {
	
	public function initialize() {

		$this->tag->setTitle('Home');
		parent::initialize();
		
	}
	
	public function indexAction() {
		
		$page = 'home';
		
		$this->view->page = $page;
		
	}
		
}