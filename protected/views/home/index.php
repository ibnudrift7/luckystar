<?php
$mod_kategori = [
    1 => [
        'gambar' => 'furniture.jpg',
        'judul' => 'Furniture',
    ],
    [
        'gambar' => 'houseware.jpg',
        'judul' => 'Houseware',
    ],
    [
        'gambar' => 'tableware.jpg',
        'judul' => 'Tableware',
    ],
    [
        'gambar' => 'container.jpg',
        'judul' => 'Container',
    ]
];
?>



<section class="home-sec-1">
	<div class="prelative container">
		<div class="row">
			<div class="title-top">
				<p>Kategori Favorit Produk Plastik Lucky Star</p>
			</div>
		</div>
		<div class="row">
			<?php foreach($mod_kategori as $key => $value): ?>
				<div class="col-md-15 col-30">
					<div class="image">
						<a href="<?php echo CHtml::normalizeUrl(array('/home/producthw')); ?>">
						<img class="w-100" src="<?php echo $this->assetBaseurl; ?><?php echo $value['gambar'] ?>" alt="">
						</a>
					</div>
					<div class="title">
						<p><a href="<?php echo CHtml::normalizeUrl(array('/home/producthw')); ?>"><?php echo $value['judul'] ?></a></p>
					</div>
					<div class="lihat_kat">
						<a href="<?php echo CHtml::normalizeUrl(array('/home/producthw')); ?>">lihat kategori</a>
					</div>
				</div>
			<?php endforeach ?>
		</div>
	</div>
</section>

<?php
$mod_fav = [
    1 => [
        'gambar' => 'favorite1.jpg',
        'judul' => 'Baki Anyam Besar',
    ],
    [
        'gambar' => 'favorite2.jpg',
        'judul' => 'Baki Anyam Kecil',
    ],
    [
        'gambar' => 'favorite3.jpg',
        'judul' => 'Keranjang Anyam Bundar',
    ],
    [
        'gambar' => 'favorite4.jpg',
        'judul' => 'Keranjang Anyam Besar',
    ],
    [
        'gambar' => 'favorite5.jpg',
        'judul' => 'Pel pelan plastik',
    ],
    [
        'gambar' => 'favorite6.jpg',
        'judul' => 'Pemeras Jeruk',
    ],
    [
        'gambar' => 'favorite7.jpg',
        'judul' => 'Baki Anyam Besar',
    ],
    [
        'gambar' => 'favorite8.jpg',
        'judul' => 'Baki Anyam Kecil',
    ],
    [
        'gambar' => 'favorite9.jpg',
        'judul' => 'Keranjang Anyam Bundar',
    ],
    [
        'gambar' => 'favorite10.jpg',
        'judul' => 'Keranjang Anyam Besar',
    ],
    [
        'gambar' => 'favorite11.jpg',
        'judul' => 'Pel pelan plastik',
    ],
    [
        'gambar' => 'favorite12.jpg',
        'judul' => 'Pemeras Jeruk',
    ],
    [
        'gambar' => 'favorite13.jpg',
        'judul' => 'Baki Anyam Besar',
    ],
    [
        'gambar' => 'favorite14.jpg',
        'judul' => 'Baki Anyam Kecil',
    ],
    [
        'gambar' => 'favorite15.jpg',
        'judul' => 'Keranjang Anyam Bundar',
    ],
    [
        'gambar' => 'favorite16.jpg',
        'judul' => 'Keranjang Anyam Besar',
    ],
    [
        'gambar' => 'favorite17.jpg',
        'judul' => 'Pel pelan plastik',
    ],
    [
        'gambar' => 'favorite18.jpg',
        'judul' => 'Pemeras Jeruk',
    ]
];
?>

<section class="home-sec-2">
	<div class="prelative container">
		<div class="row">
			<div class="col-md-60">
				<div class="title">
					<p>Produk Plastik Favorit Lucky Star</p>
				</div>
			</div>
		</div>
		<div class="row">
			<?php foreach($mod_fav as $key => $value): ?>
				<div class="col-md-10 col-30">
					<div class="box-content">
						<div class="image"><a href="<?php echo CHtml::normalizeUrl(array('/home/producthw')); ?>"><img class="w-100" src="<?php echo $this->assetBaseurl; ?><?php echo $value['gambar'] ?>" alt=""></a></div>
						<div class="judul">
							<p><a href="<?php echo CHtml::normalizeUrl(array('/home/producthw')); ?>"><?php echo $value['judul'] ?></a></p>
						</div>
						<div class="lihat"><a href="<?php echo CHtml::normalizeUrl(array('/home/producthw')); ?>">lihat produk</a></div>
					</div>
				</div>
			<?php endforeach ?>
		</div>
		<div class="lihat-semua">
			<a href="#">lihat semua produk</a>
		</div>
	</div>
</section>

<section class="home-sec-3">
	<div class="prelative container">
		<div class="row">
			<div class="col-md-60">
				<div class="title">
					<p>Dapatkan Koleksi Lengkap Produk Plastik Lucky Star</p>
				</div>
				<div class="download">
					<a href="#"><i class="fa fa-download"></i>Download Katalog</a>
				</div>
			</div>
		</div>
	</div>
</section>

<?php
$mod_blog = [
    1 => [
        'gambar' => 'blog1.jpg',
        'judul' => 'Cara mengurangi limbah plastik adalah dengan tidak membuangnya',
        'kat' => 'artikel'
    ],
    [
        'gambar' => 'blog2.jpg',
        'judul' => 'Lucky Star berpartisi meramaikan Java Big Bang 2019',
        'kat' => 'berita'
    ],
    [
        'gambar' => 'blog3.jpg',
        'judul' => 'Sale & Pameran Plastic Lucky Star di PRJ Expo Jakarta 2019',
        'kat' => 'berita'
    ],
    [
        'gambar' => 'blog4.jpg',
        'judul' => 'Apa saja istilah di dunia plastik, dan mengapa penting mengetahuinya?',
        'kat' => 'artikel'
    ]
];
?>

<section class="home-sec-4">
	<div class="prelative container">
		<div class="row">
			<div class="col-md-60">
				<div class="title">
					<p>Blog Terbaru</p>
				</div>
			</div>
			<?php foreach($mod_blog as $key => $value): ?>
			<div class="col-md-15 col-30">
				<div class="box-content">
					<div class="image"><img class="w-100" src="<?php echo $this->assetBaseurl; ?><?php echo $value['gambar'] ?>" alt=""></div>
					<div class="kategori">
						<p><?php echo $value['kat'] ?></p>
					</div>
					<div class="judul">
						<a><?php echo $value['judul'] ?></a>
					</div>
				</div>
			</div>
			<?php endforeach ?>
		</div>	
		<div class="lihat-semua">
			<a href="#">lihat index blog</a>
		</div>
	</div>
</section>

<section class="home-sec-5">
	<div class="prelative container">
		<div class="row">
			<div class="col-md-60">
				<div class="title">
					<p>mari berbicara dengan kami</p>
				</div>
			</div>
		</div>
		<form class="fielddd">
			<div class="form-row">
				<div class="form-group col-md-30 col-30 ">
					<label for="inputEmail4">NAMA ANDA</label>
					<input type="text" class="form-control" id="" placeholder="">
				</div>
				<div class="form-group col-md-30 col-30 ">
					<label for="inputEmail4">EMAIL</label>
					<input type="text" class="form-control" id="" placeholder="">
				</div>
				<div class="form-group col-md-30 col-30">
					<label for="inputEmail4">TELEPON</label>
					<input type="nama" class="form-control" id="inputEmail4" placeholder="">
				</div>
				<div class="form-group col-md-30 col-30 ">
					<label for="inputEmail4">NAMA PERUSAHAAN</label>
					<input type="email" class="form-control" id="inputEmail4" placeholder="">
				</div>
			</div>
		</form>
		<div class="tertarik">
			<p>KETERTARIKAN</p>
		</div>
		<form class="radioo">
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
				<label class="form-check-label" for="inlineRadio1">membeli produk</label>
			</div>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
				<label class="form-check-label" for="inlineRadio2">menjadi mitra / agen</label>
			</div>
			<div class="form-check form-check-inline">
				<input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio1" value="option1">
				<label class="form-check-label" for="inlineRadio1">lainnya</label>
			</div>
		</form>
		<button class="form-control">submit</button>
	</div>
</section>