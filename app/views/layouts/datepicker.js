$(document).ready(function() {
  $('.datepicker-start').datepicker({
    dateFormat: 'yy-mm-dd', // Format de date à utiliser
    minDate: 0, // La date minimum sélectionnable est aujourd'hui
    onSelect: function(selectedDate) {
      $('.datepicker-end').datepicker('option', 'minDate', selectedDate);
    }
  });

  $('.datepicker-end').datepicker({
    dateFormat: 'yy-mm-dd', // Format de date à utiliser
    minDate: 0, // La date minimum sélectionnable est aujourd'hui
    onSelect: function(selectedDate) {
      $('.datepicker-start').datepicker('option', 'maxDate', selectedDate);
    }
  });
});
