<?php
$session=new CHttpSession;
$session->open();
$login_member = $session['login_member'];
?>
<section class="default_sc top_inside_pg_default">
  <div class="out_table">
    <div class="in_table">
      <div class="prelatife container">
        <div class="py-4"></div>
        <h1 class="sub_titlepage text-center">Daftar Inkuiri</h1>
        <div class="clear"></div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
</section>

<section class="default_sc insides_middleProducts back-white">
  <div class="tops_filters_whitProduct_top">
    <div class="prelatife container">
      <div class="row default">
        <div class="col-md-30">
          <div class="breadcrumbs">

            <nav aria-label="breadcrumb">
              <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?php echo CHtml::normalizeUrl(array('/home/index')); ?>">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Daftar Inkuiri</li>
              </ol>
            </nav>

            <div class="clear"></div>
          </div>
          <!-- end pagination products -->
        </div>
        <div class="col-md-30">&nbsp;</div>
      </div>
      <div class="clear"></div>
    </div>
  </div>
  <!-- end filter product top -->

  <div class="prelatife container">
    <div class="outer-cont-carts"> 
        <div class="clear height-30"></div>
            <div class="row">
                <div class="col-md-60">
                    <div class="left-conts-tabl-cart content-text">
                        
                        <div id="cart-shop">

                        <div class="table-responsive">
                          <table class="table table-hover shopcart">
                              <thead>
                                  <tr>
                                      <td style="width: 51%;">ITEM</td>
                                      <td style="width: 24%;">ORDER DETAIL</td>
                                      <td>PRICE</td>
                                      <td>&nbsp;</td>
                                  </tr>
                              </thead>
                              <tbody>
                              <?php $total = 0 ?>
                              <?php $weight = 0 ?>
                              <?php foreach ($data as $key => $value): ?>
                              <?php
                                      if ($value['option'] != '') {
                                          $option = PrdProductAttributes::model()->find('id_str = :id_str', array(':id_str'=>$value['option']));
                                          $value['price'] = $option->price;
                                      }
                                        $product = PrdProduct::model()->findByPk($value['id']);
                                        $weightItem = $product->berat;
                              ?>
                              <tr>
                                  <td>
                                      <div class="left pic">
                                          <img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(70,100, '/images/product/'.$value['image'] , array('method' => 'resize', 'quality' => '90')) ?>" alt="">
                                      </div>
                                      <div class="left nm-descr margin-left-20">
                                          <span class="name"><?php echo $value['name'] ?></span> <div class="clear height-3"></div>
                                          <span class="cat"><?php echo ViewCategory::model()->find('id = :id', array(':id'=>$product->category_id))->name ?></span>
                                      </div>
                                  </td>
                                  <td>
                                  <form action="<?php echo CHtml::normalizeUrl(array('/product/edit')); ?>" method="post">
                                    <?php if ($value['option'] != ''): ?>
                                    <?php echo $option->attribute ?> <div class="clear height-5"></div>
                                    <input type="hidden" value="<?php echo $value['option'] ?>" name="option">
                                    <?php endif ?>
                                    <?php if ($value['optional']['box'] != ''): ?>
                                    With box + <?php echo Cart::money($value['optional']['box']) ?> <div class="clear height-5"></div>
                                    <?php
                                    $value['price'] = $value['optional']['box'] + $value['price'];
                                    ?>
                                    <?php endif ?>
                                  QTY &nbsp;&nbsp;&nbsp;&nbsp; <?php echo $value['qty'] ?>
                                  <input type="hidden" value="<?php echo $value['id'] ?>" name="id">
                                  <?php if (count($value['optional']) > 0 AND $value['optional'] != ''): ?>
                                      <?php foreach ($value['optional'] as $k => $v): ?>
                                      <input type="hidden" value="<?php echo $v ?>" name="option[<?php echo $k ?>]">
                                      <?php endforeach ?>
                                  <?php endif ?>
                                  </form>
                                  </td>
                                  <td>
                                  <span class="price"><?php echo Cart::money($subTotal = $value['price']*$value['qty']) ?></span>
                                  </td>
                                  <td>
                                      
                                  </td>
                              </tr>
                              <?php $total = $total + $subTotal ?>
                              <?php $weight = ($weightItem*$value['qty']) + $weight ?>
                              <?php endforeach ?>
                              <tr class="sub_total">
                                  <td>&nbsp;</td>
                                  <td class="text-right"><span class="totl">SUBTOTAL</span></td>
                                  <td><span class="price"><?php echo Cart::money($total) ?></span></td>
                                  <td>&nbsp;</td>
                              </tr>
                              </tbody>
                          </table>
                      </div>
                        
                        <!-- start detail information -->
                        <div class="clear height-20"></div>
                        <div class="boxs_fill_information_order">
<?php $form = $this->beginWidget('bootstrap.widgets.TbActiveForm', array(
    'id'=>'shipping-form',
    'type'=>'horizontal',
    //'htmlOptions'=>array('class'=>'well'),
  'enableClientValidation'=>false,
  'clientOptions'=>array(
    'validateOnSubmit'=>false,
  ),
  'htmlOptions' => array(
    'class'=>''
  ),
)); ?>
            <?php echo $form->errorSummary($model, '&nbsp; <br><b>Please fix this error</b>', '&nbsp;',array('class'=>'alert-danger text-center')); ?>
            <?php if(Yii::app()->user->hasFlash('success')): ?>
                <?php $this->widget('bootstrap.widgets.TbAlert', array(
                    'alerts'=>array('success'),
                )); ?>
            <?php endif; ?>

                            <div class="daftar-baru">
                                <div class="height-20"></div>
                                <h3>Lengkapi Informasi data anda</h3>
                                <div class="basic-information">
                                <div class="height-20"></div>
                                <div class="row">
                                    <div class="col-md-30 col-sm-30">

                                            <div class="form-group">
                                                <label class="col-sm-20 control-label required" for="OrOrder_shipping_first_name">First Name <span class="required">*</span></label>                                                 <div class="col-sm-60">
                                                <?php echo $form->textField($model, 'shipping_first_name', array('class'=>'form-control')); ?>                                                 </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-20 control-label required" for="OrOrder_shipping_last_name">Last Name <span class="required">*</span></label>                                                   <div class="col-sm-60">
                                                <?php echo $form->textField($model, 'shipping_last_name', array('class'=>'form-control')); ?>
                                                                                                   </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-20 control-label required" for="OrOrder_phone">Phone <span class="required">*</span></label>                                                    <div class="col-sm-60">
                                                <?php echo $form->textField($model, 'phone', array('class'=>'form-control')); ?>
                                                                                                    </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-20 control-label required" for="OrOrder_shipping_email">Email <span class="required">*</span></label>                                                 <div class="col-sm-60">
                                                <?php echo $form->textField($model, 'email', array('class'=>'form-control')); ?>
                                                                                                    </div>
                                            </div>

                                             <div class="form-group">
                                                <label class="col-sm-20 control-label required" for="OrOrder_shipping_address">Address <span class="required">*</span></label>                                                 
                                                <div class="col-sm-60">
                                                    <?php echo $form->textArea($model, 'shipping_address_1', array('class'=>'form-control')); ?>
                                                </div>
                                            </div>

                                    </div>
                                    <div class="col-md-30 col-sm-30">
                                             <div class="form-group">
                                                <label class="col-sm-20 control-label required" for="OrOrder_shipping_company">Company <span class="required">*</span></label>                                                 <div class="col-sm-60">
                                                <?php echo $form->textField($model, 'shipping_company', array('class'=>'form-control')); ?>
                                                </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-20 control-label required" for="OrOrder_shipping_city">City <span class="required">*</span></label>                                                 <div class="col-sm-60">
                                                <?php echo $form->textField($model, 'shipping_city', array('class'=>'form-control')); ?>
                                                                                                  </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-20 control-label required" for="OrOrder_shipping_postcode">Postcode <span class="required">*</span></label>                                                 <div class="col-sm-60">
                                                <?php echo $form->textField($model, 'shipping_postcode', array('class'=>'form-control')); ?>
                                                                                                 </div>
                                            </div>

                                            <div class="form-group">
                                                <label class="col-sm-20 control-label required" for="OrOrder_shipping_zone">Provinsi <span class="required">*</span></label>                                                 <div class="col-sm-60">
                                                <?php echo $form->dropDownList($model, 'shipping_zone',CHtml::listData(City::model()->findAll('1 GROUP BY province_id'),'province_id', 'province'), array('class'=>'form-control', 'empty'=>'Select State')) ?>                                                   </div>
                                            </div>
                                            <div class="form-group">
                                                <label class="col-sm-20 control-label required" for="OrOrder_shipping_note">Note <span class="required">*</span></label>                                                 
                                                <div class="col-sm-60">
                                                    <?php echo $form->textArea($model, 'comment', array('class'=>'form-control')); ?>
                                                </div>
                                            </div>
                                    </div>
                                </div>
                                </div>
                                <div class="clear"></div>
                            </div>

                            <div class="height-10"></div>
                        <button type="submit" class="btn btn-primary">Submit</button>

<?php $this->endWidget(); ?>
                        <div class="clear"></div>
                        </div>
                        <!-- end detail information -->
                                                
                        <div class="clear"></div>
                        </div>
                        <!-- end testing html -->
                        
                        <?php /*
                        <div id="cart-shop" style="display:none;">
                        <?php if (count($data)>0): ?>
                        <div class="table-responsive">
                            <table class="table table-hover shopcart">
                                <thead>
                                    <tr>
                                        <td>ITEM</td>
                                        <td style="width: 24%;">ORDER DETAIL</td>
                                        <td style="width: 20%;">PRICE</td>
                                        <td style="width: 3%;">&nbsp;</td>
                                    </tr>
                                </thead>
                                <tbody>
                                <?php $total = 0 ?>
                                <?php $weight = 0 ?>
                                <?php foreach ($data as $key => $value): ?>
                                <?php
                                        if ($value['option'] != '') {
                                            $option = PrdProductAttributes::model()->find('id_str = :id_str', array(':id_str'=>$value['option']));
                                            $value['price'] = $option->price;
                                        }
                                        $product = PrdProduct::model()->findByPk($value['id']);
                                        $weightItem = $product->berat;
                                ?>
                                <tr>
                                    <td>
                                        <div class="left pic">
                                            <img src="<?php echo Yii::app()->baseUrl.ImageHelper::thumb(70,100, '/images/product/'.$value['image'] , array('method' => 'resize', 'quality' => '90')) ?>" alt="">
                                        </div>
                                        <div class="left nm-descr margin-left-20">
                                            <span class="name"><?php echo $value['name'] ?></span> <div class="clear height-3"></div>
                                            <span class="cat"><?php echo ViewCategory::model()->find('id = :id', array(':id'=>$product->category_id))->name ?></span>
                                        </div>
                                    </td>
                                    <td>
                                    <form action="<?php echo CHtml::normalizeUrl(array('/product/edit')); ?>" method="post">
                                    <?php if ($value['option'] != ''): ?>
                                    <?php echo $option->attribute ?> <div class="clear height-5"></div>
                                    <input type="hidden" value="<?php echo $value['option'] ?>" name="option">
                                    <?php endif ?>
                                    <?php if ($value['optional']['box'] != ''): ?>
                                    With box + <?php echo Cart::money($value['optional']['box']) ?> <div class="clear height-5"></div>
                                    <?php
                                    $value['price'] = $value['optional']['box'] + $value['price'];
                                    ?>
                                    <?php endif ?>
                                    QTY &nbsp;&nbsp;&nbsp;&nbsp;<input type="number" class="tranparant-back select_qty" name="qty" value="<?php echo $value['qty'] ?>">
                                    <button type="submit" class="btn-edit-cart"><i class="fa fa-refresh"></i></button>
                                    <input type="hidden" value="<?php echo $value['id'] ?>" name="id">
                                    <?php if (count($value['optional']) > 0 AND $value['optional'] != ''): ?>
                                        <?php foreach ($value['optional'] as $k => $v): ?>
                                        <input type="hidden" value="<?php echo $v ?>" name="optional[<?php echo $k ?>]">
                                        <?php endforeach ?>
                                    <?php endif ?>
                                    </form>
                                    </td>
                                    <td>
                                    <span class="price"><?php echo Cart::money($subTotal = $value['price']*$value['qty']) ?></span>
                                    </td>
                                    <td>
                                        <a href="#" class="btn back-btn-primary-blue btn-delete-cart"> <i class="fa fa-trash"></i> </a>
                                    </td>
                                </tr>
                                <?php $total = $total + $subTotal ?>
                                <?php $weight = ($weightItem*$value['qty']) + $weight ?>
                                <?php endforeach ?>
                                <tr class="sub_total">
                                    <td>&nbsp;</td>
                                    <td class="text-right"><span class="totl">SUBTOTAL</span></td>
                                    <td><span class="price"><?php echo Cart::money($total) ?></span></td>
                                    <td>&nbsp;</td>
                                </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="text-right fright">
                            <a href="<?php echo CHtml::normalizeUrl(array('shipping')); ?>" class="btn btn-primary">NEXT</a>
                        </div> 
                        <a href="<?php echo CHtml::normalizeUrl(array('/product/index')); ?>" class="btn btn-default">Back to Product</a>
                        <?php else: ?>
                        <h3>Shopping cart is empty</h3>
                        <?php endif; ?>
                        
                        <div class="clear"></div>
                        </div>
                        */ ?>
                       
                    </div>

                </div>
                <!-- end left content -->
            </div>

        <div class="clear height-50"></div><div class="height-20"></div>
            <div class="clear"></div>
        </div>

    <div class="clear"></div>
  </div>
</section>

<script type="text/javascript">
function fill_data_payment () {
  if($('#payment_check:checked').val()==1){
    $('#OrOrder_payment_first_name').val($('#OrOrder_shipping_first_name').val());
    $('#OrOrder_payment_last_name').val($('#OrOrder_shipping_last_name').val());
    $('#OrOrder_payment_address_1').val($('#OrOrder_shipping_address_1').val());
    $('#OrOrder_payment_city').val($('#OrOrder_shipping_city').val());
    $('#OrOrder_payment_postcode').val($('#OrOrder_shipping_postcode').val());
    $('#OrOrder_payment_zone').val($('#OrOrder_shipping_zone').val());
  }else{
    $('#OrOrder_payment_first_name').val('');
    $('#OrOrder_payment_last_name').val('');
    $('#OrOrder_payment_address_1').val('');
    $('#OrOrder_payment_city').val('');
    $('#OrOrder_payment_postcode').val('');
    $('#OrOrder_payment_zone').val('');
  }
}
$('#payment_check').click(function(){
  fill_data_payment();
})

// function fill_data_shipping () {
//  if($('#shipping_check:checked').val()==1){
//    $('#OrOrder_shipping_first_name').val('<?php echo $user->first_name ?>');
//    $('#OrOrder_shipping_last_name').val('<?php echo $user->last_name ?>');
//    $('#OrOrder_shipping_address_1').val('<?php echo $user->address ?>');
//    $('#OrOrder_shipping_city').val('<?php echo $user->city ?>');
//    $('#OrOrder_shipping_postcode').val('<?php echo $user->postcode ?>');
//    $('#OrOrder_shipping_zone').val('<?php echo $user->province ?>');
//    if ($('#OrOrder_shipping_zone').val() == 'Western Australia') {
//      $('#shipping_zone_div').show();
//      $('#shipping_zone_div2').hide();
//    }else{
//      $('#shipping_zone_div').hide();
//      $('#shipping_zone_div2').show();
//    };
//  }else{
//    $('#OrOrder_shipping_first_name').val('');
//    $('#OrOrder_shipping_last_name').val('');
//    $('#OrOrder_shipping_address_1').val('');
//    $('#OrOrder_shipping_city').val('');
//    $('#OrOrder_shipping_postcode').val('');
//    $('#OrOrder_shipping_zone').val('');
//    if ($('#OrOrder_shipping_zone').val() == 'Western Australia') {
//      $('#shipping_zone_div').show();
//      $('#shipping_zone_div2').hide();
//    }else{
//      $('#shipping_zone_div').hide();
//      $('#shipping_zone_div2').show();
//    };
//  }
// }
// $('#shipping_check').click(function(){
//  fill_data_shipping();
// })

<?php if ( ! isset($_POST['OrOrder'])) { ?>
// fill_data_payment();
// fill_data_shipping();
<?php }; ?>

// $('#OrOrder_shipping_zone').change(function() {
//  if ($(this).val() == 'Western Australia') {
//    $('#shipping_zone_div').show();
//    $('#shipping_zone_div2').hide();
//  }else{
//    $('#shipping_zone_div').hide();
//    $('#shipping_zone_div2').show();
//  };
// })
// $('#shipping_zone_div').hide();
// $('#shipping_zone_div2').hide();
// if ($('#OrOrder_shipping_zone').val() == 'Western Australia') {
//  $('#shipping_zone_div').show();
//  $('#shipping_zone_div2').hide();
// }else if($('#OrOrder_shipping_zone').val() == null){
//  $('#shipping_zone_div').hide();
//  $('#shipping_zone_div2').hide();
// }else{
//  $('#shipping_zone_div').hide();
//  $('#shipping_zone_div2').show();
// };
// function shipping_area () {
//  var value = $(".OrOrder_shipping_area:checked").attr('value');
//  if($("#OrOrder_express_ship").is(':checked'))
//      var check = 1;
//  else
//      var check = 0;
//  // alert(check);
//  $.ajax({
//    url: '<?php echo CHtml::normalizeUrl(array('getshippingprice')); ?>',
//    data: 'shipping_area=' + value + '&check=' + check,
//    dataType: 'html',
//    type: 'post',
//    success: function(msg){
//      $('.shipping_price_price').html(msg);
//    },
//    error: function(msg){
//      alert('sending data error, cek your connection');
//      console.log(msg);
//    }
//  });
// }
//  $('.OrOrder_shipping_area').click(function() {
//    shipping_area();
//  });

  function formatMoney(n ,c, d, t){
    var c = isNaN(c = Math.abs(c)) ? 2 : c, 
        d = d == undefined ? "." : d, 
        t = t == undefined ? "," : t, 
        s = n < 0 ? "-" : "", 
        i = parseInt(n = Math.abs(+n || 0).toFixed(c)) + "", 
        j = (j = i.length) > 3 ? j % 3 : 0;
       return s + (j ? i.substr(0, j) + t : "") + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : "");
    };
  // $("#Order_delivery_package").live('change',function(){
 //        total = parseInt($('#total').val());
  //  var harganya = 0;
  //  for (i=0; i < hiddenArray.length ; i++) { 
  //    if(hiddenArray[i].service_code==$(this).val()){
  //      harganya = hiddenArray[i].value*1;
  //    }
  //  }
    
 //        $('#shipping').html('IDR '+formatMoney(harganya, 0, '.', ',') + '.- ');
 //        $('#total_akhir').html('IDR '+formatMoney(total + harganya, 0, '.', ',') + '.- ');
 //        $('#Order_delivery_price').val(harganya);
  //  // $('#view_ongkir').html("Rp. "+harganya.formatMoney(2,'.',','));
  //  // $('#ContactForm_ongkir').val(harganya);
  //  // hitung();
  // });
  // $('#Order_delivery_from').change(function() {

  //  $.post( "<?php echo CHtml::normalizeUrl(array('cart/getTo')); ?>", { from: $(this).val() }, function( data ) {
  //    $('#Order_delivery_to').html(data)
  //     });
  // })

</script>





