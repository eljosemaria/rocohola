<?php

Class UserTextsController extends AppController {

	public function view($key) {
		$text = $this->UserText->findByKey($key);
		if (empty($text)) {
			throw new NotFoundException('Could not find that page');
		}
		$this->set('text', $text);
	}

}