<div class="container-fluid stories">
			<?php for($x = 0; $x <= 3; $x++) { ?>
	<div class="row single-story">
		<div class="col-md-10 col-md-offset-2 single-story-content">
			<div class="row">
				<div class="col-md-1">
					 <img src="/assets/img/default-user.jpg" alt="Smiley face" height="42" width="42"> 
				</div>
				<div class="col-md-10">
					 <h5>Yash Shah</h5> 
					 <h6 style="color:#7f7f7f">~ I love listening to lies when I know the truth</h6>			
				</div>
			</div>
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>
				</div>
			</div>
			<div class="row">
				<div class="col-md-10 col-md-offset-1">
					<span style="font-size:12px; color:#7f7f7f;">posted <?php echo $x; ?> hours ago.
					<div class="pull-right">
					<img class="share-icons" src="/assets/img/fb-share-btn.jpg" height="20px" width="20px">
					<img class="share-icons" src="/assets/img/twitter-share-btn.png" height="20px" width="20px">
					<img class="share-icons" src="/assets/img/gplus-share-btn.png" height="20px" width="20px">
					</div>
					<br>
					<br>
					<button class="no-break btn-sm btn-info btn">Upvote | 3K</button> <span style="margin-left:30px; font-size:14px;">Downvote</span>
				</div>
			</div>
		</div>
	</div>
			<?php } ?>
</div>
