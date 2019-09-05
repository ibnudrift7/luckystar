<section class="cover-prod">
    <div class="prelative container3">
        <div class="row">
            <div class="col-md-60">
                <div class="title">
                    <?php if (isset($_GET['category'])): ?>
                    <h3><?php echo ucwords( strtolower($strCategory->description->name) ); ?> Collection</h3>
                    <?php else: ?>
                    <h3>Products Collection</h3>
                    <?php endif ?>
                    <p>By Lucky Star Plastics</p>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="prodhw-sec-1">
    <div class="prelative container">
    <div class="atas-sendiri">
      <div class="row">
        <div class="col-md-30">
          <div class="tampilkan">
            <p>Menampilkan <?php echo $product->getTotalItemCount(); ?> produk</p>
          </div>
        </div>
        <div class="col-md-30">
          <div class="urutkan">
            <p>Urutkan berdasar  
              <a href="<?php echo CHtml::normalizeUrl(array('/product/index', 'order'=>'new-old')); ?>">Terbaru</a>  |  <a href="<?php echo CHtml::normalizeUrl(array('/product/index', 'order'=> 'old-new')); ?>">Terlama</a>  |  <a href="<?php echo CHtml::normalizeUrl(array('/product/index', 'order'=> 'a-z')); ?>">A-Z</a>
            </p>
          </div>
        </div>
      </div>
    </div>
    
    <?php if (isset($_GET['q']) && $_GET['q'] != ''): ?>
    <div class="text-center py-2 pb-5">
      <p>Search Products: "<?php echo $_GET['q'] ?>"</p>
    </div>
    <?php endif ?>
      <div class="py-3"></div>
      <div class="row justify-content-center">
      <?php foreach($product->getData() as $key => $value): ?>
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

    <div class="lihat-semua">
      <a href="<?php echo CHtml::normalizeUrl(array('/product/index')); ?>">lihat semua produk</a>
    </div>
    </div>
</section>

<?php
$mod_kategori = [
    1 => [
        'gambar' => 'furniture.jpg',
        'judul' => 'Furniture',
    ],
    [
        'gambar' => 'houseware.jpg',
        'judul' => 'Houseware',
    ],
    [
        'gambar' => 'tableware.jpg',
        'judul' => 'Tableware',
    ],
    [
        'gambar' => 'container.jpg',
        'judul' => 'Container',
    ]
];

$criteria = new CDbCriteria;
$criteria->with = array('description');
$criteria->addCondition('t.type = :type');
$criteria->params[':type'] = 'category';
$criteria->order = 't.sort ASC';
$criteria->limit = 4;

$mod_kategori = PrdCategory::model()->findAll($criteria);
?>
<section class="home-sec-1 outers_product_indexs">
  <div class="prelative container">
    <div class="row">
      <div class="title-top">
        <p>Kategori Favorit Produk Plastik Lucky Star</p>
      </div>
    </div>
    <div class="row">
      <?php foreach($mod_kategori as $key => $value): ?>
        <div class="col-md-15 col-30">
          <div class="image">
            <a href="<?php echo CHtml::normalizeUrl(array('/product/index', 'category'=> $value->id)); ?>">
            <img class="w-100 img img-fluid" src="<?php echo Yii::app()->baseUrl.'/images/category/'. $value->image; ?>" alt="">
            </a>
          </div>
          <div class="title">
            <p><a href="<?php echo CHtml::normalizeUrl(array('/product/index', 'category'=> $value->id)); ?>"><?php echo $value->description->name ?></a></p>
          </div>
          <div class="lihat_kat">
            <a href="<?php echo CHtml::normalizeUrl(array('/product/index', 'category'=> $value->id)); ?>">lihat kategori</a>
          </div>
        </div>
      <?php endforeach ?>
    </div>
  </div>
</section>




<?php /*
<section class="cover-produk">
  <div class="prelative container py-5">
    <div class="container2 mx-auto py-5">
      <div class="row py-5">
        <div class="col-md-60 text-center pt-3">
          <button class="produk mx-auto">Produk Bahan Bangunan Kami</button>
        </div>
        <div class="col-md-60 text-center pt-4">
          <h2 class="mx-auto">Aneka merk yang tergabung di Arsimetris Djaja dan peluang bekerjasama / keagenan.</h2>  
        </div>
      </div>
    </div>
  </div>
</section>

<section class="produk-sec-1">
  <div class="prelative container">
    <div class="row">
      <div class="col-md-15">
        <div class="title-produk">
          <div class="title">
            <p>Kategori produk arsimetris djaja</p>
            <hr>
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
            <ul>
              <?php foreach ($dCategory as $key => $value): ?>
              <li <?php if ($value->id ==  $_GET['category']): ?>class="active"<?php endif ?>><a href="<?php echo CHtml::normalizeUrl(array('/product/index', 'category'=> $value->id)); ?>"><?php echo ucwords(strtolower( $value->description->name )); ?></a></li>
              <?php endforeach ?>
            </ul>
          </div>
        </div>
      </div>
      <div class="col-md-45">
        <div class="title-produk-right">
          <div class="title-left">
            <p>Menampilkan: <span>Semua Produk (<?php echo $product->getTotalItemCount(); ?> items)</span></p>
          </div>
          <div class="title-right">
            <p></p>
          </div>
          <hr>
        </div>

        <div class="row box-produk pt-3">

          <?php if ($product->getTotalItemCount() > 0): ?>
          <?php foreach ($product->getData() as $key => $value): ?>
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

         <div class="pagin-products page text-center pagination">
               <?php 
               $this->widget('CLinkPager', array(
                  'pages' => $product->getPagination(),
                  'header'=>'',
                  'footer'=>'',
                  'lastPageCssClass' => 'd-none',
                  'firstPageCssClass' => 'd-none',
                  'nextPageCssClass' => 'd-none',
                  'previousPageCssClass' => 'd-none',
                  'itemCount'=> $product->totalItemCount,
                  'htmlOptions'=>array('class'=>'pagination pagination-sm'),
                  'selectedPageCssClass'=>'active',
              ));
           ?>
          </div>
          <div class="py-4"></div>

      </div>
    </div>
  </div>
</section>
<script type="text/javascript">
  $(document).ready(function(){

    $('.pagin-products ul.pagination li').addClass('page-item');
    $('.pagin-products ul.pagination li.page-item a').addClass('page-link');

  });
</script>

*/
?>