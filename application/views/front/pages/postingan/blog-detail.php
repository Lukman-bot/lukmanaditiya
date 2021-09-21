<div class="blog mt-5 mb-5">
	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-10">
				<h1 class="text-center"><?= $postingan->title ?></h1>
			</div>
		</div>

		<div class="row justify-content-center mt-4">
			<div class="col-lg-10">
				<p class="text-right text-muted"><i class="fa fa-calendar-alt mr-2" aria-hidden="true"></i><?= mediumdate_indo($postingan->date) ?></p>
				<img src="<?= base_url('img/postingan/' . $postingan->photo) ?>">
			</div>
		</div>

		<div class="row justify-content-center mt-4 konten">
			<div class="col-lg-10">
				<?= $postingan->content ?>
			</div>
		</div>

		<div class="row justify-content-center mt-4 konten">
			<div class="col-lg-10">
				harga:<?= $postingan->harga ?>
			</div>
		</div>

		<div class="row justify-content-center mt-4 konten">
			<div class="col-lg-10">
				hubungi penjual:<?= $postingan->hubungi_penjual ?>
			</div>
		</div>
	</div>
</div>
