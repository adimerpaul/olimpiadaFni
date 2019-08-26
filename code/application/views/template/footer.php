

      <div class="footer">
        <div class="footer-inner">
          <div class="footer-content">
            <span class="bigger-120">
              <span class="blue bolder">INGENIERÍA DE SISTEMAS E INGENIERÍA INFORMÁTICA</span>
              copyright &copy; 2017
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
    <script src="dist/js/jquery-2.1.4.min.js"></script>

    <!-- <![endif]-->

    <!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
    <script type="text/javascript">
      if('ontouchstart' in document.documentElement) document.write("<script src='dist/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
    </script>
    <script src="dist/js/bootstrap.min.js"></script>

    <!-- page specific plugin scripts -->
    <script src="dist/js/prettify.min.js"></script>

    <script src="dist/js/jquery-ui.custom.min.js"></script>
    <script src="dist/js/jquery.ui.touch-punch.min.js"></script>
    <script src="dist/js/moment.min.js"></script>
    <script src="dist/js/fullcalendar.min.js"></script>
    <script src="dist/js/bootbox.js"></script>
    <script src="dist/js/jquery.colorbox.min.js"></script>

    <!-- ace scripts -->
    <script src="dist/js/ace-elements.min.js"></script>
    <script src="dist/js/ace.min.js"></script>

    <!-- inline scripts related to this page -->
    <!--script type="text/javascript">
      jQuery(function($) {
      
        window.prettyPrint && prettyPrint();
        $('#id-check-horizontal').removeAttr('checked').on('click', function(){
          $('#dt-list-1').toggleClass('dl-horizontal').prev().html(this.checked ? '&lt;dl class="dl-horizontal"&gt;' : '&lt;dl&gt;');
        });
      
      })
    </script-->
        <script type="text/javascript">
      jQuery(function($) {

/* initialize the external events
  -----------------------------------------------------------------*/

  $('#external-events div.external-event').each(function() {

    // create an Event Object (http://arshaw.com/fullcalendar/docs/event_data/Event_Object/)
    // it doesn't need to have a start or end
    var eventObject = {
      title: $.trim($(this).text()) // use the element's text as the event title
    };

    // store the Event Object in the DOM element so we can get to it later
    $(this).data('eventObject', eventObject);

    // make the event draggable using jQuery UI
    $(this).draggable({
      zIndex: 999,
      revert: true,      // will cause the event to go back to its
      revertDuration: 0  //  original position after the drag
    });
    
  });




  /* initialize the calendar
  -----------------------------------------------------------------*/

  var date = new Date();
  var d = date.getDate();
  var m = date.getMonth();
  var y = date.getFullYear();


  var calendar = $('#calendar').fullCalendar({
    //isRTL: true,
    //firstDay: 1,// >> change first day of week 
    
    buttonHtml: {
      prev: '<i class="ace-icon fa fa-chevron-left"></i>',
      next: '<i class="ace-icon fa fa-chevron-right"></i>'
    },
  
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'month,agendaWeek,agendaDay'
    },
    events: [
      /*{
      title: 'All Day Event',
      start: new Date(y, m, 1),
      className: 'label-important'
      },*/
      {
      title: 'Inscripcion',
      start: '2017-08-16',
      end: '2017-08-25',
      className: 'label-success'
      },
      /*{
      title: 'Some Event',
      start: new Date(y, m, d-3, 16, 0),
      allDay: false,
      className: 'label-info'
      }*/
    ]
    ,
    
    /**eventResize: function(event, delta, revertFunc) {

      alert(event.title + " end is now " + event.end.format());

      if (!confirm("is this okay?")) {
        revertFunc();
      }

    },*/
    
    editable: true,
    droppable: true, // this allows things to be dropped onto the calendar !!!
    drop: function(date) { // this function is called when something is dropped
    
      // retrieve the dropped element's stored Event Object
      var originalEventObject = $(this).data('eventObject');
      var $extraEventClass = $(this).attr('data-class');
      
      
      // we need to copy it, so that multiple events don't have a reference to the same object
      var copiedEventObject = $.extend({}, originalEventObject);
      
      // assign it the date that was reported
      copiedEventObject.start = date;
      copiedEventObject.allDay = false;
      if($extraEventClass) copiedEventObject['className'] = [$extraEventClass];
      
      // render the event on the calendar
      // the last `true` argument determines if the event "sticks" (http://arshaw.com/fullcalendar/docs/event_rendering/renderEvent/)
      $('#calendar').fullCalendar('renderEvent', copiedEventObject, true);
      
      // is the "remove after drop" checkbox checked?
      if ($('#drop-remove').is(':checked')) {
        // if so, remove the element from the "Draggable Events" list
        $(this).remove();
      }
      
    }
    ,
    selectable: true,
    selectHelper: true,
    select: function(start, end, allDay) {
      
      bootbox.prompt("New Event Title:", function(title) {
        if (title !== null) {
          calendar.fullCalendar('renderEvent',
            {
              title: title,
              start: start,
              end: end,
              allDay: allDay,
              className: 'label-info'
            },
            true // make the event "stick"
          );
        }
      });
      

      calendar.fullCalendar('unselect');
    }
    ,
    eventClick: function(calEvent, jsEvent, view) {

      //display a modal
      var modal = 
      '<div class="modal fade">\
        <div class="modal-dialog">\
         <div class="modal-content">\
         <div class="modal-body">\
           <button type="button" class="close" data-dismiss="modal" style="margin-top:-10px;">&times;</button>\
           <form class="no-margin">\
            <label>Change event name &nbsp;</label>\
            <input class="middle" autocomplete="off" type="text" value="' + calEvent.title + '" />\
           <button type="submit" class="btn btn-sm btn-success"><i class="ace-icon fa fa-check"></i> Save</button>\
           </form>\
         </div>\
         <div class="modal-footer">\
          <button type="button" class="btn btn-sm btn-danger" data-action="delete"><i class="ace-icon fa fa-trash-o"></i> Delete Event</button>\
          <button type="button" class="btn btn-sm" data-dismiss="modal"><i class="ace-icon fa fa-times"></i> Cancel</button>\
         </div>\
        </div>\
       </div>\
      </div>';
    
    
      var modal = $(modal).appendTo('body');
      modal.find('form').on('submit', function(ev){
        ev.preventDefault();

        calEvent.title = $(this).find("input[type=text]").val();
        calendar.fullCalendar('updateEvent', calEvent);
        modal.modal("hide");
      });
      modal.find('button[data-action=delete]').on('click', function() {
        calendar.fullCalendar('removeEvents' , function(ev){
          return (ev._id == calEvent._id);
        })
        modal.modal("hide");
      });
      
      modal.modal('show').on('hidden', function(){
        modal.remove();
      });


      //console.log(calEvent.id);
      //console.log(jsEvent);
      //console.log(view);

      // change the border color just for fun
      //$(this).css('border-color', 'red');

    }
    
  });


var $overflow = '';
  var colorbox_params = {
    rel: 'colorbox',
    reposition:true,
    scalePhotos:true,
    scrolling:false,
    previous:'<i class="ace-icon fa fa-arrow-left"></i>',
    next:'<i class="ace-icon fa fa-arrow-right"></i>',
    close:'&times;',
    current:'{current} of {total}',
    maxWidth:'100%',
    maxHeight:'100%',
    onOpen:function(){
      $overflow = document.body.style.overflow;
      document.body.style.overflow = 'hidden';
    },
    onClosed:function(){
      document.body.style.overflow = $overflow;
    },
    onComplete:function(){
      $.colorbox.resize();
    }
  };

  $('.ace-thumbnails [data-rel="colorbox"]').colorbox(colorbox_params);
  $("#cboxLoadingGraphic").html("<i class='ace-icon fa fa-spinner orange fa-spin'></i>");//let's add a custom loading icon
  
  
  $(document).one('ajaxloadstart.page', function(e) {
    $('#colorbox, #cboxOverlay').remove();
   });


})
    </script>

  </body>
</html>
