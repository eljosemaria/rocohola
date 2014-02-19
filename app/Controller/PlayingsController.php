<?php

class PlayingsController extends AppController {

	function view() {
		$info_user = $this->Playing->get();
		if (!empty($info_user)) {
			Controller::loadModel('Vote');
			//echo $info_user['Song']['id'];
			//echo AuthComponent::user('id');
			$voted = $this->Vote->are_voted($info_user['Song']['id'], AuthComponent::user('id'));
			$cantidad_votos = $this->Vote->veces_votada($info_user['Song']['id']);
			$this->set('ya_votado', $voted);
			$this->set('info_user', $info_user);			
			$this->set('cantidad_votos', $cantidad_votos);			
		} else {
			throw new NotFoundException('Could not find that page');
		}
	}
		
}