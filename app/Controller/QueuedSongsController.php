<?php

class QueuedSongsController extends AppController {

	function getnext() {
		$this->layout = 'ajax';
		$song = $this->QueuedSong->get();
		$this->set('song', $song);
		$this->listened($song['QueuedSong']['id']);
		$this->sonando($song['QueuedSong']['video_id'], $song['QueuedSong']['user_id'], $song['QueuedSong']['song_id']);
	}

	function listened($id) {
		$this->QueuedSong->save(array(
			'id' => $id,
			'escuchado' => 1,
		));		
	}
		
	function sonando($video_id, $user_id, $song_id) {
		Controller::loadModel('Playing');
		$this->Playing->save(array(
			'id' => null,
			'user_id' => $user_id,
			'video_id' => $video_id,
			'song_id' => $song_id,
		));		
	}

}