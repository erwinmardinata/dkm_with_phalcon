<?php

use Phalcon\Mvc\Application;

try {
	//load service
	require __DIR__ . '/../config/service.php';

    // Create an application
    $application = new Application($di);

	//register Module
	require __DIR__ . '/../config/modules.php';
	
    // Handle the request
    echo $application->handle()->getContent();

} catch (\Exception $e) {
    echo $e->getMessage();
}