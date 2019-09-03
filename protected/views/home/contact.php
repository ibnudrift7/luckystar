<?php 
$cover_page = '';

if (isset($this->setting['about_hero_image'])) {
  $cover_page = Yii::app()->baseUrl.ImageHelper::thumb(1920,562, '/images/static/'. $this->setting['about_hero_image'] , array('method' => 'adaptiveResize', 'quality' => '90'));
}
?>

<section class="cover-insides">
    <div class="begrond">
        <div class="prelative container">
                <div class="teks">
                    <div class="row">
                        <div class="col-md-60">
                            <h1 class="teks-cover">Hubungi Kami</h1>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</section>

<section class="contact-1 outer-content-page back-cream">
  <div class="prelatife container">
      <div class="py-5"></div>
      <div class="py-3"></div>

      <div class="row small-content text-center">
        <div class="col-md-8"></div>
        <div class="col-md-44">
          <p>Staff layanan pelanggan kami akan siap selalu untuk melayani kebutuhan anda.<br>
          Kami terbuka untuk segala kesempatan untuk bekerjasama dalam bentuk keagenan atau distribusi, dan memperluas jaringan pemasaran Lucky Star Plastic di Indonesia maupun di mancanegara.</p>
        </div>
        <div class="col-md-8"></div>
      </div>

      <div class="py-5"></div>

      <div class="sub-section2 pg-contact text-center">
        <div class="row">
          <div class="col-md-10"></div>
          <div class="col-md-40">
            <h5>Pabrik / Kantor Pusat</h5>
            <div class="py-3"></div>

            <p class="alamat">PT. Gunung Agung Sentosa <br>
            Jl. Kepatihan Industri No.78, Guntung, Kepatihan <br>
            Kec. Menganti, Kabupaten Gresik, Jawa Timur 61174 <br>
            Indonesia</p>
            <div class="py-5"></div>
            <div class="row">
              <div class="col line-rights col-60">
              <img src="<?php echo $this->assetBaseurl; ?>telp.png" alt="">
                <div class="py-1"></div>
                <p>
                  <span>Telephone</span><br>
                  +62 31 51161978
                </p>
                <div class="py-1"></div>

              </div>
              <div class="col line-rights col-60">
              <img src="<?php echo $this->assetBaseurl; ?>mail.png" alt="">
                <div class="py-1"></div>
                <p>
                  <span>Email</span><br>
                  info@luckystar.co.id
                </p>
                <div class="py-1"></div>

              </div>
              <div class="col col-60">
              <img src="<?php echo $this->assetBaseurl; ?>wa.png" alt="">
                <div class="py-1"></div>
                <p>
                  <span>Whatsapp <a href="https://wa.me/6281717122131">(klik untuk chat)</a></span><br>
                  0817 1712 2131
                </p>
                <div class="py-1"></div>

              </div>
            </div>
          </div>
          <div class="col-md-10"></div>
        </div>
        <div class="clearfix"></div>
      </div>

      <div class="py-5"></div>

    <div class="clear clearfix"></div>
  </div>
</section>

<section class="contact-2 outer-content-page back-white py-5">
  <div class="prelatife container">      
  <div class="py-3"></div>

      <div class="text-center">
        <h5>INKUIRI ONLINE - LUCKY STAR PLASTIC</h5>
      </div>
      <div class="py-1"></div>
      <?php echo $this->renderPartial('//home/_form_contact', array('model'=> $model) ); ?>

      <div class="clearfix"></div>
      <div class="py-3"></div>

  </div>
</section>