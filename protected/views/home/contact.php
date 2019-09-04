<?php 
$cover_page = '';

if (isset($this->setting['contact_hero_image'])) {
  $cover_page = Yii::app()->baseUrl.ImageHelper::thumb(1920,562, '/images/static/'. $this->setting['contact_hero_image'] , array('method' => 'adaptiveResize', 'quality' => '90'));
}
?>

<section class="cover-insides" <?php if ($cover_page): ?>style="background-image: url(<?php echo $cover_page ?>);"<?php endif ?> >
    <div class="begrond">
        <div class="prelative container">
                <div class="teks">
                    <div class="row">
                        <div class="col-md-60">
                            <h1 class="teks-cover"><?php echo $this->setting['contact_hero_title'] ?></h1>
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
          <?php echo $this->setting['contact_content'] ?>
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

            <p class="alamat">
              <?php echo nl2br($this->setting['contact_content2']) ?>
            </p>
            <div class="py-5"></div>
            <div class="row">
              <div class="col line-rights col-md-20">
              <img src="<?php echo $this->assetBaseurl; ?>telp.png" alt="">
                <div class="py-1"></div>
                <p>
                  <span>Telephone</span><br>
                  <?php echo $this->setting['contact_phone'] ?>
                </p>
                <div class="py-1"></div>

              </div>
              <div class="col line-rights col-md-20">
              <img src="<?php echo $this->assetBaseurl; ?>mail.png" alt="">
                <div class="py-1"></div>
                <p>
                  <span>Email</span><br>
                  <?php echo $this->setting['email'] ?>
                </p>
                <div class="py-1"></div>

              </div>
              <div class="col col-md-20">
              <img src="<?php echo $this->assetBaseurl; ?>wa.png" alt="">
                <div class="py-1"></div>
                <p>
                  <span>Whatsapp <a href="https://wa.me/<?php echo str_replace(' ', '', str_replace('081', '6281', $this->setting['contact_wa'])) ?>">(klik untuk chat)</a></span><br>
                  <?php echo $this->setting['contact_wa'] ?>
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