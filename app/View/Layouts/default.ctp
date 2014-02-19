<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title><?php echo $title_for_layout; ?></title>
<?php
echo $this->Html->meta('icon');
//echo $this->Html->css(array());
echo $this->Html->script(array(
	'jquery.min', 
	'jQuery.tubeplayer',
  //'play_videos',
));
echo $scripts_for_layout;
?>

<!-- UserVoice JavaScript SDK (only needed once on a page) -->
<script>(function(){var uv=document.createElement('script');uv.type='text/javascript';uv.async=true;uv.src='//widget.uservoice.com/bvriW9ZllhXRLFiOG4cvw.js';var s=document.getElementsByTagName('script')[0];s.parentNode.insertBefore(uv,s)})()</script>

<!-- A tab to launch the Classic Widget -->
<script>
UserVoice = window.UserVoice || [];
UserVoice.push(['showTab', 'classic_widget', {
  mode: 'feedback',
  primary_color: '#cc6d00',
  link_color: '#007dbf',
  forum_id: 240259,
  feedback_tab_name: 'Tu sugerencia (sera votada)',
  tab_label: 'Sugerencias',
  tab_color: '#cc6d00',
  tab_position: 'top-left',
  //tab_position: 'middle-right',
  tab_inverted: false
}]);
</script>


</head>
<body style="padding-top: 30px;">
<?php
echo $this->element('header');
echo $this->Session->flash('auth');
echo $this->Session->flash();
echo $content_for_layout;
echo $this->element('footer');
?>
</body>
</html>