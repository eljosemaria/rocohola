<?php

class VotesController extends AppController {

	public function add() {
		if (!AuthComponent::user()) {
			$this->Session->setFlash('Para poder votar tenes que estar logueado', 'flash_error');
			$this->redirect(array('controller' => 'users', 'action' => 'login'));
		}
		$user_id = AuthComponent::user('id');
		$song_id = $this->params['pass'][0];
		$voto = $this->params['pass'][1];

		$guardar_voto = $this->Vote->guardar($song_id, $voto, $user_id);

	    if ($guardar_voto) {
	        $this->Session->setFlash('Se guardo tu voto', 'flash_success');
	    } else {
	        $this->Session->setFlash('No se guardo tu voto', 'flash_error');
	    }
		$this->redirect(array('controller' => 'playings', 'action' => 'view'));    
	}

}