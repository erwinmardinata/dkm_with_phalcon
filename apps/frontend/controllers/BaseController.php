<?php

namespace Multiple\Frontend\Controllers;

use Multiple\Frontend\Models\About;
use Multiple\Frontend\Models\Category_articles;
use Phalcon\Mvc\Controller;

class BaseController extends Controller {
	
	protected function initialize() {
		
		$this->tag->prependTitle('DKM KHAIRUL INSAN | ');
		$this->view->setTemplateAfter('main');
		$this->menu();
		
	}
	
	public function menu() {
		
		$menu = array(
			'about' 		=> About::find(),
			'category' 		=> Category_articles::find()
		);
		
		$this->view->menu = $menu;
		
	}
	
}