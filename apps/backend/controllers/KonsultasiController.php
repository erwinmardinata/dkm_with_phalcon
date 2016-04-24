<?php

namespace Multiple\Backend\Controllers;

class KonsultasiController extends BaseController {
	
	public function initialize() {
		
		$this->tag->setTitle('Konsultasi');
		parent::initialize();
		
	}
	
	public function indexAction() {
		
		echo 'untuk Konsultasi';
		
	}
	
}