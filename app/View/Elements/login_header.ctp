<?php if (AuthComponent::user()): ?>
	<span class="welcome">Bienvenido:</span>
	<span class="correo"><?php echo AuthComponent::user('name'); ?></span>
	<span> | </span><a class="salir" href="<?php echo $this->Html->url(array('controller' => 'users', 'action' => 'logout')); ?>">Salir</a>
<?php  else: ?>
	<?php // echo $this->element('login'); ?>
		<a href="<?php echo $this->Html->url(array('controller' => 'users', 'action' => 'add')); ?>">Registro</a>
		<a href="<?php echo $this->Html->url(array('controller' => 'users', 'action' => 'login')); ?>">Login</a>
<?php  endif; ?>
