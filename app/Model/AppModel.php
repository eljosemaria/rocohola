<?php
App::uses('Model', 'Model');

class AppModel extends Model {

	var $brwConfig = array();
	var $recursive = -1;
	var $actsAs = array(
		'Containable',
		'Brownie.BrwPanel',
	);

}
