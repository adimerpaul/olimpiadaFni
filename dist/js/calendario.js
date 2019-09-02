jQuery(function($) {


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
      {
      title: 'Pre-inscripción de estudiantes vía Internet e Inscripción en Secretaria de Ing. de Sistemas e Ing. Informática (Ciudadela Universitaria).',
      start: '2019-09-02',
      end: '2019-09-13',
      color: '#0d259c'
      },
      {
      title: 'Capacitación de los estudiantes.',
      start: '2019-09-16',
      end: '2019-10-09',
      color: '#0663b8'
      },
      {
      title: 'Entrega de certificados de capacitación en Secretaria de Ing. De Sistemas e Ing. Informática (Ciudadela Universitaria).',
      start: '2019-10-10',
      end: '2019-10-11',
      color: '#57d843'
      },
    
    ],
    
    
  });
});


