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

<section class="blog-1 outer-content-page back-cream blog-page">
  <div class="prelatife container">
      <div class="py-5"></div>
      <div class="row small-content text-center">
        <div class="col-md-8"></div>
        <div class="col-md-44">
          <ul class="list-inline filters_top">
            <?php 
            $res_product = array(
              0=>'All',
              1=>'ARTICLE',
              2=>'EVENTS',
              );
            ?>
            <?php foreach ($res_product as $key => $value): ?>
            <li class="list-inline-item <?php if ($_GET['topik'] == '' && $key == 0): ?>active<?php endif ?> <?php if ($_GET['topik'] == $key): ?>active<?php endif ?>">
                <a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'topik'=> ($key != 0)? $key :'' )); ?>"><?php echo $value ?></a> 
            </li>
            <?php endforeach ?>
          </ul>
        </div>
        <div class="col-md-8 text-right">
          <!-- <nav aria-label="...">
            <ul class="pagination pagination-sm">
              <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1">1</a>
              </li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
            </ul>
          </nav> -->
           <?php $this->widget('CLinkPager', array(
                'pages' => $dataBlog->getPagination(),
                'header'=>'',
                // 'maxButtonCount'=>5,
                'htmlOptions'=> array('class'=>'pagination pagination-sm'),
            )) ?>
        </div>
      </div>

      <div class="py-4"></div>

      <div class="sub-section2 outers_list_blog">
        <div class="row">

          <?php if ($dataBlog->getTotalItemCount() > 0): ?>
          <?php foreach ($dataBlog->getData() as $key => $value): ?>
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
          <?php else: ?>
            <div class="text-center">
            <h3>Sorry is empty Data</h3>
            </div>
          <?php endif ?>
        </div>
        <div class="py-2"></div>

        <div class="clearfix"></div>
      </div>

      <div class="py-5"></div>

    <div class="clear clearfix"></div>
  </div>
</section>



<?php
/*
<section class="blog-sec-1">
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
        <div class="title-blog-right">
          <div class="title-left">
            <p>Menampilkan: <span>Semua Artikel (<?php echo $dataBlog->getTotalItemCount(); ?> artikel)</span></p>
          </div>
          <div class="title-right">
            <p></p>
          </div>
          <hr>
        </div>
        <div class="row box-blog pt-3">
          <?php if ($dataBlog->getTotalItemCount() > 0): ?>
          <?php foreach ($dataBlog->getData() as $key => $value): ?>
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
          <?php endif ?>

        </div>
      </div>
    </div>
  </div>
</section>
*/
?>