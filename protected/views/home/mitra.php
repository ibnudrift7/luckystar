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
                            <h1 class="teks-cover">Jadi Mitra Kami</h1>
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
          <p><b>Anda memiliki tenaga sales terpadu? Toko retail tradisional / modern? Jaringan distribusi?</b><br>
          Lucky Star Plastics membuka berbagai kemungkinan dan kesempatan untuk bekerjasama dengan anda, dalam berbagai bentuk dan kemungkinan, jangan ragu untuk menghubungi kami.</p>
        </div>
        <div class="col-md-8"></div>
      </div>

      <div class="py-4"></div>

      <div class="sub-section2 pg-mitra">
        <div class="row">
          <div class="col-md-30">
            <div class="inner_section pr-3">
             <h3>Tidak ada kata tidak untuk sebuah kemungkinan bekerjasama, mari bermitra bersama Lucky Star Plastics.</h3>
             <p>Mari bersama kita sukseskan kelancaran usaha bersama dan memperluas rantai distribusi Lucky Star Plastics di seluruh kota dan pelosok daerah di Indonesia, karena kami memiliki produk unggulan berkualitas, inovatif dan kreatif yang mampu memenangkan pasar dengan mudah.</p>
             <p>Lucky Star Plastics telah membuktikan reputasinya sejak tahun 1993 dengan rekan rekan pendukung yang saling bekerjasama dan saling menguntungkan. Keunggulan ragam produk yang sangat bervariasi, berkualitas tinggi, namun bernilai kompetitif tinggi, telah menjadi kunci sukses Lucky Star Plastics selama ini. Pencitraan produk Lucky Star Plastics yang baik dan murah, menjadikan para masyarakat pengguna akhir mengingat dan meminta secara spesifik produk kami di toko, karena perasaan aman dan terjamin mampu membuat pelangan setia. Selain itu, program penjualan yang menguntungkan toko / agen distributor membuat para penjual produk menawarkan produk kami dengan rasa bangga.</p>
            </div>
          </div>
          <div class="col-md-30">
            <img src="https://placehold.it/740x434" alt="" class="img img fluid w-100">
          </div>
        </div>
      </div>

      <div class="py-3"></div>
      <div class="py-5"></div>

    <div class="clear clearfix"></div>
  </div>
</section>