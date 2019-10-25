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
          <?php 
          $res_product = array(
              2=>'Article',
              3=>'Events',
              );
          ?>
          <ul class="list-inline">
            <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index')); ?>">ALL</a></li>
            <?php foreach ($res_product as $key => $value): ?>
            <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index', 'topik'=> $key)); ?>"><?php echo strtoupper($value) ?></a></li>
            <?php endforeach ?>
          </ul>
        </div>
        <div class="col-md-8 text-right">
          <nav aria-label="..." class="d-none">
            <ul class="pagination pagination-sm">
              <li class="page-item disabled">
                <a class="page-link" href="#" tabindex="-1">1</a>
              </li>
              <li class="page-item"><a class="page-link" href="#">2</a></li>
              <li class="page-item"><a class="page-link" href="#">3</a></li>
            </ul>
          </nav>
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
          <?php endif ?>
          
        </div>
        <div class="clearfix"></div>
      </div>

      <div class="py-5"></div>

    <div class="clear clearfix"></div>
  </div>
</section>