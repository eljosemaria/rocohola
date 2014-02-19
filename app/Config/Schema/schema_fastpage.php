<?php 
class AppSchema extends CakeSchema {

	public function before($event = array()) {
		return true;
	}

	public function after($event = array()) {
	    if (isset($event['create'])) {
	        switch ($event['create']) {
	            case 'pages':
	                App::uses('ClassRegistry', 'Utility');
	                $page = ClassRegistry::init('Page');
	                $page->create();
	                $page->save(
	                    array('Page' =>
	                        array(
	                        	'title' => 'titulo de prueba',
	                        	'text' => 'texto de prueba',
	                        )
	                    )
	                );
	                break;
	        }
	    }
	}

	public $pages = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => null, 'key' => 'primary'),
		'title' => array('type' => 'string', 'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
		'text' => array('type' => 'text', 'null' => false, 'default' => null, 'collate' => 'utf8_unicode_ci', 'charset' => 'utf8'),
		'enabled' => array('type' => 'boolean', 'null' => false, 'default' => '1'),
		'created' => array('type' => 'datetime', 'null' => false, 'default' => null),
		'modified' => array('type' => 'datetime', 'null' => false, 'default' => null),
		'indexes' => array(
			'PRIMARY' => array('column' => 'id', 'unique' => 1)
		),
		'tableParameters' => array('charset' => 'utf8', 'collate' => 'utf8_unicode_ci', 'engine' => 'InnoDB')
	);

}
