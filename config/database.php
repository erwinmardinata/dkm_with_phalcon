<?php

use Phalcon\Db\Adapter\Pdo\Mysql;

$di->set('db', function () {
	
	return new Mysql(array(
		"host" 		=> "localhost",
		"username" 	=> "root",
		"password" 	=> "",
		"dbname" 	=> "dkm_khairul_insan"
	));
});

