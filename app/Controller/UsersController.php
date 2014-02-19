<?php

class UsersController extends AppController{

	public $components = array('Email');
	public $uses = array('UserText', 'Recipient', 'User', 'Oferta');

	public function login() {
	    if ($this->request->is('post')) {
	        if ($this->Auth->login()) {
	        	$this->Session->setFlash(__('Ingreso realizado con exito'), 'flash_success', array(), 'auth');
	        	$this->redirect(array('controller' => 'songs', 'action' => 'add'));
	        } else {
	            $this->Session->setFlash(__('email o clave son incorrectos'), 'flash_error', array(), 'auth');
	        }
	    }
		$crumb = array(
			'Ingresar como usuario' => false,
		);
		$this->set('crumb', $crumb);
	}

	public function loginpopup() {
		$this->layout = 'empty';
	}

	public function logout() {
		$this->Session->delete('Order');
		$this->redirect($this->Auth->logout());
	}

	public function add() {
        if ($this->request->is('post')) {
            $this->User->create();
            if ($this->User->save($this->request->data)) {
            	$this->Session->setFlash('Se registro correctamente, ingrese como usuario para comenzar a subir temas musicales perfectos', 'flash_success');
            	$this->redirect(array('controller' => 'songs', 'action' => 'add'));
	        } else {
                $this->Session->setFlash('El usuario no se pudo guardar. Por favor, inténtelo de nuevo.', 'flash_error');
            }
        }
		$crumb = array(
			'Registrarte como usuario' => false,
		);
		$this->set('crumb', $crumb);
    }

	public function activate($id, $hash){
		$user = $this->User->read(null, $id);
		if (empty($user) or $hash != $user[$this->User->alias]['hash']) {
			throw new NotFoundException('Could not find that page');
		}
		$this->User->data = array();
		if ($this->User->activate($id)) {
			$this->Session->setFlash(__('La dirección de email ha sido confirmada correctamente, ahora puede ingresar', true), 'flash_success');
			$this->redirect('/');
		}
	}

	public function lostpass() {
		$this->pageTitle = __('Password recovery', true);
		if (!empty($this->request->data)) {
			$user = $this->User->findByEmail($this->data[$this->User->alias]['email']);
			if (empty($user)) {
				$this->Session->setFlash(__('La direccion de email no se encuentra registrada', true), 'flash_error');
			} else {
				if ($confirmacion_del_email = 0) {
					if ($user['User']['confirmed']) {
						$this->_sendPasswordRecovery($user);
						$this->redirect(array('controller' => 'user_texts', 'action' => 'view', 'password-recovery'));
					} else {
						$this->Session->setFlash(__('La dirección de email no ha sido confirmada', true), 'flash_notice');
					}
				} else {
					$enviado = $this->_sendPasswordRecovery($user);
					$this->log($enviado, 'debug');
					$this->redirect(array('controller' => 'user_texts', 'action' => 'view', 'password-recovery'));
				}
			}
		}
		$crumb = array(
			'Inicio' => array('controller' => 'pages', 'action' => 'home'),
			'Recuperar tu clave' => false,
		);
		$this->set('crumb', $crumb);
	}

	public function _sendPasswordRecovery($user) {
		$content = $this->UserText->getRecoveryEmail($user);
		App::uses('CakeEmail', 'Network/Email');
		$email = new CakeEmail();
		$email->viewVars(array(
			'mensaje' => $content['body'],
		));
		$email->from(array('noresponder@rocohola.com.ar' => 'Rocohola - Recuperar clave'));
		$email->to($user[$this->User->alias]['email']);
		//$email->to('copancopan@hotmail.com');
		$email->subject($content['subject']);
		$email->template('confirmation_email');
		$email->emailFormat('html');
		//$email->transport('Debug'); // comentar cuando pase a produccion
		return $email->send();
	}

	public function recovery($id, $hash) {
		$user = $this->User->read(null, $id);
		if (empty($user) or $hash != $user[$this->User->alias]['hash']) {
			throw new NotFoundException('Could not find that page');
		}
		if (!empty($this->data)) {
			$saved = $this->User->save(array(
				'id' => $id,
				'password' => $this->data[$this->User->alias]['password'],
				'repeat_password' => $this->data[$this->User->alias]['repeat_password'],
			));
			if ($saved) {
				$this->Session->setFlash('The password has been saved', 'flash_success');
				$this->redirect(array('controller' => 'users', 'action' => 'login'));
			}
		}
		$this->set(compact('user'));
	}


}
