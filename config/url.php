<?php

use Phalcon\Mvc\Url as UrlProvider;

$di->set('url', function () {
	$url = new UrlProvider();
	$url->setBaseUri('/dkm-khoirul-insan/');
	return $url;
});
