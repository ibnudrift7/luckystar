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
          <ul class="list-inline">
            <li class="list-inline-item"><a href="#">ALL</a></li>
            <li class="list-inline-item"><a href="#">ARTICLE</a></li>
            <li class="list-inline-item"><a href="#">EVENTS</a></li>
          </ul>
        </div>
        <div class="col-md-8 text-right">
          <nav aria-label="...">
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
          <?php for ($i=0; $i < 12; $i++) { ?>
          <div class="col-md-20">
            <div class="items pb-4 mb-2">
              <div class="picture"><img src="https://placehold.it/468x304" alt="" class="img img-fluid"></div>
              <div class="info pt-2">
                <div class="dates"><p>22 March 2019</p></div>
                <h6>Financial Stress - Simple Strategies to Overcome It</h6>
                <a href="<?php echo CHtml::normalizeUrl(array('/blog/d_detail')); ?>" class="mores">Read More</a>
              </div>
            </div>
          </div>
          <?php } ?>

        </div>
        <div class="clearfix"></div>
      </div>

      <div class="py-5"></div>

    <div class="clear clearfix"></div>
  </div>
</section>