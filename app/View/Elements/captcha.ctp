<?php
//echo recaptcha_get_html(Configure::read('captcha.public'));
?>

<script type="text/javascript">
var RecaptchaOptions = {
	theme : 'custom',
    custom_theme_widget: 'recaptcha_widget'
};
</script>

<style>
.recaptcha_only_if_image {
	font-size: 11px;
	line-height: 16px;
		color:#000;
	font-family: 'Handlee', cursive;
	font-size:16px;
}

.recaptcha_only_if_audio {
	font-size: 11px;
	line-height: 16px;
}

#recaptcha_widget {
	width: 280px;
}

#recaptcha_image img{
	border: 0px solid #BBB;
	 margin-left: -24px;
}

#recaptcha_image{
	clear: both;
}

ul#captcha_options{
	position: absolute;
	margin: -54px 0 0 290px;
	list-style-type: none;
}

ul#captcha_options li a{
	display: block;
	padding: 0;
	margin: 0 0 1px 0;
	width: 25px;
	height: 17px;
	line-height: 17px;
	background: 0 0 no-repeat;
	overflow: hidden;
	text-indent: 30px;
}

ul#captcha_options li.captcha_help a{
	background-image: url(/img/captcha_help.gif);
}

ul#captcha_options li.captcha_reload a{
	background-image: url(/img/captcha_reload.gif);
}

ul#captcha_options li.recaptcha_only_if_image a{
	background-image: url(/img/recaptcha_only_if_image.gif);
	height: 14px;
}

ul#captcha_options li.recaptcha_only_if_audio a{
	background-image: url(/img/recaptcha_only_if_audio.gif);
	height: 14px;
}

#recaptcha_response_field{
	display: block;
	margin-top: 16px;
	margin-left: -2px;
	float: none;
	border: 1px solid #BE107D;
}

#recaptcha_container{
	clear: both;
    width: 300px;
	}

#botones_form{
	position: absolute;
	margin: -54px 0 0 335px;
	width: 1px;
	height: 1px;
}

#recaptcha_container .error-message {
	margin: -28px 0 0 310px;
}
</style>

<div id="recaptcha_container">

	<div id="recaptcha_widget">

		<div id="recaptcha_image"></div>
		<ul id="captcha_options">
			<li class="captcha_reload"><a href="javascript:Recaptcha.reload()">cambiar imagen</a></li>
			<li class="recaptcha_only_if_image"><a href="javascript:Recaptcha.switch_type('audio')">Get an audio CAPTCHA</a></li>
	   		<li class="recaptcha_only_if_audio"><a href="javascript:Recaptcha.switch_type('image')">Get an image CAPTCHA</a></li>
	   		<li class="captcha_help"><a href="javascript:Recaptcha.showhelp()">Help</a></li>
		</ul>


		<?php
		$label = '
		<span class="recaptcha_only_if_image">Escriba las palabras que ve arriba:</span>
		<span class="recaptcha_only_if_audio">Escriba los números que escucha:</span>
		';
		echo $this->Form->input('captcha', array('id' => 'recaptcha_response_field', 'label' => $label));
		?>
	</div>

</div>

<script type="text/javascript"
src="http://www.google.com/recaptcha/api/challenge?k=<?php echo Configure::read('captcha.public') ?>">
</script>