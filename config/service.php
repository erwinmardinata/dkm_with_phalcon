<?php 

use Phalcon\Di\FactoryDefault;

$di = new FactoryDefault();

// Specify routes for modules
require __DIR__ . '/router.php';

// Registering database
require __DIR__ . '/database.php';

// Setup a base URI so that all generated URIs include the "tutorial" folder
require __DIR__ . '/url.php';

/**
 * Start the session the first time some component request the session service
 */
require __DIR__ . '/session.php';

//load flasing message
require __DIR__ . '/flash.php';

//load elements
require __DIR__ . '/elements.php';