<!-- Carousel -->
<div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
	<div class="carousel-inner">
		<?php $no = 0;?>
		<?php foreach($banners as $banner) : ?>
			<?php $no++;  ?>
			<div class="carousel-item <?php if($no <= 1) { echo "active"; } ?>">
				<img src="<?= base_url("img/banner/$banner->photo") ?>" class="d-block w-100">
				<div class="carousel-caption d-none d-md-block">
					<h1><?= $banner->title ?></h1>
					<p><?= $banner->text ?></p>
				</div>
			</div>
		<?php endforeach ?>
	</div>
	<a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
		<span class="carousel-control-prev-icon" aria-hidden="true"></span>
		<span class="sr-only">Previous</span>
	</a>
	<a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
		<span class="carousel-control-next-icon" aria-hidden="true"></span>
		<span class="sr-only">Next</span>
	</a>
</div>
<!-- End of Carousel -->

<!-- Berita -->
<div class="last-news mt-5 mb-5">
	<div class="container">
		<div class="row d-flex justify-content-center">
			<div class="col">
				<h2 class="text-center">Postingan Terbaru</h2>
				<hr>
			</div>
		</div>
		<div class="row mt-4">
			<?php foreach($postingan as $b) : ?>
				<div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">
					<div class="card" style="width: 15rem; height: 24rem;">
						<img style="height:150px" src="<?= base_url('img/postingan/' . $b->photo) ?>" class="card-img-top">
						<div class="card-body">
							<h5 class="card-title"><?= $b->title ?></h5>
							<p class="card-text"><?= character_limiter($b->content,50) ?></p>
							<a href="<?= base_url("index.php/blog/baca/$b->seo_title") ?>" class="btn btn-info btn-sm">Lanjut Membaca<i class="fa fa-angle-right ml-2"></i></a>
						</div>
					</div>
				</div>
			<?php endforeach ?>
		</div>
		<!-- <div class="row mt-4">
			<div class="col text-center">
				<a href="<?= base_url('index.php/blog') ?>" class="btn btn-secondary text-light">Lihat Selengkapnya<i class="fa fa-angle-double-right ml-2"></i></a>
			</div>
		</div> -->
	</div>
</div>
<!-- End of Berita -->
