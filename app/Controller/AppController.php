<?php

class AppController extends Controller {

 	public $components= array(
		'Session',
		'Auth',
		'Brownie.BrwPanel',
		'DebugKit.Toolbar',
	);

	public $helpers = array('Html', 'Form', 'Session', 'Tree');
	public $authUser = false;
	public $UserModel = 'User';

	public $brwMenu = array(
		'Otros' => array(
			'Usuarios' => 'User',
			'Canciones' => 'Song',
			'Sonando' => 'Playing',
			'Cola' => 'QueuedSong',
		),
		
	);

	function beforeFilter(){
		
		


		$this->_customAuthSettings();
	}


	function beforeRender() {
		$this->set('date_format', 'd/m/Y');
		$this->_setTitle();
	}


	function _customAuthSettings() {
		if (empty($this->request->params['plugin']) or $this->request->params['plugin'] != 'brownie') {
			AuthComponent::$sessionKey = 'Auth.userJedi';
			$this->Auth->authorize = array('Controller');
			$this->Auth->authenticate = array(
				//'ConfirmationEmail',
				'Form' => array(
					'fields' => array('username' => 'email'),
					'userModel' => 'User',
			));
			$this->Auth->userModel = 'User';
			//$this->Auth->loginAction = array('controller' => 'pages', 'action' => 'home');
			$this->Auth->logoutRedirect = array('controller' => 'users', 'action' => 'login');
			//$this->Auth->loginRedirect = env('HTTP_REFERER');
			$this->Auth->loginRedirect = array('controller' => 'songs', 'action' => 'add');
			$this->Auth->allow();
		}
	}


	function isAuthorized($user) {

	}


	function _setTitle() {
		if (!empty($this->pageTitle)) {
			$this->pageTitle .= ' - ';
		}
		$this->pageTitle .= Configure::read('brwSettings.companyName');
		$this->set('title_for_layout', $this->pageTitle);
	}


}