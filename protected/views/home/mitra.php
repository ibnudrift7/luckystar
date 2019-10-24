<?php 
$cover_page = '';

if (isset($this->setting['mitra_hero_image'])) {
  $cover_page = Yii::app()->baseUrl.ImageHelper::thumb(1920,562, '/images/static/'. $this->setting['mitra_hero_image'] , array('method' => 'adaptiveResize', 'quality' => '90'));
}
?>

<section class="cover-insides" <?php if ($cover_page): ?>style="background-image: url(<?php echo $cover_page ?>);"<?php endif ?> >
    <div class="begrond">
        <div class="prelative container">
                <div class="teks">
                    <div class="row">
                        <div class="col-md-60">
                            <h1 class="teks-cover"><?php echo $this->setting['mitra_hero_title'] ?></h1>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</section>
<?php
$mod_icon = [
    1 => [
        'gambar' => 'disc',
        'teks' => 'Harga bersaing ditambah diskon yang menarik'
    ],
    [
        'gambar' => 'freedelv',
        'teks' => 'Mendapatkan Free Ongkir dan Free BS Pick Up untuk wilayah dalam pulau jawa dan Free BS Pick Up di Ekspedisi Surabaya untuk wilayah luar pulau S&K berlaku'
    ],
    [
        'gambar' => 'catalog',
        'teks' => 'Mendapatkan Hard Copy dan Soft Copy Katalog juga Daftar Harga'
    ],
    [
        'gambar' => 'newinfo',
        'teks' => 'Mendapatkan informasi produk terbaru dan promosi'
    ],
    [
        'gambar' => 'freeguarantee',
        'teks' => 'Garansi tukar barang seumur hidup S&K berlaku'
    ],
    [
        'gambar' => 'warranty',
        'teks' => 'Garansi seumur hidup untuk produk tertentu'
    ]
];
?>

<section class="mitra-1 outer-content-page back-cream">
  <div class="prelatife container">
      <div class="py-5"></div>
      <div class="row small-content text-center">
        <div class="col-md-8"></div>
        <div class="col-md-44">
          <?php echo $this->setting['mitra1_content'] ?>
        </div>
        <div class="col-md-8"></div>
      </div>

      <div class="row">
        <?php foreach($mod_icon as $key => $value): ?>
          <div class="col-md-20">
              <div class="box-content">
                  <img class="w-100" src="<?php echo $this->assetBaseurl; ?><?php echo $value['gambar'] ?>.png" alt="">
                  <div class="teks">
                      <p><?php echo $value['teks'] ?></p>
                  </div>
              </div>
          </div>
        <?php endforeach ?>
      </div>
      <div class="sub-section2 pg-mitra">
        <div class="row">
          <div class="col-md-30 text-left">
            <div class="inner_section">
             <?php echo $this->setting['mitra2_content'] ?>
            </div>
          </div>
          <div class="col-md-30">
            <img src="<?php echo Yii::app()->baseUrl.'/images/static/'.$this->setting['mitra2_picture']; ?>" alt="" class="img img fluid w-100">
          </div>
        </div>
      </div>

      <div class="py-3"></div>
      <div class="py-5"></div>

    <div class="clear clearfix"></div>
  </div>
</section>

<style>
    section.mitra-1 .sub-section2 h3{
        max-width: 720px;
        margin: 0 auto 35px;
    }
    section.mitra-1.outer-content-page.back-cream .box-content {
        max-width: 260px;
        margin: 0 auto;
    }
    section.mitra-1.outer-content-page.back-cream .box-content p{
        margin-top: 20px;
        text-align: center;
        font-size: 14px;
        min-height: 140px;
    }
    section.mitra-1 .small-content {
        margin-bottom: 50px;
    }
    section.mitra-1.outer-content-page.back-cream .box-content p{
      font-weight: 700;
    }

</style>