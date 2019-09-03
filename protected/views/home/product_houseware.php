<section class="cover-prod">
    <div class="prelative container3">
        <div class="row">
            <div class="col-md-60">
                <div class="title">
                    <h3>Houseware Collection</h3>
                    <p>By Lucky Star Plastics</p>
                </div>
            </div>
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

<section class="prodhw-sec-1">
    <div class="prelative container">
		<div class="atas-sendiri">
			<div class="row">
				<div class="col-md-30">
					<div class="tampilkan">
						<p>Menampilkan 165 produk</p>
					</div>
				</div>
				<div class="col-md-30">
					<div class="urutkan">
						<p>Urutkan berdasar  Terbaru  |  Terlama  |  A-Z</p>
					</div>
				</div>
			</div>
		</div>
        <div class="row">
			<?php foreach($mod_fav as $key => $value): ?>
				<div class="col-md-10 col-30">
					<div class="box-content">
						<div class="image">
                            <a href="<?php echo CHtml::normalizeUrl(array('/home/producthw')); ?>">
                            <img class="w-100" src="<?php echo $this->assetBaseurl; ?><?php echo $value['gambar'] ?>" alt="">
                            </a>
                        </div>
						<div class="judul">
							<p><a href="<?php echo CHtml::normalizeUrl(array('/home/producthwDet')); ?>"><?php echo $value['judul'] ?></a></p>
						</div>
						<div class="lihat"><a href="<?php echo CHtml::normalizeUrl(array('/home/producthwDet')); ?>">lihat produk</a></div>
					</div>
				</div>
			<?php endforeach ?>
		</div>
		<div class="lihat-semua">
			<a href="#">lihat semua produk</a>
		</div>
    </div>
</section>

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


<section class="home-sec-1 outers_product_indexs">
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