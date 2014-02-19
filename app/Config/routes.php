<?php
Router::connect('/sign-up', array('controller' => 'users', 'action' => 'add'));
Router::connect('/login', array('controller' => 'users', 'action' => 'login'));
Router::connect('/lostpass', array('controller' => 'users', 'action' => 'lostpass'));
Router::connect('/agregar-cancion', array('controller' => 'songs', 'action' => 'add'));
Router::connect('/que-esta-sonando-ahora', array('controller' => 'playings', 'action' => 'view'));
Router::connect('/', array('controller' => 'users', 'action' => 'login'));

CakePlugin::routes();
require CAKE . 'Config' . DS . 'routes.php';