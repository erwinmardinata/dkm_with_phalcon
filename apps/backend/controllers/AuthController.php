<?php

namespace Multiple\Backend\Controllers;
use Multiple\Backend\Models\Users;

class AuthController extends BaseController {
	
	public function initialize() {
		
		$this->tag->setTitle('Login');
		parent::initialize();
		
	}
	
	public function indexAction() {
		
		if(!$this->request->isPost()) {
			
			$this->tag->setDefault('email', '537.mardinata@gmail.com');
			$this->tag->setDefault('password', 'erwin123');
			
		}
		
	}
	
	private function _registerSession($user) {
		
		$this->session->set(
			'auth',
			array(
				'id' 	=> $user->id,
				'name'	=> $user->name
			)
		);
		
	}
	
	public function startAction() {
		
		if($this->request->isPost()) {
			
			$email 		= $this->request->getPost('email');
			$password 	= $this->request->getPost('password');
						
			$user = Users::findFirst(
				array(
					'email' 	=> $email,
					'password'	=> $password
				)
			);
			
			if($user !== false) {
				
				$this->_registerSession($user);
				$this->flash->success('Welcome' . $user->name);
				$this->response->redirect('admin/index/index');
				
			} else {
				
				$this->flash->error('error' . $user->name);			
				$this->response->redirect('admin/auth/index');
		
			}
				
		}
				
	}
	
	public function endAction() {
		
		$this->session->remove('auth');
		$this->flash->success('Goodbye');
		$this->response->redirect('admin/auth/index');

	}
	
}