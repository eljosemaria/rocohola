<script type="text/javascript">
	function ReloadPage() { 
		location.reload();
	};

	$(document).ready(function() {
		setTimeout('ReloadPage()', 10000);
		//setInterval("$('#info_user').load('http://localhost/rocohola/public_html/playings/view');", 5000);
		//$("#someInfo").html("Time is " + new Date());
		//console.log;  
	});
</script>

<style type="text/css">
	h1, h2, h3, h4 {display: inline;}
</style>

<?php 
$id_video_yt = $info_user['Playing']['video_id'];
$song_id = $info_user['Song']['id'];
/*
$url_api_get = 'http://gdata.youtube.com/feeds/api/videos/' . $id_video_yt . '?v=2&alt=json&prettyprint=true';
$json = file_get_contents($url_api_get);
$obj = json_decode($json, true);
//pr($obj);
$titulo =  $obj['entry']['title']['$t'];
*/ ?>

<div id="info_user">
	<h4>Esta sonando: </h4><h2><?php echo $info_user['Song']['name']; ?></h2>
	<br />
	<img src="http://img.youtube.com/vi/<?php echo $id_video_yt; ?>/mqdefault.jpg" />
	<br />
	<h4>La subio: </h4><h1><?php echo $info_user['User']['name'] ?></h1>
	<br />
	<?php 
	if ($cantidad_votos == 0) {
		echo 'Nunca fue votado';
	} else {
		echo '<h4>Tienen un rating de: </h4><h2>' . $info_user['Song']['rating'] . '</h2>';
		echo '<h4> Y la votaron: </h4><h2>' . $cantidad_votos . '</h2> <h4>veces.</h4>';
	} ?>
	<br />
	<?php //pr($info_user) ?>
</div>

<?php if (empty($ya_votado)) { ?>
	<h4>Vota YA: </h4>
	<a href="<?php echo Router::url(array('controller' => 'votes', 'action' => 'add', $song_id ,'like')) ?>">Me gusta el tema</a>&nbsp;|&nbsp;<a href="<?php echo Router::url(array('controller' => 'votes', 'action' => 'add', $song_id, 'dont')) ?>">NO me gusta el tema</a>
<?php } else {
	echo '<h4>Ya votaste!</h4>';
} ?>
