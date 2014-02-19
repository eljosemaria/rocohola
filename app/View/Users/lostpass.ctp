<h1 class="">Cambiá la clave de tu cuenta</h1>
<?php 
echo $this->Session->flash();
echo $this->Form->create('User', array('url' => array('controller' => 'users', 'action' => 'lostpass')));
echo $this->Form->input('email', array('label' => 'Dirección de email'));
echo $this->Form->end('Enviar');
?>
<p>Para restaurar su contraseña, identifique su cuenta a través su dirección de correo electrónico.</p>