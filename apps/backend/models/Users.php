<?php

namespace Multiple\Backend\Models;

use Phalcon\Mvc\Model;

class Users extends Model {
	
	public $id;
	
	public $username;
	
	public $password;
	
	public $name;
	
	public $email;
	
	public $create_at;
	
	public $active;
	
}