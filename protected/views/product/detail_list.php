<script src="<?php echo Yii::app()->baseUrl ?>/asset/js/sweetalert/sweetalert.min.js"></script>
<link rel="stylesheet" type="text/css" href="<?php echo Yii::app()->baseUrl ?>/asset/js/sweetalert/sweetalert.css">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.css" />
<script src="https://cdn.jsdelivr.net/gh/fancyapps/fancybox@3.5.6/dist/jquery.fancybox.min.js"></script>





<section class="cover-proddet">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-60">
                <div class="content">
                    <div class="title">
                        <h4>Houseware Collection</h4>
                        <p>By Lucky Star Plastics</p>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>



<?php
$datas = unserialize($data->data);
$mod_prodisi = [
    1 => [
        'title' => 'ITEM CODE',
        'isi' => $data->kode,
    ],
    [
        'title' => 'SIZE',
        'isi' => $datas['size'],
    ],
    [
        'title' => 'MATERIAL',
        'isi' => $datas['material'],
    ],
    [
        'title' => 'DESCRIPTION',
        'isi' => $data->description->desc,
    ]
];
?>

<section class="breadcrumb-det">
    <div class="prelative container">
        <?php 
        $cat_name = $category->description->name;
        ?>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/product/index', 'category'=> $category->id)); ?>"><?php echo ucwords(strtolower($cat_name)); ?> Collection</a></li>
                <li class="breadcrumb-item active" aria-current="page"><?php echo $data->description->name; ?></li>
            </ol>
            <div class="back">
                <a href="#" onclick="window.history.back();">
                <p>Kembali</p>
                </a>
            </div>
        </nav>

        <div class="row">
            <div class="col-md-30">
                <div class="image">
                  <img class="img img-fluid w-100" src="<?php echo Yii::app()->baseUrl.'/images/product/'.$data->image; ?>" alt="">
                </div>
            </div>
            <div class="col-md-30">
                <div class="title">
                    <p><?php echo ucwords( strtolower( $data->description->name ) ) ?></p>
                </div>
                <div class="hr-garis"></div>
                <?php foreach($mod_prodisi as $key => $value): ?>
                <div class="row no-gutters">
                    <div class="col-md-17">
                        <div class="prodtit">
                            <p><?php echo $value['title'] ?></p>
                        </div>
                    </div>
                    <div class="col-md-43">
                        <div class="prodisi">
                            <p><?php echo $value['isi'] ?></p>
                        </div>
                    </div>
                </div>
                <?php endforeach ?>
            </div>
        </div>
    </div>
</section>


<?php
$mod_fav = [
    1 => [
        'gambar' => 'favorite1.jpg',
        'judul' => 'Baki Anyam Besar',
    ],
    [
        'gambar' => 'favorite2.jpg',
        'judul' => 'Baki Anyam Kecil',
    ],
    [
        'gambar' => 'favorite3.jpg',
        'judul' => 'Keranjang Anyam Bundar',
    ],
    [
        'gambar' => 'favorite4.jpg',
        'judul' => 'Keranjang Anyam Besar',
    ],
    [
        'gambar' => 'favorite5.jpg',
        'judul' => 'Pel pelan plastik',
    ],
    [
        'gambar' => 'favorite6.jpg',
        'judul' => 'Pemeras Jeruk',
    ]
];
?>

<section class="prodhw-dt">
    <div class="prelative container">
        <div class="row">
      <div class="title-top">
        <p>Kategori Favorit Produk Plastik Lucky Star</p>
      </div>
        </div>
        <div class="box-content">
            <div class="row justify-content-center">
            <?php foreach($product as $key => $value): ?>
            <div class="col-md-10 col-30">
              <div class="box-content">
                <div class="image">
                                <a href="<?php echo CHtml::normalizeUrl(array('/product/detail', 'id'=> $value->id)); ?>">
                                <img class="img img-fluid w-100" src="<?php echo Yii::app()->baseUrl.'/images/product/'.$value->image; ?>" alt="">
                                </a>
                            </div>
                <div class="judul">
                  <p><a href="<?php echo CHtml::normalizeUrl(array('/product/detail', 'id'=> $value->id)); ?>"><?php echo $value->description->name ?></a></p>
                </div>
                <div class="lihat"><a href="<?php echo CHtml::normalizeUrl(array('/product/detail', 'id'=> $value->id)); ?>">lihat produk</a></div>
              </div>
            </div>
          <?php endforeach ?>
            </div>
        </div>
    </div>
</section>

<?php
/*
<section class="produk-detail-sec-1 pt-5">
  <div class="py-5"></div>
  <div class="prelative container pt-4">
    <div class="row">
      <div class="col-md-15">
        <div class="title-produk">
          <div class="title">
            <p>Kategori produk arsimetris djaja</p>
            <hr>
            <ul>
              <?php
                $criteria = new CDbCriteria;
                $criteria->with = array('description');
                $criteria->addCondition('t.type = :type');
                $criteria->params[':type'] = 'category';
                $criteria->addCondition('description.language_id = :language_id');
                $criteria->params[':language_id'] = $this->languageID;
                $criteria->order = 'sort ASC';

                $dCategory = PrdCategory::model()->findAll($criteria);
              ?>
              <?php foreach ($dCategory as $key => $value): ?>
              <li <?php if ($value->id ==  $_GET['category']): ?>class="active"<?php endif ?>><a href="<?php echo CHtml::normalizeUrl(array('/product/index', 'category'=> $value->id)); ?>"><?php echo ucwords(strtolower( $value->description->name )); ?></a></li>
              <?php endforeach ?>

            </ul>
          </div>
        </div>
      </div>
      <div class="col-md-45 rights_det_product">
        <div class="title-produk-right">
          <div class="title-left">
            <p>HOME > Produk Bahan Bangunan Kami >  <span><?php echo $data->description->name ?></span></p>
          </div>
          <div class="title-right">
            <p></p>
          </div>
          <hr>
        </div>
        <div class="row box-produk pt-3 pb-5 py-2">
            <div class="col-md-30">
                <div class="image">
                    <img src="<?php echo $this->assetBaseurl; ?>2-produk-detail_03.jpg" class="img img-fluid" alt="">
                </div>
            </div>
            <div class="col-md-30 pl-4 ">
              <?php if(Yii::app()->user->hasFlash('success')): ?>
              <script type="text/javascript">
              swal({
                title: "<?php echo Yii::app()->user->getFlash('success') ?>",
                text: "Do you want to continue shopping?",
                type: "success",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "Yes, Continue Shopping",
                cancelButtonText: "Go to Cart",
                // closeOnConfirm: false,
                closeOnCancel: false
              },
              function(isConfirm){
                if (isConfirm) {
                  
                } else {
                  window.location.href = '<?php echo CHtml::normalizeUrl(array('/cart/shop')); ?>';
                }
              });
              </script>
              <?php endif; ?>

              <?php if(Yii::app()->user->hasFlash('danger')): ?>
                  <?php $this->widget('bootstrap.widgets.TbAlert', array(
                      'alerts'=>array('danger'),
                  )); ?>
              <?php endif; ?>

              <form action="<?php echo CHtml::normalizeUrl(array('addcart', 'category'=>$_GET['category'])); ?>" method="post">
              <input type="hidden" id="price-item" value="<?php echo $data->harga ?>">
              <input type="hidden" name="id" value="<?php echo $data->id ?>">
              <input type="hidden" name="option" class="form_size_id" value="">

                <div class="title">
                    <p><?php echo ucwords($data->description->name); ?></p>
                </div>
                <div class="kategori pt-2">
                    <p><?php echo ucwords(strtolower($category->description->name)); ?></p>
                </div>
                <hr>
                <div class="harga">
                    <p>Rp <?php echo number_format($data->harga) ?></p>
                </div>
                <hr>
                <?php 
                $datas = unserialize($data->data);
                ?>
                <div class="warna">
                    <div class="row">
                        <div class="col-md-15">
                            <p class="warna-kiri">
                                Warna
                            </p>
                        </div>
                        <div class="col-md-45">
                            <p class="warna-kanan">
                                <?php echo $datas['warna'] ?>
                            </p>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="warna">
                    <div class="row">
                        <div class="col-md-15">
                            <p class="warna-kiri">
                                Kemasan
                            </p>
                        </div>
                        <div class="col-md-45">
                            <p class="warna-kanan">
                                <?php echo $datas['kemasan'] ?>
                            </p>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="warna">
                    <div class="row">
                        <div class="col-md-15">
                            <p class="warna-kiri">
                                Kuantiti
                            </p>
                        </div>
                        <div class="col-md-5">
                            <p class="warna-kanan">
                                <input type="number" name="qty" value="1">
                            </p>
                        </div>
                        <div class="col-md-40 pl-5">
                              <button type="submit">MASUKKAN KERANJANG</button>
                        </div>
                    </div>
                </div>
                </form>
                <hr>
                <div class="warna">
                    <div class="row">
                        <div class="col-md-15">
                            <p class="warna-kiri">
                                Deskripsi
                            </p>
                        </div>
                        <div class="col-md-45">
                            <p class="warna-kanan">
                            <?php echo $data->description->desc ?>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="lainnya">
          <div class="kategori-bottom">
          <p>Produk Bahan Bangunan Kami yang lain</p>
          </div>
          <hr>

          <div class="blog-box-container pb-5">
          <div class="row">
          <?php if (count($product) > 0): ?>
            <?php foreach ($product as $key => $value): ?>
              <div class="col-md-20">
                <div class="produk-box-container pb-5">
                  <div class="frame_picture">
                    <a href="<?php echo CHtml::normalizeUrl(array('/product/detail', 'id'=> $value->id, 'category'=> isset($_GET['category']) ? $_GET['category']: '' )); ?>">
                      <img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(342,342, '/images/product/'. $value->image, array('method' => 'adaptiveResize', 'quality' => '90')) ?>" alt="" class="img img-fluid">
                    </a>
                  </div>
                  <div class="title-produk pt-4">
                    <a href="<?php echo CHtml::normalizeUrl(array('/product/detail', 'id'=> $value->id, 'category'=> isset($_GET['category']) ? $_GET['category']: '' )); ?>">
                      <h1><?php echo $value->description->name ?></h1>
                    </a>
                  </div>
                  <div class="kategori-produk">
                    <p>Hardware</p>
                  </div>
                  <div class="harga">
                    <p>Rp <?php echo number_format($value->harga) ?></p>
                  </div>
                </div>
              </div>
            <?php endforeach ?>
          <?php endif ?>

          </div>
        </div>
      </div>
    </div>
    </div>
  </div>
</section>
*/ ?>