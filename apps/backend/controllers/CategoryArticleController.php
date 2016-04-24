<?php

namespace Multiple\Backend\Controllers;

use Multiple\Backend\Models\Category_articles;

class CategoryArticleController extends BaseController {
	
	public function initialize() {
		
		$this->tag->setTitle('Category Article');
		parent::initialize();
		
	}
	
	public function indexAction() {
		
	}
	
	public function addAction() {
		
	}
	
	public function insertAction() {
		
		if($this->request->isPost()) {
			
			$category = new Category_articles();
			$category->name = $this->request->getPost('name');
			
			$save = $category->save();
			
			if($save) {
				$this->flash->success('berhasil insert Kategori baru bro');
				$this->response->redirect('admin/articles/index');
			} else {
				foreach($category->getMessages() as $message) {
					echo $message->getMessage();
				}
			}
			
		} else {
			$this->response->redirect('admin/articles/index');
		}
		
	}
	
	public function editAction($id) {
		
		$category 				= Category_articles::findFirstById($id);
		$this->view->category 	= $category;
		
	}
	
	public function updateAction() {
		
		if($this->request->isPost()) {
			
			$id = $this->request->getPost('id');
			
			$update 		= Category_articles::findFirstById($id);
			$update->name 	= $this->request->getPost('name');
			
			$save = $update->save($update);
			
			if($save) {
				$this->flash->success('berhasil bro edit data Category');
				$this->response->redirect('admin/articles/index');
			} else {
				foreach($update->getMessages() as $message) {
					echo $message->getMessage();
				}
			}
			
		} else {
			$this->response->redirect('admin/articles/index');			
		}
		
	}
	
	public function deleteAction($id) {
		
		$delete = Category_articles::findFirstById($id);
		$delete->delete();
		$this->flash->warning('berhasil hapus data kategori');
		$this->response->redirect('admin/articles/index');
		
	}
}