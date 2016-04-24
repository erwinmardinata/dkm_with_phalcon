<?php

namespace Multiple\Frontend;

use Phalcon\Loader;
use Phalcon\Mvc\View;
use Phalcon\Mvc\Dispatcher;

class Module
{
    /**
     * Register a specific autoloader for the module
     */
    public function registerAutoloaders()
    {
        $loader = new Loader();

        $loader->registerNamespaces(
            array(
                'Multiple\Frontend\Controllers' => '../apps/frontend/controllers/',
                'Multiple\Frontend\Models'      => '../apps/frontend/models/',
                'Multiple\Frontend\Library'     => '../apps/frontend/library/'
            )
        );

        $loader->register();
    }

    /**
     * Register specific services for the module
     */
    public function registerServices($di)
    {
        // Registering a dispatcher
        $di->set('dispatcher', function () {
            $dispatcher = new Dispatcher();
            $dispatcher->setDefaultNamespace("Multiple\Frontend\Controllers\\");
            return $dispatcher;
        });

        // Registering the view component
        $di->set('view', function () {
            $view = new View();
            $view->setViewsDir('../apps/frontend/views/');
			$view->registerEngines(array(
				".volt" => 'Phalcon\Mvc\View\Engine\Volt'
			));

			return $view;
        });
		
		/**
		 * Setting up volt
		 */
		$di->set('volt', function ($view, $di) {

			$volt = new VoltEngine($view, $di);

			$volt->setOptions(array(
				"compiledPath" => APP_PATH . "/cache/volt/"
			));

			$compiler = $volt->getCompiler();
			$compiler->addFunction('is_a', 'is_a');

			return $volt;
		}, true);


    }
}