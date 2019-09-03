

      <div class="footer">
        <div class="footer-inner">
          <div class="footer-content">
            <span class="bigger-120">
              <span class="blue bolder">Developer Chambi Ajata Adimer Paul</span>
              copyright &copy; 2019
            </span>

            &nbsp; &nbsp;
            <span class="action-buttons">
              <a href="https://chat.whatsapp.com/6252HaKUPrM8HhUpbHfRcK">
                <i class="ace-icon fa fa-whatsapp green bigger-150"></i>
              </a>

              <a href="https://www.facebook.com/OlimpiadasProg">
                <i class="ace-icon fa fa-facebook-square text-primary bigger-150"></i>
              </a>

              <a href="https://www.youtube.com/channel/UCjHGKDmgwx7fJJNJZnrivMw">
                <i class="ace-icon fa fa-youtube-square red bigger-150"></i>
              </a>
            </span>
          </div>
        </div>
      </div>

      <a href="#" id="btn-scroll-up" class="btn-scroll-up btn btn-sm btn-inverse">
        <i class="ace-icon fa fa-angle-double-up icon-only bigger-110"></i>
      </a>
    </div><!-- /.main-container -->

    <!-- basic scripts -->

    <!--[if !IE]> -->
    <script src="<?=base_url()?>dist/js/jquery-2.1.4.min.js"></script>

    <!-- <![endif]-->

    <!--[if IE]>
<script src="<?=base_url()?>assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
    <script type="text/javascript">
      if('ontouchstart' in document.documentElement) document.write("<script src='<?=base_url()?>dist/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
    </script>
    <script src="<?=base_url()?>dist/js/bootstrap.min.js"></script>

    <!-- page specific plugin scripts -->
    <script src="<?=base_url()?>dist/js/prettify.min.js"></script>
    <script src="<?=base_url()?>dist/js/jszip.min.js"></script>

    <script src="<?=base_url()?>dist/js/jquery.dataTables.min.js"></script>
    <script src="<?=base_url()?>dist/js/jquery.dataTables.bootstrap.min.js"></script>
    <script src="<?=base_url()?>dist/js/dataTables.buttons.min.js"></script>
    <script src="<?=base_url()?>dist/js/buttons.flash.min.js"></script>
    <script src="<?=base_url()?>dist/js/buttons.html5.min.js"></script>
    <script src="<?=base_url()?>dist/js/buttons.print.min.js"></script>
    <script src="<?=base_url()?>dist/js/buttons.colVis.min.js"></script>
    <script src="<?=base_url()?>dist/js/dataTables.select.min.js"></script>

    
    <script src="<?=base_url()?>dist/js/pdfmake.min.js"></script>
    <script src="<?=base_url()?>dist/js/vfs_fonts.js"></script>

    <script src="<?=base_url()?>dist/js/jquery-ui.custom.min.js"></script>
    <script src="<?=base_url()?>dist/js/jquery.ui.touch-punch.min.js"></script>
    <script src="<?=base_url()?>dist/js/moment.min.js"></script>
    <script src="<?=base_url()?>dist/js/fullcalendar.min.js"></script>
    <script src="<?=base_url()?>dist/js/bootbox.js"></script>
    <script src="<?=base_url()?>dist/js/jquery.colorbox.min.js"></script>

    <!-- ace scripts -->
    <script src="<?=base_url()?>dist/js/ace-elements.min.js"></script>
    <script src="<?=base_url()?>dist/js/ace.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/toastr.js/latest/toastr.min.js"></script>


        <!-- page specific plugin scripts -->
    <!-- inline scripts related to this page -->
    <!--script type="text/javascript">
      jQuery(function($) {
      
        window.prettyPrint && prettyPrint();
        $('#id-check-horizontal').removeAttr('checked').on('click', function(){
          $('#dt-list-1').toggleClass('dl-horizontal').prev().html(this.checked ? '&lt;dl class="dl-horizontal"&gt;' : '&lt;dl&gt;');
        });
      
      })
    </script-->
        <?=$js?>
  </body>
</html>
