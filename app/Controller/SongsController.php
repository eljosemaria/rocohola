<?php

class SongsController extends AppController {

	public function index() {
		$mis_canciones = $this->Song->getByUser(AuthComponent::user('id'));
		$this->set('mis_canciones', $mis_canciones);
	}
	
	public function add() {
		if (!AuthComponent::user()) {
			$this->redirect(array('controller' => 'users', 'action' => 'login'));
		}
		$this->request->data['Song']['user_id'] = AuthComponent::user('id');
		//pr($this->request->data);
        if ($this->request->is('post')) {
            $this->Song->create();
            $data = $this->Song->includeName($this->request->data);
            if ($this->Song->save($data)) {
				//$this->redirect(array('controller' => 'user_texts', 'action' => 'view', 'registration_without_confirmation'));
				unset($this->request->data);
                $this->Session->setFlash('Se guardo tu link', 'flash_success');
            } else {
                $this->Session->setFlash('No se guardo tu link', 'flash_error');
            }
        }
    }

	public function remove() {
		if (!AuthComponent::user()) {
			$this->redirect(array('controller' => 'users', 'action' => 'login'));
		}
        if ($this->Song->delete($this->params['pass'][0])) {
            $this->Session->setFlash('Se elimino tu cancion', 'flash_success');
        } else {
            $this->Session->setFlash('No se elimino tu cancion', 'flash_error');
        }
        $this->redirect(array('controller' => 'songs', 'action' => 'index'));
    }

	function getnext() {
		$this->layout = 'ajax';
		$song = $this->QueuedSong->get();
		if (empty($song)) {
			throw new NotFoundException('Could not find that page');
		}
		$this->set('song', $song);
	}
	
	function makeCola() {
		Controller::loadModel('QueuedSong');
		$this->QueuedSong->deleteAll(array('1 = 1'));
		//$songs = $this->Song->getAll();
		//$songs = $this->Song->sinVoto();
		$songs = $this->Song->lessVoted();
		//pr($songs);
		foreach ($songs as $song) {
			$user_id = $song['Song']['user_id'];
			$id = $song['Song']['id'];
			$link_yt = $song['Song']['link_youtube'];
			$id_video =  explode('v=', $link_yt);
			if (!empty($id_video['1'])) {
				$id_video = substr($id_video['1'], 0, 11);
				$this->QueuedSong->save(array(
					'id' => null,
					'user_id' => $user_id, 
					'video_id' => $id_video,
					'song_id' => $id,
				));
			}
		}
	}

	function playAll() {
		$this->makeCola();
	}

	function playSolo() {
	}

	function complete_name() {
		$canciones = $this->Song->getAll();
		$resultado = array();
		foreach ($canciones as $key => $cancion) {
			$id_video_yt = $this->Song->getVideoId($cancion['Song']['link_youtube']);
			$name_song = $this->Song->getNameSong($id_video_yt);
			$this->Song->save(array(
				'id' => $cancion['Song']['id'],
				'name' => $name_song,
			));
			$resultado[$key]['id'] = $cancion['Song']['id'];
			$resultado[$key]['video_id'] = $id_video_yt;
			$resultado[$key]['nombre'] = $cancion['Song']['name'];
		}
		$this->set('resultado', $resultado);
	}

	function bulk_votadas() {
		$this->Song->bulk_cantidad_votos();
	}

	function flush() {
		$this->Song->bulk_delete();
	}

	function flush_negativas() {
		$this->Song->bulk_negativas();
	}


}