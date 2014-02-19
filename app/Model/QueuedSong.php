<?php

class QueuedSong extends AppModel {

	public $belongsTo = array('User', 'Song');
	var $name = 'QueuedSong';
	
	var $brwConfig = array(
		'names' => array(
			'plural' => 'Canciones en cola',
			'singular' => 'Cancion en cola',
			'gender' => 2,
		),
	);

	function get() {
		$song = $this->find('first', array(
			'conditions' => array(
				'QueuedSong.escuchado' => 0,
			),
			'order' => 'rand()',
		));
		return $song;
	}

}