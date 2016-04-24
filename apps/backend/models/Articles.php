<?php

namespace Multiple\Backend\Models;

use Phalcon\Mvc\Model;

class Articles extends Model {
	
	public $id;
	
	public $title;
	
	public $description;
	
	public $content;
	
	public $cat_id;

	public $date;
	
}