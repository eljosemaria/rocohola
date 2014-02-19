<h1 class="">Cambiá la clave de encargado de compras</h1>
<div class="contact">
    <?php echo $this->Session->flash() ?>
    <?php echo $this->Form->create('User', array('url' => array('controller' => 'users', 'action' => 'changePin')))?>
    <div class="contacto_izq">
    	<?php echo $this->Form->input('clave_anterior', array('label' => 'Primera clave o Clave anterior', 'type' => 'password', 'required' => 'required')) ?>
    	<?php echo $this->Form->input('clave_nueva', array('label' => 'Nueva clave', 'type' => 'password', 'required' => 'required')) ?>
    	<?php echo $this->Form->input('Enviar', array('label' => false, 'type' => 'submit')); ?>
    </div>
	</form>
</div>