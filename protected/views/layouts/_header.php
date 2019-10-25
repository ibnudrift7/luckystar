<?php 
    $e_activemenu = $this->action->id;
    $controllers_ac = $this->id;
    $active_menu_pg = $controllers_ac.'/'.$e_activemenu;
?>
<header class="header <?php if ($active_menu_pg != 'home/index'): ?>insidepage<?php endif ?>">
<div class="d-none d-sm-none d-md-block d-lg-block">
      <div class="prelative header-cont pt-3">
          <div class="row">
              <div class="col-md-18">
                <div class="logo-nheader">
                  <a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">
                      <img src="<?php echo $this->assetBaseurl; ?>logo-foot.png" alt="">
                  </a>
                  <div class="clear"></div>
                </div>
              </div>
			  <div class="col-md-42 float-right">
				  <div class="row text-right">
					  <div class="col-md-42 pt-2">
						  <ul class="menu-atas">
							  <li><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">HOME</a></li>
							  <li><a href="<?php echo CHtml::normalizeUrl(array('/home/about')); ?>">TENTANG KAMI</a></li>
							  <li><a href="<?php echo CHtml::normalizeUrl(array('/home/mitra')); ?>">JADI MITRA KAMI</a></li>
							  <li><a href="<?php echo CHtml::normalizeUrl(array('/blog/index')); ?>">BLOG</a></li>
							  <li><a href="<?php echo CHtml::normalizeUrl(array('/home/contact')); ?>">HUBUNGI KAMI</a></li>
						  </ul>
					  </div>
					  <div class="col-md-18">
						  <div class="menu-icon">

							  <div class="sosmed">
								  <img src="<?php echo $this->assetBaseurl; ?>new/wa-atas.png" alt="">
							  </div>
							  <div class="sosmed">
								  <img src="<?php echo $this->assetBaseurl; ?>new/fb-atas.png" alt="">
							  </div>
							  <div class="sosmed">
								  <img src="<?php echo $this->assetBaseurl; ?>new/ig-atas.png" alt="">
							  </div>
							  <div class="hr-ver"></div>
							  <div class="sosmed">
								  <img src="<?php echo $this->assetBaseurl; ?>basket-atas.png" alt="">
							  </div>
							  <div class="sosmed kanan prelatife">
								  <div class="bagss_ntop"><a href="<?php echo CHtml::normalizeUrl(array('/cart/shop')); ?>"><span><?php echo Cart::getTotalCartItem() ?></span></a></div>
							  </div>
						  </div>
					  </div>
				  </div>
			  </div>
          </div>
      </div>
      <?php
        $criteria = new CDbCriteria;
        $criteria->with = array('description');
        $criteria->addCondition('t.type = :type');
        $criteria->params[':type'] = 'category';
        $criteria->order = 't.sort ASC';
        $criteria->limit = 11;

        $mod_kategori = PrdCategory::model()->findAll($criteria);
      ?>
      <div class="header-bottom">
          <div class="prelative header-cont">
              <div class="row">
                  <div class="col-md-40">
                      <div class="grant py-3">
                          <ul class="bawah-head">
                          <?php foreach($mod_kategori as $key => $value): ?>
                            <li>
                              <p><a href="<?php echo CHtml::normalizeUrl(array('/product/index', 'category'=> $value->id )); ?>"><?php echo $value->description->name; ?></a></p>
                            </li>
                          <?php endforeach ?>
                          </ul>
                      </div>
                  </div>
                  <div class="col-md-20 text-right">
                      <div class="searchs_boxprd pt-1 float-right">
                          <form class="form-inline" method="get" action="<?php echo CHtml::normalizeUrl(array('/product/index')); ?>">
                            <div class="form-group">
                              <label for="staticEmail2 d-inline-block">Cari produk</label>
                              <input type="text" name="q" class="form-control-plaintext d-inline-block" id="staticEmail2" value="">
                            </div>
                            <button type="submit" class="btn btn-link"><i class="fa fa-search"></i></button>
                          </form>
                      </div>
                  </div>
              </div>
          </div>
      </div>
    </div>
    <div class="d-block d-sm-block d-md-none">
      <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <a class="navbar-brand" href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">
          <img src="<?php echo $this->assetBaseurl ?>logo-foot.png" alt="" class="img-fluid img">
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav mr-auto">
            <li class="nav-item"><a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">Home</a></li>
            <li class="nav-item"><a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/product/index')); ?>">Produk</a></li>
            <li class="nav-item"><a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/about')); ?>">Profil</a></li>
            <li class="nav-item"><a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/mitra')); ?>">Jadi Mitra Kami</a></li>
            <li class="nav-item"><a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/blog/index')); ?>">Blog</a></li>
            <li class="nav-item"><a class="nav-link" href="<?php echo CHtml::normalizeUrl(array('/home/contact')); ?>">Hubungi Kami</a></li>
          </ul>
        </div>
      </nav>
    </div>
</header>

<section id="myAffix" class="header-affixs affix-top">
  <div class="clear height-15"></div>
  <div class="prelatife container">
    <div class="row">
      <div class="col-md-15 col-sm-15">
        <div class="lgo_web_headrs_wb">
          <a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">
            <img src="<?php echo $this->assetBaseurl; ?>logo-foot.png" alt="" class="img img-fluid">
          </a>
        </div>
      </div>
      <div class="col-md-45 col-sm-45">
        <div class="text-right"> 
          <div class="menu-taffix">
            <ul class="list-inline d-inline">
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">Home</a></li>
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/product/index')); ?>">Produk</a></li>
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/about')); ?>">Profil</a></li>
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/mitra')); ?>">jadi Mitra Kami</a></li>
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/blog/index')); ?>">Blog</a></li>
              <li class="list-inline-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/contact')); ?>">Hubungi</a></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div class="clear"></div>
  </div>
</section>


<script type="text/javascript">
  $(document).ready(function(){
      // $('.nl_popup a').live('hover', function(){
      //     $('.popup_carts_header').fadeIn();
      // });
      // $('.popup_carts_header').live('mouseleave', function(){
      //   setTimeout(function(){ 
      //       $('.popup_carts_header').fadeOut();
      //   }, 500);
      // });
  });
</script>


<script type="text/javascript">
  $(document).ready(function(){
      // $('.nl_popup a').live('hover', function(){
      //     $('.popup_carts_header').fadeIn();
      // });
      // $('.popup_carts_header').live('mouseleave', function(){
      //   setTimeout(function(){ 
      //       $('.popup_carts_header').fadeOut();
      //   }, 500);
      // });
      $('a.closes_btn').on('click', function(){
        $('.collapsesn_viewmenu').removeClass('show');
      });
      $('.navbar-toggler').on('click', function(){
        $('.collapsesn_viewmenu').addClass('show');
      });

      var ns_height = $(window).height();
      $('.collapsesn_viewmenu').css('height', ns_height+"px");
  });
  $(function(){

// show and hide m\enu responsive
    $('a.showmenu_barresponsive').on('click', function() {
      $('.outer-blok-black-menuresponss-hides').slideToggle('slow');
      return false;
    });
    $('a.closemrespobtn').on('click', function() {
      $('.outer-blok-black-menuresponss-hides').slideUp('slow');
      return false;
        });
        
    });
</script>
<script type="text/javascript">
  $(function(){

  var sn_width = $(window).width();
  if (sn_width > 1150) {

      $(window).scroll(function(){
        var sntop1 = $(window).scrollTop();

        if(sntop1 > 115){
          // console.log(sntop1);
          $('.header-affixs').removeClass('affix-top').addClass('affix');
          // $('.header-affixs').addClass('affix');
        }else{
          $('.header-affixs.affix').removeClass('affix').addClass('affix-top');
          // $('body').css('padding-top', '0px');
        }
      });

    }

  });
</script>
