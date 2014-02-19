<?php

class Vote extends AppModel {

	public $belongsTo = array('User', 'Song', 'Playing');
	public $order = array('Vote.id desc');

	var $name = 'Vote';

	public $brwConfig = array(
		'names' => array(
			'plural' => 'Votos',
			'singular' => 'Voto',
			'gender' => 1,
		),
	);

	function guardar($song_id, $voto, $user_id) {
		// busco cancion para ver si existe
		$song_existe = $this->Song->findById($song_id); 
		//pr($song_existe);

		//si existe: busco si es la cancion que esta sonando actualmente
		if (!empty($song_existe)) {
			$esta_sonando = $this->Playing->get();
			$cantidad_votada = $this->veces_votada($song_id);
			if ($esta_sonando['Playing']['song_id'] == $song_id) {
				$votacion['Vote'] = array(
					'song_id' => $song_id,
					'user_id' => $user_id,
				);
				// Ya la voto el usuario
				$voted = $this->are_voted($song_id, $user_id);
				if (!empty($voted)) {
					return false;
				} else {
					if ($voto == 'like') {
						$votacion['Vote']['points'] = 1;
					} elseif ($voto == 'dont') {
						$votacion['Vote']['points'] = -1;
					}
				}

				$this->save($votacion);
				// busco la cancion y obtengo el rating actual
				// hago cache de total de votos en el modelo song
				$song_now = $this->Song->get($song_id);
				$cache_song['Song'] = array(
					'id' => $song_id,
					'rating' => $song_now['Song']['rating'] + $votacion['Vote']['points'],
					'cantidad_votos' => $cantidad_votada + 1,
				);
				$this->Song->save($cache_song);
				// hago cache de total de votos todas canciones en el modelo user
				$cache_user['User'] = array(
					'id' => $esta_sonando['User']['id'],
					'total_votes' => $song_now['Song']['rating'] + $votacion['Vote']['points'],
				);
				$this->User->save($cache_user);
				return true;
			}
		}
		//return $this->find('all', array('order' => 'rand()',));
	}

	function are_voted($song_id, $user_id) {
		return $this->find('first', array(
			'conditions' => array(
				'song_id' => $song_id,
				'user_id' => $user_id,
			),
		));
	}

	function veces_votada($song_id) {
		return $this->find('count', array(
			'conditions' => array(
				'song_id' => $song_id,
			),
		));
	}

	// check_exist
	// are_voted
	// add_rating_user
	// add_rating_song
	// add_vote

}