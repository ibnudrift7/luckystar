<section class="cover-insides2">
    <div class="prelative container">
      <div class="teks">
          <div class="row">
              <div class="col-md-60">
                  <h1 class="teks-cover">Blog</h1>
              </div>
          </div>
      </div>
    </div>
</section>

<section class="blog-det-1 outer-content-page back-cream blog-page">
  <div class="prelatife container">
      <div class="py-5"></div>

      <div class="blocks-page-detailblog text-center d-block mx-auto">
        <div class="tops text-center">
          <div class="dates d-block pb-3"><p><?php echo date("d M Y", strtotime($dataBlog->date_input)); ?></p></div>
          <h1 class="title pb-5"><?php echo $dataBlog->description->title ?></h1>
        </div>
        <div class="picture pb-5">
          <img src="https://placehold.it/907x590" alt="" class="img img-fluid">
        </div>

        <?php echo $dataBlog->description->content; ?>
        <div class="clearfix"></div>
        <!-- <div class="py-4"></div> -->

      <div class="row d-none">
        <div class="col-md-20"><p class="bottom text-left"><a href="<?php echo CHtml::normalizeUrl(array('/blog/d_index')); ?>">Sebelumnya</a></p></div>
        <div class="col-md-20"><p class="home text-center"><a href="<?php echo CHtml::normalizeUrl(array('/home/d_detail')); ?>">BLOG INDEX</a></p></div>
        <div class="col-md-20"><p class="bottom text-right"><a href="<?php echo CHtml::normalizeUrl(array('/home/d_detail')); ?>">Berikutnya</a></p></div>
      </div>
      </div>
      
      <div class="py-5"></div>
    <div class="clear clearfix"></div>
  </div>
</section>

<section class="blogpages-other py-5 back-white">
  <div class="prelatife container">
  <div class="py-4"></div>

    <div class="text-center">
      <h4>Blog Lainnya</h4>
    </div>
    <div class="py-3"></div>
    
    <div class="sub-section2 outers_list_blog">
      <div class="row">
        <?php foreach ($dataBlogs->getData() as $key => $value): ?>
            <div class="col-md-20">
              <div class="items pb-4 mb-2">
                <div class="picture">
                  <a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id)); ?>">
                  <img class="img w-100" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(468,304, '/images/blog/'. $value->image, array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="">
                  </a>
                </div>
                <div class="info pt-2">
                  <div class="dates"><p><?php echo date("d M Y", strtotime($value->date_input)); ?></p></div>
                  <h6><a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id)); ?>"><?php echo $value->description->title ?></a></h6>
                  <a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id)); ?>" class="mores">Read More</a>
                </div>
                <div class="clear"></div>
              </div>
            </div>
          <?php endforeach ?>
      </div>
      <div class="clearfix"></div>
    </div>
    <div class="py-4"></div>



    <div class="clearfix"></div>
  </div>
</section>





<?php
/*
<section class="blog-detail">
  <div class="prelative container">
    <div class="row">
      <div class="col-md-15">
        <div class="title-blog">
          <div class="title">
            <p>Kategori blog arsimetris djaja</p>
            <hr>
            <ul>
              <li><a href="<?php echo CHtml::normalizeUrl(array('/blog/index')); ?>">
                Semua
              </a> 
            </li>
            <?php 
            $res_product = array(
              1=>'Tips & Trik',
              2=>'Artikel',
              3=>'Berita',
              );
            ?>
            <?php foreach ($res_product as $key => $value): ?>
            <li>
                <a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'topik'=>$key)); ?>"><?php echo $value ?></a> 
            </li>
            <?php endforeach ?>
            </ul>
          </div>
        </div>
        <div class="py-4"></div>
      </div>  
      <div class="col-md-45">
        <div class="kategori-date">
          <div class="kategori-kanan">
            <p>- <?php echo $res_product[$dataBlog->topik_id] ?> | <span><?php echo date("d F Y", strtotime($dataBlog->date_input)); ?></span></p>
          </div>
        </div>
        <div class="title">
          <h1><?php echo $dataBlog->description->title ?></h1>
        </div>
        <div class="image pt-4">
          <img class="w-100 img img-fluid" src="<?php echo Yii::app()->baseUrl.'/images/blog/'. $dataBlog->image ?>" alt="">
        </div>
        <div class="content-blog py-4 pb-5">
         <?php echo $dataBlog->description->content ?>
        </div>

        <div class="lainnya">
          <div class="kategori-bottom">
            <p>artikel blog arsimetris djaja lainnya</p>
          </div>
          <hr>
          <div class="blog-box-container pb-5">
            <div class="row">

            <?php foreach ($dataBlogs->getData() as $key => $value): ?>
            <div class="col-md-20">
              <div class="blog-box-container pb-5">
                <a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id)); ?>">
                  <img class="img w-100" src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(342,235, '/images/blog/'. $value->image, array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="">
                </a>
                <div class="kategori-blog pt-4">
                  <p>- <?php echo $res_product[$value->topik_id] ?></p>
                </div>
                <div class="title-blog">
                  <a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id)); ?>">
                  <h1><?php echo $value->description->title ?></h1>
                  </a>
                </div>
                <div class="baca-selanjutnya pt-2">
                  <p><a href="<?php echo CHtml::normalizeUrl(array('/blog/detail', 'id'=> $value->id)); ?>">BACA ARTIKEL</a></p>
                </div>
              </div>
            </div>
          <?php endforeach ?>

            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>
*/ ?>