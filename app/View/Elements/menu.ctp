<ul class="nav">
    <li <?php 
    if($this->params['controller'] == 'pages' and (!empty($this->params['pass'])) and $this->params['pass'][0] == 1) {
    	echo 'class="active"';
    } ?> ><a href="<?php echo Router::url(array('controller' => 'playings', 'action' => 'view')) ?>">Que suena ahora?</a></li>
    <li <?php 
    if($this->params['controller'] == 'products') {
    	echo 'class="active"';
    } ?> ><a href="<?php echo Router::url(array('controller' => 'songs', 'action' => 'add')) ?>">Agregar temas musicales</a></li>
    <?php if (AuthComponent::user()): ?>
	    <li <?php 
	    if($this->params['controller'] == 'pages' and (!empty($this->params['pass'])) and $this->params['pass'][0] == 2) {
	    	echo 'class="active"';
	    } ?> ><a href="<?php echo Router::url(array('controller' => 'songs', 'action' => 'index')) ?>">Mis Temas</a></li>
	<?php endif ?>
</ul>