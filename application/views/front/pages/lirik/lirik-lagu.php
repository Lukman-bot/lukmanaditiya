<div class="blog mt-5 mb-5">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-10">
				<h1 class="text-center"><?= $lagu->title ?></h1>
			</div>
		</div>

		<div class="row justify-content-center mt-4">
			<div class="col-lg-10">
				<p class="text-right text-muted"><i class="fa fa-calendar-alt mr-2" aria-hidden="true"></i><?= mediumdate_indo($lagu->date) ?></p>
				<img src="<?= base_url('img/lagu/' . $lagu->photo) ?>">
			</div>
		</div>

		<div class="row justify-content-center mt-4 konten">
			<div class="col-lg-10">
				<?= $lagu->content ?>
			</div>
		</div>
	</div>
</div>
