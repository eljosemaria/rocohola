<?php

class Song extends AppModel {

	public $belongsTo = array('User');
	public $hasMany = array(
		'Vote' => array('dependent' => true,),
		'QueuedSong' => array('dependent' => true,),
	);
	public $order = array('Song.id desc');

	var $name = 'Song';

	public $validate = array(
        'link_youtube' => array(
			'isUnique' => array(
				'rule' => 'isUnique',
				'message' => 'Link ya registrado',
			),
			'notEmpty' => array(
				'rule' => 'notEmpty',
				'message' => 'Campo requerido',
			),
		),
	);

	public $brwConfig = array(
		'names' => array(
			'plural' => 'Canciones',
			'singular' => 'Cancion',
			'gender' => 2,
		),
	);

	function getAll() {
		return $this->find('all', array(
			'conditions' => array(
				'Song.enabled' => 1,
			),
			'order' => 'rand()',
		));
	}

	function sinVoto() {
		return $this->find('all', array(
			'conditions' => array(
				'Song.rating' => null,
				'Song.enabled' => 1,
			),
			'order' => 'rand()',
		));
	}

	function lessVoted() {
		return $this->find('all', array(
			'conditions' => array(
				'Song.cantidad_votos <= ' => 3,
				'Song.enabled' => 1,
			),
			'order' => 'rand()',
		));
	}

	function get($id) {
		return $this->find('first', array(
			'conditions' => array(
				'Song.enabled' => 1,
				'Song.id' => $id,
			),
		));
	}

	function getByUser($user_id) {
		$mis_canciones = $this->find('all', array(
			'conditions' => array(
				'Song.user_id' => $user_id,
			),
		));
		foreach ($mis_canciones as $key => $value) {
			$id_video_yt = $this->getVideoId($value['Song']['link_youtube']);
			$mis_canciones[$key]['Song']['video_id'] = $id_video_yt;
		}
		return $mis_canciones;
	}

	function getVideoId($link_youtube) {
		$id_video =  explode('v=', $link_youtube);
		if (!empty($id_video['1'])) {
			return $id_video = substr($id_video['1'], 0, 11);
		}
	}

	function getNameSong($video_id) {
		$url_api_get = 'http://gdata.youtube.com/feeds/api/videos/' . $video_id . '?v=2&alt=json&prettyprint=true';
		$json = file_get_contents($url_api_get);
		$obj = json_decode($json, true);
		//pr($obj);
		return $titulo =  $obj['entry']['title']['$t'];		
	}

	function includeName($data) {
		$id_video_yt = $this->getVideoId($data['Song']['link_youtube']);
		$name_song = $this->getNameSong($id_video_yt);
		$data['Song']['name'] = $name_song;
		return $data;
		//pr($data);
	}

	function bulk_delete() {
		$canciones = $this->find('all', array(
			//'fields' => array('name', 'rating', 'cantidad_votos'),
			'conditions' => array(
				'Song.rating <=' => -1,
				'Song.cantidad_votos >=' => 4,
			),
			'contain' => array('User'),
		));
		pr($canciones);
		foreach ($canciones as $cancion) {
			$set_disabled['Song'] = array(
				'id' => $cancion['Song']['id'],
				'enabled' => 0,
			);
			$this->save($set_disabled);
		}
	}

	function bulk_cantidad_votos() {
		$canciones = $this->find('all');
		foreach ($canciones as $cancion) {
			$cant_votada = $this->Vote->veces_votada($cancion['Song']['id']);
			$cache_veces_votada['Song'] = array(
				'id' => $cancion['Song']['id'],
				'cantidad_votos' => $cant_votada,
			);
			$this->save($cache_veces_votada);
		}
	}

	function bulk_negativas() {
		$canciones = $this->find('all', array(
			'contain' => array('Vote' => array(
				'conditions' => array('Vote.points' => -1),
			)),
		));
		//pr($canciones);
		foreach ($canciones as $key => $value) {
			if (count($value['Vote']) >= 5) {
				$nueva_lista[$key] = $value;
			};
		}
		pr($nueva_lista);
	}

}