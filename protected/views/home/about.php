<?php 
$cover_page = '';
if (isset($this->setting['about_hero_image'])) {
  $cover_page = Yii::app()->baseUrl.ImageHelper::thumb(1920,562, '/images/static/'. $this->setting['about_hero_image'] , array('method' => 'adaptiveResize', 'quality' => '90'));
}
?>

<section class="cover-insides" <?php if ($cover_page): ?>style="background-image: url(<?php echo $cover_page ?>);"<?php endif ?> >
    <div class="begrond">
        <div class="prelative container">
                <div class="teks">
                    <div class="row">
                        <div class="col-md-60">
                            <h1 class="teks-cover"><?php echo $this->setting['about_hero_title'] ?></h1>
                        </div>
                    </div>
                </div>
        </div>
    </div>
</section>


<section class="about-1 outer-content-page back-cream">
  <div class="prelatife container">
      <div class="py-5"></div>
      <div class="row small-content text-center">
        <div class="atas">
          <?php echo $this->setting['about1_top_content'] ?>
        </div>
      </div>

      <div class="py-5"></div>

      <div class="sub-section2 prelatife">
        <div class="pos-absolu-featureds_image">
          <img src="<?php echo Yii::app()->baseUrl.'/images/static/'.$this->setting['about1_picture']; ?>" alt="" class="img img fluid">
        </div>

        <div class="posabs_contnet">
          <div class="row">
            <div class="col-md-25">
            </div>
            <div class="col-md-35 back-blue">
              <div class="inner_section">
                <h3><?php echo $this->setting['about1_subtitle'] ?></h3>
                <?php echo $this->setting['about1_content'] ?>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="py-5"></div>
      <div class="row small-content c_commitment">
        <div class="col-md-5"></div>
        <div class="col-md-50">
          <h3><?php echo $this->setting['about2_title'] ?></h3>
          <div class="py-3"></div>
          <p class="subtitle">
            <?php echo nl2br($this->setting['about2_sub_title']); ?>
          </p>
          <div class="py-3"></div>
          <?php echo $this->setting['about2_content'] ?>
          <div class="clear"></div>
        </div>
        <div class="col-md-5"></div>

      </div>        
      <div class="py-5"></div>


    <div class="clear clearfix"></div>
  </div>
</section>

<section class="about-2 outer-content-page backabout-3k">
  <div class="prelatife container">
      <div class="py-3"></div>
      <div class="d-block mx-auto text-center">
        <img src="<?php echo $this->assetBaseurl2 ?>about-3k.png" alt="" class="img img-fluid">
      </div>
      <div class="py-3"></div>

      <div class="row sub-about3k-content text-center">
        <?php for ($i=1; $i < 5; $i++) { ?>
        <div class="col-md-15">
          <div class="top pb-4">
            <h3><?php echo $this->setting['about3_smalltitle'] ?></h3>
            <small><?php echo $this->setting['about3_subtitle'] ?></small>
          </div>
          <p><?php echo $this->setting['about3_contents'] ?></p>
        </div>
        <?php } ?>

      </div>
      
      <div class="py-5"></div>

      <div class="sub-content-vision_mission text-center">
        <div class="row">
          <div class="col-md-10"></div>
          <div class="col-md-40">
            <div class="row my-auto">
              <div class="col-md-30 py-5">
                <h3>Visi</h3>
                <?php echo $this->setting['about_vision']; ?>
              </div>
              <div class="col-md-30 py-5 lines-orange">
                <h3>Misi</h3>
                <?php echo $this->setting['about_mission']; ?>
              </div>
            </div>
          </div>
          <div class="col-md-10"></div>
        </div>
      </div>

      <div class="py-5"></div>
      <div class="py-2"></div>

      <div class="clearfix"></div>
  </div>
</section>