<h1>Ingresar como usuario para disfrutar</h1>
<?php echo $this->Form->create('User', array('controller' => 'users', 'action' => 'login')) ?>
	<?php
		echo $this->Form->input('email', array('label' => 'Email', 'class' => '', 'autofocus' => 'autofocus', 'tabindex' => '1'));
		echo $this->Form->input('password', array('label' => 'Clave', 'class' => '', 'tabindex' => '2'));
		echo $this->Form->end('Ingresar', array('tabindex' => '3'));
	?>
	<a href="<?php echo $this->Html->url(array('controller' => 'users', 'action' => 'lostpass')) ?>">
	Cambiar mi clave de ingreso
	</a>
