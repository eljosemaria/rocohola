<?php 
// pr($mis_canciones); 
?>

<style type="text/css">
	h1, h2, h3, h4 {display: inline;}
</style>

<?php foreach ($mis_canciones as $cancion) : ?>
	<h2><?php echo $cancion['Song']['name']; ?></h2>
	<br />
	<img src="http://img.youtube.com/vi/<?php echo $cancion['Song']['video_id']; ?>/mqdefault.jpg" />
	<br />
	<a href="<?php echo Router::url(array('controller' => 'songs', 'action' => 'remove', $cancion['Song']['id'])) ?>">Eliminar</a>
	<br /><br />
	<hr>
<?php endforeach; ?>