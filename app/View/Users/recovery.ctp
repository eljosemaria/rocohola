<?php
$url = array('controller' => 'users', 'action' => 'recovery', $user['User']['id'], $user['User']['hash']);
echo $this->Form->create('User', array('url' => $url, 'autocomplete' => 'off'));
?>
<h1>Restauración de contraseña - Paso 2</h1>
<?php
echo $this->Form->input('password');
echo $this->Form->input('repeat_password', array(
	'type' => 'password',
	'label' => 'Repetir contraseña',
	'error' => __('Passwords do not match', true),
));
echo $this->Form->end('Enviar');
?>