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
                            <h1 class="teks-cover">Tentang Kami</h1>
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
          <p>OPS Houston provides high-end, luxury care for your cosmetic surgeries and procedures. You’ll be treated with highly personalized care in a luxury facility that makes your cosmetic procedure feel more like a trip to the spa. More importantly, you’ll be working with some of Houston’s leading cosmetic surgeons. As plastic surgeons, Dr. Andry and Dr. Wijay spent years training in the latest cosmetic plastic surgery techniques. Drs. Andry and Wijay have been focused on cosmetic surgery from the beginning of their careers in medicine.</p>
        </div>
      </div>

      <div class="py-5"></div>

      <div class="sub-section2 prelatife">
        <div class="pos-absolu-featureds_image">
          <img src="<?php echo $this->assetBaseurl ?>tentang-kami_03.jpg" alt="" class="img img fluid">
        </div>

        <div class="posabs_contnet">
          <div class="row">
            <div class="col-md-25">
            </div>
            <div class="col-md-35 back-blue">
              <div class="inner_section">
                <h3>We start from scratch, with strong passion and dreams to reach.</h3>
                <p>OPS Houston provides high-end, luxury care for your cosmetic surgeries and procedures. You’ll be treated with highly personalized care in a luxury facility that makes your cosmetic procedure feel more like a trip to the spa. More importantly, you’ll be working with some of Houston’s leading cosmetic surgeons. As plastic surgeons, Dr. Andry and Dr. Wijay spent years training in the latest cosmetic plastic surgery techniques. Drs. Andry and Wijay have been focused on cosmetic surgery from the beginning of their careers in medicine.</p>
              </div>
            </div>
          </div>
        </div>
      </div>

      <div class="py-5"></div>
      <div class="row small-content c_commitment">
        <div class="col-md-5"></div>
        <div class="col-md-50">
          <h3>Our Commitment</h3>
          <div class="py-3"></div>

          <p class="subtitle">
            “To never stop learning and never stop creating, <br>
            challenging ourselves to be the best at every key stage of operational.”
          </p>
          <div class="py-3"></div>

          <p>OPS Houston provides high-end, luxury care for your cosmetic surgeries and procedures. You’ll be treated with highly personalized care in a luxury facility that makes your cosmetic procedure feel more like a trip to the spa. More importantly, you’ll be working with some of Houston’s leading cosmetic surgeons. As plastic surgeons, Dr. Andry and Dr. Wijay spent years training in the latest cosmetic plastic surgery techniques. Drs. Andry and Wijay have been focused on cosmetic surgery from the beginning of their careers in medicine.</p>

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
        <div class="col-md-15">
          <div class="top pb-4">
            <h3>01</h3>
            <small>Kehandalan</small>
          </div>
          <p>Para pelanggan dapat mempercayai kualitas produk maupun proses produksinya. Kami bangga akan efisiensi kinerja kami dan kemampuan kami mempertahankan kualitas.</p>
        </div>
        <div class="col-md-15">
          <div class="top pb-4">
            <h3>02</h3>
            <small>Kualitas</small>
          </div>
          <p>Kami mengkombinasikan pengalaman lebih dari 30 tahun dengan teknologi modern mesin produksi serta kemurnian material bahan baku yang dapat anda rasakan di setiap sentuhan pada produk Lucky Star Plastic.</p>
        </div>
        <div class="col-md-15">
          <div class="top pb-4">
            <h3>03</h3>
            <small>Kenyamanan</small>
          </div>
          <p>Kami mempermudah hidup anda dengan mempersembahkan serangkaian produk yang praktis dan membantu kegiatan sehari hari anda menjadi lebih ringkas.</p>
        </div>
        <div class="col-md-15">
          <div class="top pb-4">
            <h3>04</h3>
            <small>Kepuasan</small>
          </div>
          <p>Standar masyarakat modern dan kontrol kualitas kami yang sempurna akan berjalan seirama, menghasilkan produk yang memuaskan dan melebihi standar pasaran.</p>
        </div>
      </div>
      
      <div class="py-5"></div>

      <div class="sub-content-vision_mission text-center">
        <div class="row">
          <div class="col-md-10"></div>
          <div class="col-md-40">
            <div class="row my-auto">
              <div class="col-md-30 py-5">
                <h3>Visi</h3>
                <p>OPS Houston provides high-end, luxury care for your cosmetic surgeries and procedures. You’ll be treated with highly personalized care in a luxury facility that makes your cosmetic procedure feel more like a trip to the spa. </p>
              </div>
              <div class="col-md-30 py-5 lines-orange">
                <h3>Misi</h3>
                <p>OPS Houston provides high-end, luxury care for your cosmetic surgeries and procedures. You’ll be treated with highly personalized care in a luxury facility that makes your cosmetic procedure feel more like a trip to the </p>
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