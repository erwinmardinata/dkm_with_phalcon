<?php

namespace Multiple\Backend\Controllers;
use Multiple\Backend\Models\Articles;
use Multiple\Backend\Models\Category_articles;

class ArticlesController extends BaseController {
	
	public function initialize() {
		
		$this->tag->setTitle('Article');
		parent::initialize();
		
	}
	
	public function indexAction() {
		
		$articles	= Articles::find();
		$category	= Category_articles::find();

		$this->view->articles = $articles;
		$this->view->category = $category;
	}
	
	public function addAction() {
		
		$category 				= Category_articles::find();
		$this->view->category 	= $category;
		
	}
	
	public function insertAction() {
		
		if($this->request->isPost()) {
			
			$article = new Articles();
			$article->title 		= $this->request->getPost('title');
			$article->description 	= $this->request->getPost('description');
			$article->content 		= $this->request->getPost('content');
			$article->cat_id 		= $this->request->getPost('cat_id');
			$article->date 			= date('Y-m-d H:i:s');

			$save = $article->save();
			
			if($save) {
				$this->flash->success('berhasil insert article baru');
				$this->response->redirect('admin/articles/index');
			} else {
				foreach($article->getMessages as $message){
					echo $message->getMessage();
				}
			}
			
		} else {
			$this->response->redirect('admin/articles/index');
		}
		
	}
	
	public function editAction($id) {
		
		$article 				= Articles::findFirstById($id);
		$category 				= Category_articles::find();
		$this->view->category 	= $category;
		$this->view->article 	= $article;
		
	}
	
	public function updateAction() {
		
		if($this->request->isPost()) {
			
			$id 					= $this->request->getPost('id');
			$article 				= Articles::findFirstById($id);
			$article->title 		= $this->request->getPost('title');
			$article->description 	= $this->request->getPost('description');
			$article->content 		= $this->request->getPost('content');
			$article->cat_id 		= $this->request->getPost('cat_id');
			$article->date 			= date('Y-m-d H:i:s');

			$save 					= $article->save($article);
			
			if($save) {
				$this->flash->success('berhasil update article');
				$this->response->redirect('admin/articles/index');
			} else {
				foreach($article->getMessages as $message){
					echo $message->getMessage();
				}
			}
			
		} else {
			$this->response->redirect('admin/articles/index');
		}
		
	}
	
	public function deleteAction($id) {
		
		$delete = Articles::findFirstById($id);
		$delete->delete();
		$this->flash->warning('berhasil hapus article');
		$this->response->redirect('admin/articles/index');
		
	}
	
}