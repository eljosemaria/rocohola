<h1>Registrate</h1>
<?php 
echo $this->Form->create('User');
echo $this->Form->input('name', array('label' => 'Nombre', 'tabindex' => '1', 'autofocus' => 'autofocus'));
echo $this->Form->input('email',array('label' => 'Email', 'tabindex' => '2'));
echo $this->Form->input('password', array('label' => 'Clave', 'tabindex' => '3'));
echo $this->Form->input('repeat_password', array(
    'label' => 'Repetir Clave',
    'type' => 'password',
    'tabindex' => '4',
));
echo $this->Form->end('Enviar', array('tabindex' => '5'));
?>