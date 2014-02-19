<?php
$browser = substr(env('HTTP_USER_AGENT'), 25, 8);
if ($browser == 'MSIE 7.0' or $browser == 'MSIE 6.0' or $browser == 'MSIE 5.5'): ?>
<!--[if lte IE 7]>
<div class="ie6">
	<div>
		<p>Su navegador es antiguo. Recomendamos descargar alguno de los siguientes:</p>
		<ul>
		    <li><a href="http://www.getfirefox.com">Mozilla Firefox</a></li>
		    <li><a href="http://www.google.com/chrome">Google Chrome</a></li>
		    <li><a href="http://www.labellezadeinternet.com">Internet Explorer 9</a></li>
		    <li><a href="http://www.apple.com/safari/">Safari</a></li>
		    <li><a href="http://www.opera.com/">Opera</a></li>
		</ul>
	</div>
</div>
<![endif]-->
<?php endif ?>