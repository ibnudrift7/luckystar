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

      <div class="py-4"></div>

      <div class="sub-section2 pg-mitra">
        <div class="row">
          <div class="col-md-30">
            <div class="inner_section pr-3">
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