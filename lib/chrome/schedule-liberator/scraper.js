$(function() {
  if ($('.cellTeamPlayer').length == 0) {
    return;
  }

  var button   = $('<button>Download</button>'),
      format   = $('<select><option>ical</option><option>csv</option></select>'),
      url      = encodeURI(window.location.href),
      exporter = 'http://schedule-liberator.herokuapp.com/exports';

  var handler = function(e) {
    e.preventDefault();

    window.location = exporter + '/?url=' + url + '&to=' + format.val();
  }

  $('body').append(format);
  $('body').append(button);

  $(button).on('click', handler);
});
