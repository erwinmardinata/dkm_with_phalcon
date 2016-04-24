<?php

namespace Multiple\Frontend\Library;

use Multiple\Frontend\Library\Elements;
use Phalcon\Mvc\User\Component;

class Elements extends Component {
		
	public function getMenu() {
		
		$this->view->partial('partials/menu');	

	}
	
}
