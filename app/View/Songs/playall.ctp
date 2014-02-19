<script type="text/javascript">

	$(document).ready(function(){
		//$.get('http://localhost/rocohola/public_html/queued_songs/getnext',
		$.get('http://rocohola.com.ar/queued_songs/getnext',
			function(data){
				//console.log(data);
				firstVid = data;
				$("#player").tubeplayer({
					initialVideo: firstVid, // the video that is loaded into the player
					onPlayerEnded:  playNext,
					autoPlay: true,
				});	
			}
		);		

	});

	function playNext() {
		//var nextVid = $("#lasong").load('http://localhost/rocohola/public_html/queued_songs/getnext');
		//$.get('http://localhost/rocohola/public_html/queued_songs/getnext',
		$.get('http://rocohola.com.ar/queued_songs/getnext',
			function(data){
				nextVid = data;
				//alert(nextVid);
				$('#player').tubeplayer('play', nextVid);
				$("#player").tubeplayer({
					//initialVideo: nextVid,
					autoPlay: true,
					onPlayerEnded:  playNext,

				});
				console.log
			}
		);
	}

	/*
	onPlayerPlaying: function(){
	//$('#info_user').load('http://localhost/rocohola/public_html/playings/view');
	//console.log(nextVid);
	}
	*/
</script>
<div id="player"></div>
<div id="lasong"></div>
