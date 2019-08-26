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
      title: 'Difusión De la Convocatoria en Colegios.',
      start: '2018-09-17',
      end: '2018-09-25',
      color: '#0d259c'
      },
      {
      title: 'Pre-inscripción de estudiantes (A través de Internet).',
      start: '2018-09-19',
      end: '2018-10-19',
      color: '#0663b8'
      },
      {
      title: 'Inscripción de estudiantes en Secretaria de Ing. De Sistemas e Ing. Informática (Ciudadela Universitaria).',
      start: '2018-09-19',
      end: '2018-10-19',
      color: '#57d843'
      },
      {
      title: 'Capacitación de los estudiantes.',
      start: '2018-10-1',
      end: '2018-10-24',
      color: '#57d843'
      },
      {
      title: 'Warm Up (Ensayo Final).',
      start: '2018-10-25',
      end: '2018-10-25',
      color: '#ef8383'
      },
      {
      title: 'Acreditación de Equipos.',
      start: '2018-10-26',
      end: '2018-10-26',
      color: '#f06261'
      },
      {
      title: 'Realización de la prueba.',
      start: '2018-10-20',
      end: '2018-10-20',
      color: '#a958a5'
      },
      {
      title: 'Entrega de premios y certificados. (Ciudadela Universitaria).',
      start: '2018-11-8',
      end: '2018-11-8',
      color: '#613e97'
      },
    ],
    
    
  });
});


