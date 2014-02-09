$(function() {
  if ($('.cellTeamPlayer').length == 0) {
    return;
  }

  var button   = $('<button>Download</button>'),
      url      = encodeURI(window.location.href),
      format   = 'csv',
      exporter = 'http://schedule-liberator.herokuapp.com/exports';

  var handler = function(e) {
    e.preventDefault();

    window.location = exporter + '/?url=' + url + '&to=' + format;
  }

  $('body').append(button);

  $(button).on('click', handler);
});
