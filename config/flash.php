<?php

use Phalcon\Flash\Session as FlashSession;

/**
 * Register the flash service with custom CSS classes
 */
$di->set('flash', function () {
	return new FlashSession(array(
		'error'   => 'alert alert-danger',
		'success' => 'alert alert-success',
		'notice'  => 'alert alert-info',
		'warning' => 'alert alert-warning'
	));
});
