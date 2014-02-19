<?php

class UserText extends AppModel {

	public $order = 'UserText.id';
	public $brwConfig = array(
		'names' => array(
			'plural' => 'Textos de Registro de usuario',
			'singular' => 'Texto'
		),
		'actions' => array(
			'add' => false,
			'delete' => false,
			'edit' => true,
		),
		'fields' => array(
			'hide' => array('key'),
		),
	);


	public function getConfirmationEmail($user) {
	//	$userModel = Configure::read('UserModel');
		$domain = Configure::read('domain');
		if (empty($domain)) {
			$domain = 'http://' . $_SERVER['HTTP_HOST'];
		}
		$url = $domain . Router::url(array(
			'controller' => 'users', 'action' => 'activate',
			$user['User']['id'], $user['User']['hash']
		));
		$url = '<a href="' . $url . '">' . $url . '</a>';
		$text = $this->findByKey('email-confirmation');
		$body = $text['UserText']['text'];
		if (strstr($body, '{URL}')) {
			$body = str_replace('{URL}', $url, $body);
		} else {
			$body .= '<p>' . $url . '</p>';
		}
		return array('subject' => $text['UserText']['title'], 'body' => $body);
	}

	public function getConfirmationSecondaryEmail($userEmail) {
		$domain = Configure::read('domain');
		if (empty($domain)) {
			$domain = 'http://' . $_SERVER['HTTP_HOST'];
		}
		$url = $domain . Router::url(array(
			'controller' => 'user_emails', 'action' => 'activate',
			$userEmail['UserEmail']['id'], $userEmail['UserEmail']['hash'], 'panel' => false
		));
		$url = '<a href="' . $url . '">' . $url . '</a>';
		$text = $this->findByKey('email-confirmation');
		$body = $text['UserText']['text'];
		if (strstr($body, '{URL}')) {
			$body = str_replace('{URL}', $url, $body);
		} else {
			$body .= '<p>' . $url . '</p>';
		}
		return array('subject' => $text['UserText']['title'], 'body' => $body);
	}


	public function getRecoveryEmail($user) {
		//$userModel = Configure::read('UserModel');
		$domain = Configure::read('domain');
		if (empty($domain)) {
			$domain = 'http://' . $_SERVER['HTTP_HOST'];
		}
		$url = $domain . Router::url(array(
			'controller' => 'users', 'action' => 'recovery',
			$user['User']['id'], $user['User']['hash']
		));
		$url = '<a href="' . $url . '">' . $url . '</a>';
		$text = $this->findByKey('email-password-recovery');
		$body = $text['UserText']['text'];
		if (strstr($body, '{URL}')) {
			$body = str_replace('{URL}', $url, $body);
		} else {
			$body .= '<p>' . $url . '</p>';
		}
		return array('subject' => $text['UserText']['title'], 'body' => $body);
	}

	public function getNewUsersEmail() {
		$domain = Configure::read('domain');
		if (empty($domain)) {
			$domain = 'http://' . $_SERVER['HTTP_HOST'];
		}
		$url = $domain .Router::url('/');
		$url = '<a href="' . $url . '">' . $url . '</a>';
		$text = $this->findByKey('email-new-users');
		$body = $text['UserText']['text'];
		if (strstr($body, '{URL}')) {
			$body = str_replace('{URL}', $url, $body);
		} else {
			$body .= '<p>' . $url . '</p>';
		}
		return array('subject' => $text['UserText']['title'], 'body' => $body);
	}


}