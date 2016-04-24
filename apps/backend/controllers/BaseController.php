<?php

namespace Multiple\Backend\Controllers;

use Phalcon\Mvc\Controller;

class BaseController extends Controller {
	
	public function initialize() {
		
		$this->tag->prependTitle('Admin DKM | ');
		if($this->session->get('auth')) {
			$this->view->setTemplateAfter('main');
			$session = $this->session->get('auth');
			$this->view->session = $session;
		}// else {
			//$this->response->redirect('admin/auth/index');
		//}
		
	}
	
}