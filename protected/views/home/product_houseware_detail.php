<section class="cover-proddet">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-60">
                <div class="content">
                    <div class="title">
                        <h4>Houseware Collection</h4>
                        <p>By Lucky Star Plastics</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



<?php
$mod_prodisi = [
    1 => [
        'title' => 'ITEM CODE',
        'isi' => 'HW0021',
    ],
    [
        'title' => 'SIZE',
        'isi' => '36 x 34.5 x 46 cm',
    ],
    [
        'title' => 'MATERIAL',
        'isi' => 'Plastic PP',
    ],
    [
        'title' => 'DESCRIPTION',
        'isi' => 'Keranjang anyam besar plastik Lucky Star diproduksi dengan
        menggunakan material plastik dan teknologi produksi yang terbaik. Seluruh permukaan produk Lucky Star Plastic akan memiliki fitur plastik yang mulus, bersih, kuat dan nyaman dipegang serta mudah dibersihkan. Dengan desain yang atraktif dan warna yang menarik, produk ini akan cocok dalam segala situasi di rumah anda.',
    ]
];
?>

<section class="breadcrumb-det">
    <div class="prelative container">

        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="#">Houseware Collection</a></li>
                <li class="breadcrumb-item active" aria-current="page">Keranjang Anyam Besar</li>
            </ol>
            <div class="back">
                <a href="#">
                <p>Kembali</p>
                </a>
            </div>
        </nav>

        <div class="row">
            <div class="col-md-30">
                <div class="image"><img class="w-100" src="<?php echo $this->assetBaseurl; ?>Layer-59.jpg" alt=""></div>
            </div>
            <div class="col-md-30">
                <div class="title">
                    <p>Keranjang Ayam Besar</p>
                </div>
                <div class="hr-garis"></div>
                <?php foreach($mod_prodisi as $key => $value): ?>
                <div class="row no-gutters">
                    <div class="col-md-17">
                        <div class="prodtit">
                            <p><?php echo $value['title'] ?></p>
                        </div>
                    </div>
                    <div class="col-md-43">
                        <div class="prodisi">
                            <p><?php echo $value['isi'] ?></p>
                        </div>
                    </div>
                </div>
                <?php endforeach ?>
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
    ]
];
?>

<section class="prodhw-dt">
    <div class="prelative container">
        <div class="row">
			<div class="title-top">
				<p>Kategori Favorit Produk Plastik Lucky Star</p>
			</div>
        </div>
        <div class="box-content">
            <div class="row">
            <?php foreach($mod_fav as $key => $value): ?>
                <div class="col-md-10 col-30">
                    <div class="image"><img class="w-100" src="<?php echo $this->assetBaseurl; ?><?php echo $value['gambar'] ?>" alt=""></div>
                    <div class="judul">
                        <p><?php echo $value['judul'] ?></p>
                    </div>
                    <div class="lihat"><a href="#">lihat produk</a></div>
                </div>
            <?php endforeach ?>
            </div>
        </div>
    </div>
</section>