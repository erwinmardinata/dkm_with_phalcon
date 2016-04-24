<?php

use Phalcon\Mvc\Router;

$di->set('router', function () {

    $router = new Router();

    $router->setDefaultModule("frontend");

	$router->add('/:controller/:action', array(
		'module' 		=> 'frontend',
		'controller' 	=> 1,
		'action' 		=> 2,
	));
	
	$router->add(
		'/admin/:controller/:action/:params', 
		array(
			'module' 		=> 'backend',
			'controller' 	=> 1,
			'action' 		=> 2,
			'params'		=> 3
		)
	);
		
    return $router;
});
