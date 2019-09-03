<!-- start form c -->
<div class="box-form tl-contact-form">
  <div class="clear height-50"></div>
  <div class="">
    <div class="clear"></div>
  <?php $form=$this->beginWidget('bootstrap.widgets.TbActiveForm',array(
                  'type'=>'',
                  'enableAjaxValidation'=>false,
                  'clientOptions'=>array(
                      'validateOnSubmit'=>false,
                  ),
                  'htmlOptions' => array(
                      'enctype' => 'multipart/form-data',
                  ),
              )); ?>
   <?php echo $form->errorSummary($model, '', '', array('class'=>'alert alert-danger')); ?>
    <?php if(Yii::app()->user->hasFlash('success')): ?>
        <?php $this->widget('bootstrap.widgets.TbAlert', array(
            'alerts'=>array('success'),
        )); ?>
    <?php endif; ?>

    <div class="row default">
      <div class="col col-60">
        <div class="form-group">
            <label for="exampleInputCompany">Nama Perusahaan</label>
            <?php echo $form->textField($model, 'company', array('class'=>'form-control')); ?>
        </div>
      </div>
      <div class="col col-60">
        <div class="form-group">
            <label for="exampleInputName">Nama</label>
            <?php echo $form->textField($model, 'name', array('class'=>'form-control')); ?>
        </div>
      </div>
      <div class="col col-60">
        <div class="form-group">
            <label for="exampleInputPhone">Telepon</label>
            <?php echo $form->textField($model, 'phone', array('class'=>'form-control')); ?>
        </div>
      </div>
      <div class="col col-60">        
        <div class="form-group">
            <label for="exampleInputEmail">Email</label>
            <?php echo $form->textField($model, 'email', array('class'=>'form-control')); ?>
        </div>
      </div>
    </div>

    <div class="row default">
      <div class="col-md-60 col-sm-60 col-lg-60">
        <div class="form-group">
            <label for="exampleInputMessage">Pesan</label> 
            <div class="clear"></div>
            <?php echo $form->textArea($model, 'body', array('class'=>'form-control', 'rows'=>3)); ?>
        </div>
      </div>
      <div class="clear"></div>

      <div class="col-md-60 col-sm-60 col-lg-60">
        <div class="row default">
          <div class="col col">
            <div class="fright-inpd">
              <div class="form-group mb-0">
                <div class="float-left">
                  <div class="g-recaptcha" data-sitekey="6LfaqgkUAAAAAJEMAlr1K3EE2INzUfWKjxzaWI3c"></div>
                </div>
                <div class="clear"></div>
              </div>
            </div>
          </div>
          <div class="col col">
            <div class="float-right">
              <button type="submit" class="btn btn-info btns-submit-bt">SUBMIT</button>
            </div>
          </div>
        </div>

      </div>
    </div>
  <?php $this->endWidget(); ?>

    <div class="clear"></div>
  </div>

  <div class="clear"></div>
</div>

<div class="clear"></div>
<!-- end form c -->
<script src='https://www.google.com/recaptcha/api.js'></script>