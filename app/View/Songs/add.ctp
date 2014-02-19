<?php 
echo $this->Form->create('Song');
echo $this->Form->input('link_youtube', array('label' => 'Link del video YouTube', 'autofocus' => 'autofocus', 'tabindex' => '1'));
//echo $this->Form->input('user_id', array('type' => 'hidden'));
echo $this->Form->end('Agregar', array('tabindex' => '2'));
?>