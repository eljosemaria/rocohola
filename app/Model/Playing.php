<?php

class Playing extends AppModel {

	public $belongsTo = array('User', 'Song');

	var $name = 'Playing';
	
	public $brwConfig = array(
		'names' => array(
			'plural' => 'Canciones sonando',
			'singular' => 'Cancion sonando',
			'gender' => 2,
		),
	);

	function get() {
		return $this->find('first', array(
			'order' => 'Playing.id desc',
			'contain' => array('User', 'Song'),
		));
	}

}