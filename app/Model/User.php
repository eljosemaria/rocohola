<?php
class User extends AppModel {

	public $hasMany = array('Song', 'Playing');
	public $order = array('User.id desc');

	public $validate = array(
        'name' => array(
			'rule' => 'notEmpty',
			'message' => 'Campo requerido',
		),
		'email' => array(
			'isUnique' => array(
				'rule' => 'isUnique',
				'message' => 'Email ya registrado para otro usuario',
			),
			'email' => array(
				'rule' => 'email',
				'message' => 'Email inválido',
			),
			'notEmpty' => array(
				'rule' => 'notEmpty',
				'message' => 'Campo requerido',
			),
		),
        'password' => array(
			'rule' => 'notEmpty',
			'message' => 'Campo requerido',
		),
        'repeat_password' => array(
			'rule' => array('checkPasswordMatch'),
			'message' => 'Las contraseñas no coinciden',
		),
	);

	public $brwConfig = array(
		'names' => array(
			'plural' => 'Clientes',
			'singular' => 'Cliente',
			'gender' => 1,
		),
	);



	public function beforeSave($options = array()) {
		//pr($this->data);
		if (!empty($this->data[$this->alias]['password'])) {
			$this->data[$this->alias]['password'] = AuthComponent::password($this->data[$this->alias]['password']);
		}
		return parent::beforeSave();
	}

	public function actualizoClave($clave_nueva) {
		$this->read(null, AuthComponent::user('id'));
		$this->set(array(
				'id' => AuthComponent::user('id'),
			));
		unset($this->data['User']['password']);
		//pr($this->data);
		$this->save();
		//$this->Session->write('Auth.userJedi.pin', AuthComponent::password($clave_nueva));
	}
	
	public function checkPasswordMatch($data) {
		return ($this->data[$this->alias]['password'] == $this->data[$this->alias]['repeat_password']);
	}

	
	public function afterFind($results, $primary = false) {
		//pr($results);
		$results = $this->_addHash($results);
		return $results;
	}

	public function _addHash($results) {
		foreach ($results as $key => $value) {
			if (!empty($value[$this->alias]['id']) and !empty($value[$this->alias]['email']) and !empty($value[$this->alias]['created'])) {
				$hash = AuthComponent::password($value[$this->alias]['id'] . $value[$this->alias]['email'] . $value[$this->alias]['created']);
				$results[$key][$this->alias]['hash'] = $hash;
			}
		}
		return $results;
	}
	/**/


	public function activate($id) {
		if ($this->save(array('id' => $id, 'confirmed' => 1))) {
			return true;
		} else {
			return false;
		}
	}





}