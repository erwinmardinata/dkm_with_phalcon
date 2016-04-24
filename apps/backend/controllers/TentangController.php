<?php

namespace Multiple\Backend\Controllers;
use Multiple\Backend\Models\About;

class TentangController extends BaseController {
	
	public function initialize() {
		
		$this->tag->setTitle('Tentang');
		parent::initialize();
		
	}
	
	public function indexAction() {
		
		$data = About::find();
		
		$this->view->data = $data;
		
	}
	
	public function addAction() {
		
	}
	
	public function insertAction() {
		
		if($this->request->isPost()) {
			
			$about = new About();
			
			$about->title 		= $this->request->getPost('title');
			$about->description	= $this->request->getPost('description');
			$about->date 		= date('Y-m-d H:i:s');

			$save = $about->save();
			
			if($save) {
				$this->response->redirect('admin/tentang/index');
			} else {
				foreach($about->getMessages as $message) {
					echo $message->getMessage();
				}
			}
		} else {
		
			$this->response->redirect('admin/tentang/index');
		
		}
	}
	
	public function editAction($id) {
		
		$about = About::findFirstById($id);
		$this->view->about = $about;	
		
	}
	
	public function updateAction() {

		if($this->request->isPost()) {
		
			$id = $this->request->getPost('id');
			
			$update = About::findFirstById($id);
			$update->title 			= $this->request->getPost('title');
			$update->description 	= $this->request->getPost('description');
			
			$save = $update->save($update);
			
			if($save) {
			    $this->flash->success("Your information was stored correctly!");
				$this->response->redirect('admin/tentang/index');
			} else {
				foreach($update->getMessages as $message) {
					echo $message->getMessage();
				}
			}
			
		} else {
			$this->response->redirect('admin/tentang/edit/'.$id);		
		}
		
	}
	
	public function deleteAction($id) {
		
		$delete = About::findFirstById($id);
		$delete->delete();
		
		$this->response->redirect('admin/tentang/index');
		
	}
	
}