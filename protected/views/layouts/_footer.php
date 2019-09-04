<?php 
    $e_activemenu = $this->action->id;
    $controllers_ac = $this->id;
    $active_menu_pg = $controllers_ac.'/'.$e_activemenu;
?>
<section class="home-sec-3 footer2 <?php if ($active_menu_pg != 'home/index'): ?>subpage<?php endif ?>">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-60">
                <div class="title">
                    <p>Dapatkan Koleksi Lengkap Produk Plastik Lucky Star</p>
                </div>
                <div class="download">
                    <a href="#"><i></i>Download Katalog</a>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="footer">
    <div class="prelative container">
        <div class="image-top"><img src="<?php echo $this->assetBaseurl; ?>logo-foot.png" alt=""></div>
        <div class="box-sosmed">
            <div class="sosmed">
                <a target="_blank" href="<?php echo str_replace(' ', '', str_replace('081', '6281', $this->setting['contact_wa'])) ?>"><img src="<?php echo $this->assetBaseurl; ?>wa-foot.png" alt=""></a>
                <p>Whatsapp</p>
            </div>
            <div class="sosmed">
                <a target="_blank" href="<?php echo $this->setting['url_instagram'] ?>"><img src="<?php echo $this->assetBaseurl; ?>ig-foot.png" alt=""></a>
                <p>Instagram</p>
            </div>
            <div class="sosmed kiri">
                <a target="_blank" href="<?php echo $this->setting['url_facebook'] ?>"><img src="<?php echo $this->assetBaseurl; ?>fb-foot.png" alt=""></a>
                <p>Facebook</p>
            </div>
        </div>
        <div class="alamat">
            <p><?php echo nl2br($this->setting['contact_content2']) ?></p>
        </div>
        <div class="email"><p>EMAIL. <?php echo $this->setting['email'] ?>  TEL. <?php echo $this->setting['contact_phone'] ?></p></div>
        <div class="open">
            <p><?php echo $this->setting['contact_opening_time'] ?></p>
        </div>
    </div>
</section>

<section class="footer-sec-2">
    <div class="prelative container">
        <div class="row">
            <div class="col-md-60">
                <div class="copy">
                    <p>Copyright &copy; <?php echo date("Y"); ?> PT. Gunung Agung Sentosa - Lucky Star Plastics. Gresik, Surabaya - East Java, Indonesia. </p>
                </div>
                <div class="by"><p>Website design by<a target="_blank" title="Website Design Surabaya" href="http://www.markdesign.net">Markdesign.</a></p></div>
            </div>
        </div>
    </div>
</section>
